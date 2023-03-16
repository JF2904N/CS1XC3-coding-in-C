/*******************************************************************************
*
* Purpose: Square area calculator.  Outputs caculated square areas from 
* side length provided via standard input... outputs them with a unit 
* provided as 2nd argv values.  i.e. if we run with ""./square inches" expect 
* output of the format: 50 inches
*
*******************************************************************************/
#include <stdio.h>
#include "library.h"

int main(int argc, char *argv[])
{
  	int m = 0;
	while(scanf("%d", &m) != EOF)
		{
        printf("%d\n", square_area(m));
  }	
	  
  	return 0;
}

