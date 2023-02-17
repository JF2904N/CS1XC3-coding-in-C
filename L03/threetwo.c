#include <stdio.h>

void main(){

    int n,i,sum;
    int min = 1;
    int max =1000;

    for (n=min;n<=max;n++) {
        i=1;
        sum=0;
        while(i<n){
            if (n%i==0)
                sum=sum+i;
                i++;
        }
    if (sum == n){
        printf("%d ",n);    
    }
    }
        printf("\n");
}
