SET SERVEROUTPUT ON;


/*
Exercicio_03_Financiamento de veiculo em 10 parcelas

Crie um bloco PL/SQL para calcular o valor das parcelas
da compra de um veiculo nas seguintes condicoes:

- o valor do veiculo devera ser informado em tempo de execucao;
- a compra sera parcelada em 10 pagamentos;
- sera aplicado um acrescimo total de 3% de juros;
- exiba o valor informado do veiculo;
- calcule o valor total do veiculo com os juros;
- informe o valor de cada parcela;
- informe o valor total do veiculo financiado.
*/

DECLARE
    carro   NUMBER := &valor;
    parcela NUMBER := 10;
    juros   NUMBER := 1.03;

BEGIN

    DBMS_OUTPUT.PUT_LINE(
        'O valor da compra e R$ ' || carro
    );

    carro := carro * juros;

    DBMS_OUTPUT.PUT_LINE(
        'O valor de cada parcela e R$ ' || carro / parcela
    );

    DBMS_OUTPUT.PUT_LINE(
        'O valor do carro financiado e R$ ' || carro
    );

END;
/