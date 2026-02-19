/*
 * Copyright (C) 2025 embeddedplayground.com. All rights reserved.
 * Author: Shubham <shubham@nexusrtos.com>
 *
 */

int global_uninitialized;
int global_initialized = 10;
int global_initialized_with_zero = 0;

static int static_global_uninitialized;
static int static_global_initialized = 1;

extern int accumulated_sum;
extern int add_and_accumulate(int a, int b);

int calculator(void)
{
        int err = 0;
        global_uninitialized = add_and_accumulate(global_initialized, global_initialized_with_zero);
        static_global_uninitialized = accumulated_sum;
        return err;
}
