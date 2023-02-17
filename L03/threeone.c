#include <stdio.h>
#include <math.h>

int main() {
    int i,j,m,n,x; 
    for (i= 2; i<168/2+1;i++) {
        if (168%i==0) {
            j =168/i;
            if (i>j) {
                break;
            }
            if ((i+j)%2==0 && (j-i)%2==0){
                m = (i+j)/2;
                n = (j-i)/2;
                x = n*n-100;
                printf("%d\n", x);
            }
        }
    }
    return 0;
}
