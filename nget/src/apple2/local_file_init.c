/**
 * @brief Do any local filesystem housekeeping, like getting file type.
 */

#include <apple2.h>
#include <apple2_filetype.h>
#include <stdio.h>
#include <string.h>

static char ft[16];
static char aux[16];

void local_file_init(void)
{
    
    printf("Enter Destination Filetype: $");
    gets(ft);

    if (ft[0])
        sscanf(ft,"%x",&_filetype);


    printf("Enter Destination Auxtype: $");
    gets(aux);

    if (aux[0])
        sscanf(aux,"%x",&_auxtype);
}
