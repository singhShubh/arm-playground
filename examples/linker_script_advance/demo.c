/*
 * Copyright (C) 2026 embeddedplayground.com. All rights reserved.
 * Author: Shubham <shubham@nexusrtos.com>
 *
 */


#define SUCCESS 0
#define FAILURE 1


int x = 1;
extern int global_prog1;
extern int global_prog2;

extern int leftshift_by_two(int x);
extern int rightshift_by_two(int x);

const int readonly_var = 100;

int fun_demo()
{
	int err = SUCCESS;
	int y;
	y = leftshift_by_two(x);
	y = rightshift_by_two(y);
	if (x != y)
		err = FAILURE;
	return err;
}
