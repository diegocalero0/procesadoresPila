#include<stdio.h>

int main(){
	int numero1;
	
	scanf("%d", &numero1);
	
	for(int i = 0; i < numero1; i++){
		for(int j = 0; j < i; j++)
			printf(" ");
		printf("*\n");
	}
	return 0;
}