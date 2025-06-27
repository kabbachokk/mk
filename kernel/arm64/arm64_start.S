.globl _start
_start:
    mrs	x0, mpidr_el1		
	and	x0, x0, #0xFF		// Check processor id