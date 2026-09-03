SET SERVEROUTPUT ON;


/*
Exercicio_02_Multiplicacao de um valor

Crie um bloco PL/SQL que:

- declare uma variavel numerica com o valor 45;
- calcule esse valor multiplicado por 5;
- armazene o resultado em outra variavel;
- exiba o resultado na tela.
*/

DECLARE
    valor     NUMBER := 45;
    valornovo NUMBER;

BEGIN

    valornovo := valor * 5;

    DBMS_OUTPUT.PUT_LINE(
        'O novo valor e ' || valornovo
    );

END;
/
