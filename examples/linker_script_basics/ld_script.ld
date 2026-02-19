/*
 * Copyright (C) 2026 embeddedplayground.com. All rights reserved.
 * Author: Shubham <shubham@nexusrtos.com>
 *
 */


MEMORY {
	MEM_REGION1_NAME : ORIGIN = 0x20000000 , LENGTH = 0x40000
	MEM_REGION2_NAME : ORIGIN = 0x30000000 , LENGTH = 0x40000
}


SECTIONS {
	.text : {
		demo.o(.text)
	} > MEM_REGION1_NAME
	
	.text : {
		prog1.o(.text)
		prog2.o(.text)
	} > MEM_REGION2_NAME

	.rodata : {
		demo.o(.rodata)
		prog1.o(.rodata)
		prog2.o(.rodata)
	} > MEM_REGION1_NAME

	.data : {
		demo.o(.data)
		prog1.o(.data)
		prog2.o(.data)
	} > MEM_REGION1_NAME

	.bss : {
		demo.o(.bss)
		prog1.o(.bss)
		prog2.o(.bss)
	} > MEM_REGION1_NAME


	/DISCARD/ : {
		*(*)
	}
}
