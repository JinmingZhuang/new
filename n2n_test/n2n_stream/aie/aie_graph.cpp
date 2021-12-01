#include "aie_graph.h"
using namespace adf;

PLIO* in0 = new PLIO("DataIn0", adf::plio_32_bits, "data/input0.txt");
PLIO* out = new PLIO("DataOut", adf::plio_32_bits, "data/output.txt");

simulation::platform<1, 1> platform(in0,out);

simpleGraph addergraph;

connect<> net0(platform.src[0], addergraph.in0);

connect<> net1(addergraph.out, platform.sink[0]);

#ifdef __AIESIM__
int main(int argc, char** argv) {
    addergraph.init();
    addergraph.run(1);
    addergraph.end();
    return 0;
}
#endif