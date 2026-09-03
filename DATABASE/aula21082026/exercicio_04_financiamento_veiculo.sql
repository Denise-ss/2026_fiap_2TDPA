
SET SERVEROUTPUT ON;
/*
Exercicio 4 - Financiamento de veiculo

Receba o valor de um veiculo e calcule:

- entrada de 20%;
- restante de 80%;
- simulacoes de parcelamento em 6x (10%), 12x (15%) e 18x (20%).
*/

DECLARE
    carro      NUMBER := &valor;
    entrada    NUMBER;
    restante   NUMBER;
    financiado NUMBER;

BEGIN

    DBMS_OUTPUT.PUT_LINE(
        'O VALOR DO CARRO A VISTA E R$ ' || carro
    );

    entrada := carro * 0.20;

    restante := carro * 0.80;

    financiado := restante * 1.10;

    DBMS_OUTPUT.PUT_LINE(
        'O VEICULO PARCELADO EM 6X E R$ ' ||
        (financiado + entrada)
    );

    DBMS_OUTPUT.PUT_LINE(
        'O VALOR DA PARCELA EM 6X + JUROS E R$ ' ||
        (financiado / 6) * 1.10
    );

    DBMS_OUTPUT.PUT_LINE(
        'O VEICULO PARCELADO EM 12X E R$ ' ||
        (financiado + entrada)
    );

    DBMS_OUTPUT.PUT_LINE(
        'O VALOR DA PARCELA EM 12X + JUROS E R$ ' ||
        (financiado / 12) * 1.05
    );

    DBMS_OUTPUT.PUT_LINE(
        'O VEICULO PARCELADO EM 18X E R$ ' ||
        (financiado + entrada)
    );

    DBMS_OUTPUT.PUT_LINE(
        'O VALOR DA PARCELA EM 18X + JUROS E R$ ' ||
        (financiado / 18) * 1.10
    );

END;
/