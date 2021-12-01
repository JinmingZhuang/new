#ifndef __GRAPH_H__
#define __GRAPH_H__

#include <adf.h>
#include "aie_kernel.h"
#include "para.h"
using namespace adf;

class simpleGraph : public graph {
   private:
    kernel trans1_1;
    kernel trans1_2;
    kernel trans2;

   public:
    port<input> in0,in1;
    port<output> out;

    simpleGraph() {
        trans1_1 = kernel::create(n2n_trans1);
        trans1_2 = kernel::create(n2n_trans1);
        trans2 = kernel::create(n2n_trans2);

        connect<window<h*w*2>>(in0, trans1_1.in[0]);
        connect<window<h*w*2>>(in1, trans1_2.in[0]);
        connect<window<h*w*2>>(trans1_1.out[0], trans2.in[0]);
        connect<window<h*w*2>>(trans1_2.out[0], trans2.in[0]);
        connect<window<h*w*2>>(trans2.out[0], out);


        source(trans1_1) = "n2n_trans1.cc";
        source(trans1_2) = "n2n_trans1.cc";
        source(trans2) = "n2n_trans2.cc";

        runtime<ratio>(trans1_1) = 0.6;
        runtime<ratio>(trans1_2) = 0.6;
        runtime<ratio>(trans2) = 0.6;
    };
};

#endif /**********__GRAPH_H__**********/