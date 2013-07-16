/*
	File: process.h
	Time: 2013.7-16
	Author: Hangsheng Wang
	Email: tjuwhs@tju.edu.cn
*/

#ifndef _PROCESS_H_
#define _PROCESS_H_

enum Proc_state{
	RUN_PROC,
	STOP_PROC,
	WAIT_PROC
};
struct process{
	long pid;
	volatile Proc_state  	
}process_t;
#endif
