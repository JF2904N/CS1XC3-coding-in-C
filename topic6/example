#include <stdio.h>

int a(int x);
int b(int y);

int a(int x){
        if(x==0){
                return 1;
        }else{
                return 3*b(x-1);
        }
}

int b(int y){
        if(y==0){
                return 7;
        }else{
                return 3+a(y-1);
        }
}

int main(){
        printf("%d\n",a(3));
        return 0;
}
