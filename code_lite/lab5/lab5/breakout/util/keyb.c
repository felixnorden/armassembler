#include "keyb.h"

static void activateRow(uint8 x) {
	GPIO_D.ODR_HIGH = 0;
	GPIO_D.ODR_HIGH |= (0x1 << (4 + x));
}

static uint8 readColumns() {
	return GPIO_D.IDR_HIGH;
}

uint8 keyb( void ) {
	uint8 activeKey = 0xFF;
	for (uint8 row = 0; row < 4; row++) {
		activateRow(row);
		uint8 columnValue = readColumns();
		
		for (uint8 column = 0; column < 4; column++) {
			uint8 activeColumn = (columnValue & 0x1);
			if (activeColumn) {
				activeKey = row * 4 + column;
				return activeKey;
			}
			columnValue >>= 0x1;
		}
	}
	return activeKey;
}