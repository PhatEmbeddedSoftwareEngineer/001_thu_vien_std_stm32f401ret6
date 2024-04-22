#include <stdio.h>
#include "stm32f4xx_rcc.h"
#include "SEGGER_RTT.h"

void RCC_Config()
{
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);
}

void ledDuoi(uint8_t loop)
{
	uint16_t ledVal;
	GPIO_Write(GPIOA, 0x0000);
	for(int i=0;i<loop;++i)
	{
		ledVal=0x0020; // moi vo la led so 5 no se sang
		for(int j=0;j<4;++j)
		{
			GPIO_Write(GPIOA, ledVal);
			SEGGER_RTT_printf(0,"led so: %p\n",ledVal);
			ledVal = ledVal <<1;

		}
	}
}

void GPIO_Config()
{
	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Mode=GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType=GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Pin=GPIO_Pin_5;
	GPIO_InitStructure.GPIO_PuPd=GPIO_PuPd_NOPULL;
	GPIO_InitStructure.GPIO_Speed=GPIO_Speed_100MHz;

	GPIO_Init(GPIOA, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Mode=GPIO_Mode_IN;
	GPIO_InitStructure.GPIO_OType=GPIO_OTYPER_IDR_1;
	GPIO_InitStructure.GPIO_Pin=GPIO_Pin_1;
	GPIO_InitStructure.GPIO_PuPd=GPIO_PuPd_UP;
	GPIO_InitStructure.GPIO_Speed=GPIO_Speed_100MHz;

	GPIO_Init(GPIOA, &GPIO_InitStructure);

}

void Debug_Config()
{
	SEGGER_RTT_Init ();
	SEGGER_RTT_ConfigUpBuffer(0,NULL,NULL,0,SEGGER_RTT_MODE_BLOCK_IF_FIFO_FULL);
}

void updateStateLD2()
{
	if(GPIO_ReadInputDataBit(GPIOA, GPIO_Pin_1))
	{
		GPIO_SetBits(GPIOA, GPIO_Pin_5);
	}
	if(GPIO_ReadOutputDataBit(GPIOA, GPIO_Pin_5)==1)
		GPIO_ResetBits(GPIOA, GPIO_Pin_5);


}

int main(void)
{
	Debug_Config();
	RCC_Config();
	SEGGER_RTT_printf(0,"RCC_config_sucess\n");
	GPIO_Config();
	SEGGER_RTT_printf(0,"GPIO_config_sucess\n");
	//ledDuoi(1);
	SEGGER_RTT_printf(0,"gia tri cua chan PA0: %d\n",GPIO_ReadInputDataBit(GPIOA, GPIO_Pin_1));

	updateStateLD2();
	//SEGGER_RTT_printf(0,"gia tri cua chan PA0 da update : %d\n",GPIO_ReadInputDataBit(GPIOA, GPIO_Pin_1));
	while(1);

	//return 0;
}
