#include <stdlib.h>
#include <stdio.h>

extern "C"
{
    extern int NR01();

    int main()
    {
        NR01();
        
        return 0;
    }
}
