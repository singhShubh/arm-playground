/*
 * Copyright (C) 2026 embeddedplayground.com. All rights reserved.
 * Author: Shubham <shubham@nexusrtos.com>
 *
 */

MEMORY {
	ROM : ORIGIN = 0x00000000 , LENGTH = 0x100000
	RAM : ORIGIN = 0x20000000 , LENGTH = 0x100000
}

SECTIONS {
	.text : {
		*(.text)
	} > ROM

	.rodata : {
		*(.rodata)
	} > ROM

	.data : {
		*(.data)
	} > RAM AT> ROM

	.bss : {
		*(.bss)
	} > RAM AT> ROM

	/DISCARD/ : {
		*(*)
	}
}

