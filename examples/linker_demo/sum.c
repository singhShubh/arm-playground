/*
 * Copyright (C) 2025 embeddedplayground.com. All rights reserved.
 * Author: Shubham <shubham@nexusrtos.com>
 *
 */


int accumulated_sum = 0;

int add_and_accumulate(int a, int b)
{
        int sum;
        sum = a+b;
        accumulated_sum += sum;
        return sum;
}
