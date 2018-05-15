#include <stdio.h>
#include <stdlib.h>

double berat;
double tinggi;

double titik[8] = {0,40,45,50,55,60,65,80,85};

    void kurus(double berat){
        double naik, turun;

        if((berat>=titik[0])&&(berat<=titik[1])){
            return 1;
        }
        else if((berat>=titik[1])&&(berat<=titik[2])){
            return ((berat-titik[1])/(titik[2]-titik[1]));
        }
        else{
            return 0;
        }
    }

int main()
{
    printf(" Masukkan Berat : ");
    scanf("%d",&berat);
    //printf(" Masukkan Tinggi : ");
    //scanf("%d",&tinggi);
    sangatkurus(berat);
    //printf("%b",sangatkurus);
    return 0;
}
