#include <stdio.h>

int main(){
    int num1;
    int num2;
    int soma;

    printf("Digite um número: ");
    scanf("%d", &num1);
    printf("Digite o outro numero: ");
    scanf("%d", &num2);

    soma = num1 + num2;

    if(soma < 0){
        printf("a soma deu %d. um numero negativo", soma);
    }else {
        printf("a soma deu %d. um numero positivo", soma);
    }

    return 0;
}