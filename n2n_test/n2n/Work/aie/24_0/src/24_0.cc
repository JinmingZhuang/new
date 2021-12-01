// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : ./Work/aie/24_0/src/24_0.cc
// Runs 1 ME kernel

#include <stdio.h>

#define __AIEARCH__ 1
#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

#define LOCK_24_1_0_0 32
#define LOCK_24_1_1_0 33
#define LOCK_24_0_0_0 48
#define LOCK_24_0_1_0 49

// Declare shared memory buffers
v8int16 buf0[384];
v8int16 buf0d[384];
v8int16 buf1[384];
v8int16 buf1d[384];

// Declare Kernel functions and initializers
void n2n_trans1(input_window<short> *,output_window<short> *);

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  window_internal window_buf0_buf0d[1];
  window_datatype * buf0_ptr = (window_datatype * )buf0;
  window_datatype * buf0d_ptr = (window_datatype * )buf0d;
  window_init(window_buf0_buf0d, 1, buf0, LOCK_24_1_0_0, buf0d, LOCK_24_1_1_0, 384, 384);
  window_internal window_buf1_buf1d[1];
  window_datatype * buf1_ptr = (window_datatype * )buf1;
  window_datatype * buf1d_ptr = (window_datatype * )buf1d;
  window_init(window_buf1_buf1d, 1, buf1, LOCK_24_0_0_0, buf1d, LOCK_24_0_1_0, 384, 384);
  int32 index = 0;
  while(true)
  {

  int32 proc_24_0_bounds = sync_buffer[1];

  while (proc_24_0_bounds)
  {

    // Kernel call : i2:n2n_trans1
    window_acquire(window_buf0_buf0d,LOCK_24_1_0_0,LOCK_24_1_1_0,buf0_ptr,buf0d_ptr,0,index, ACQ_READ);
    window_acquire(window_buf1_buf1d,LOCK_24_0_0_0,LOCK_24_0_1_0,buf1_ptr,buf1d_ptr,0,index , ACQ_WRITE);
    n2n_trans1(get_input_window_int16(window_buf0_buf0d),get_output_window_int16(window_buf1_buf1d));
    // The output port margin is zero, therefore write pointer is in correct position for reading
    // The input port margin is zero, therefore there is no copy to be done
    // And now the lock has ended
    window_release(window_buf0_buf0d,LOCK_24_1_0_0,LOCK_24_1_1_0,buf0_ptr,buf0d_ptr,0,index, REL_WRITE);
    window_release(window_buf1_buf1d,LOCK_24_0_0_0,LOCK_24_0_1_0,buf1_ptr,buf1d_ptr,0,index, REL_READ);
    index = 1 - index;

    chess_memory_fence();

    if(proc_24_0_bounds > 0)
      --proc_24_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}