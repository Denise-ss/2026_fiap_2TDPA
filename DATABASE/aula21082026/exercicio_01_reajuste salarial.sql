SET SERVEROUTPUT ON;

-- EXERCICIO 1

/*
Exercicio 1 - Reajuste salarial

Crie um bloco PL/SQL que:

- receba o salario atual de um funcionario em tempo de execucao;
- calcule um reajuste de 25% sobre o salario;
- armazene o novo salario em uma variavel;
- exiba na tela o valor do novo salario.
*/

DECLARE
    salario     NUMBER := &valor;
    salarionovo NUMBER;

BEGIN

    salarionovo := salario + (salario * 0.25);

    DBMS_OUTPUT.PUT_LINE(
        'O novo salario e R$ ' || salarionovo
    );

END;
/