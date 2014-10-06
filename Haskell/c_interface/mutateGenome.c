#include <HsFFI.h>
#ifdef __GLASGOW_HASKELL__
#include "Safe_stub.h"
extern void __stginit_Safe(void);
#endif
#include <stdio.h>

int main(int argc, char *argv[])
{
    hs_init(&argc, &argv);
#ifdef __GLASGOW_HASKELL__
    hs_add_root(__stginit_MutateGenome);
#endif

    char genomeOne[9] = "abcdefgh";
    char genomeTwo[9] = "ijklmnop";

    char result[19] = mutateGenome_hs(genomeOne,genomeTwo);
    printf("Fresh Genome %s\n", result);

    hs_exit();
    return 0;
}

