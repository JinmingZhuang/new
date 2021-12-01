#include <adf.h>
#include <stdio.h>
#include "para.h"

void n2n_trans1(input_window_int16* matA,
	output_window_int16* matB){

 	for (int i=0;i<h*w;i++){
 		int16 A=window_readincr(matA);
  		window_writeincr(matB,A);
 	}
}