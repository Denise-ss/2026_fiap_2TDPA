
SET SERVEROUTPUT ON;
/*
Exercicio 5 - Numero par ou impar

Crie um bloco PL/SQL que:

- receba um numero em tempo de execucao;
- utilize IF / ELSE;
- verifique se o numero e par ou impar;
- utilize MOD para verificar o resto da divisao por 2;
- exiba a classificacao na tela.
*/

DECLARE
    numero NUMBER := &valor;

BEGIN

    IF MOD(numero, 2) = 0 THEN

        DBMS_OUTPUT.PUT_LINE(
            'O numero informado e Par'
        );

    ELSE

        DBMS_OUTPUT.PUT_LINE(
            'O numero informado e Impar'
        );

    END IF;

END;
/