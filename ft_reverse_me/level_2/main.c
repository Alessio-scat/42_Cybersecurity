# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <stdbool.h>

void no() {
    printf("Nope.\n");
    exit(1);
}

void ok() {
    printf("Good job.\n");
    exit(0);
}

int main ()
{
    uint uVar1;
    size_t sVar2;
    int iVar3;
    bool bVar4;
    char local_3d;
    char local_3c;
    char local_3b;
    char local_39[24];
    char local_21[9];
    uint local_18;
    int local_14;
    int local_10;

    printf("Please enter key: ");
    local_10 = scanf("%23s", local_39);  // local_39 = "00101108097098101114101" it's result

    if (local_10 != 1)
        no();
    if (local_39[1] != '0')
        no();
    if (local_39[0] != '0')
        no();

    memset(local_21, 0, 9);  // local_21 = {'d', 0, 0, 0, 0, 0, 0, 0, 0}
    local_21[0] = 'd';  // local_21 = {'d', 0, 0, 0, 0, 0, 0, 0, 0}
    local_18 = 2;  // index read 2 after 00
    local_14 = 1; // index write

    while (true) {
    sVar2 = strlen(local_21);
    uVar1 = local_18;
    bVar4 = false;
    if (sVar2 < 8) {
        sVar2 = strlen(local_39);
        bVar4 = uVar1 < sVar2;
    }
    if (!bVar4) break;

    
    local_3d = local_39[local_18];
    local_3c = local_39[local_18 + 1];
    local_3b = local_39[local_18 + 2];

    
    char temp[4] = {local_3d, local_3c, local_3b, '\0'};
    iVar3 = atoi(temp);

    local_21[local_14] = (char)iVar3;

    local_18 += 3;
    local_14 += 1;

    }
    local_21[local_14] = '\0';

    iVar3 = strcmp(local_21, "delabere");
    if (iVar3 == 0)
        ok();
    else
        no();
    
    return 0;
}