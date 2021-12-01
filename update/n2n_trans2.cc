#include <adf.h>
#include <stdio.h>
#include "para.h"

void n2n_trans2(input_window_int16* matB,
	output_window_int16* matC){

 	for (int i=0;i<h*w;i++){
 		int16 B=window_readincr(matB);
  		window_writeincr(matC,B);
 	}

}