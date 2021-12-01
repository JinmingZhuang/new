#include "aie_graph.h"
using namespace adf;


#ifdef __AIESIM__
int main(int argc, char** argv) {
    addergraph.init();
    addergraph.run(1);
    addergraph.end();
    return 0;
}
#endif
