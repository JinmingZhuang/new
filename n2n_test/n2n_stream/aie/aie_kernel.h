/**
* Copyright (C) 2019-2021 Xilinx, Inc
*
* Licensed under the Apache License, Version 2.0 (the "License"). You may
* not use this file except in compliance with the License. A copy of the
* License is located at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations
* under the License.
*/

#ifndef __KERNELS_H__
#define __KERNELS_H__

#include <adf/stream/types.h>
void n2n_trans1(input_stream_int16* matA, output_stream_int16* matB);
void n2n_trans2(input_stream_int16* matB, output_stream_int16* matC);

#endif /**********__KERNELS_H__**********/
