#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

int i = 0;
int k = 0;

int main(void){
	
	system("clear");
	printf("hello\nworld\n");
	usleep(400000);
	
	for(i = 0; i < 20; i++){
		
		usleep(100000);
		system("clear");
		
		for(k = 0; k < i; k++){
			printf(" ");
		}
		printf("h");
		for(k = 0; k < i; k++){
			printf(" ");
		}
		printf("e");
		for(k = 0; k < i; k++){
			printf(" ");
		}
		printf("l");
		for(k = 0; k < i; k++){
			printf(" ");
		}
		printf("l");
		for(k = 0; k < i; k++){
			printf(" ");
		}
		printf("o\n");
		
		for(k = 0; k < i; k++){
			printf(" ");
		}
		printf("w");
		for(k = 0; k < i; k++){
			printf(" ");
		}
		printf("o");
		for(k = 0; k < i; k++){
			printf(" ");
		}
		printf("r");
		for(k = 0; k < i; k++){
			printf(" ");
		}
		printf("l");
		for(k = 0; k < i; k++){
			printf(" ");
		}
		printf("d\n");
		
	}
	system("clear");
	return 0;
}
