SET SERVEROUTPUT ON;


/*
Exercicio 6 - Identificacao de sexo

Crie um bloco PL/SQL que:

- receba um caractere em tempo de execucao;
- considere:
  f = feminino
  m = masculino
  qualquer outro valor = outros
- utilize IF / ELSIF / ELSE;
- exiba a classificacao correspondente.
*/

DECLARE
    sexo CHAR(1) := '&valor';

BEGIN

    IF sexo = 'f' THEN

        DBMS_OUTPUT.PUT_LINE(
            'O sexo informado e feminino'
        );

    ELSIF sexo = 'm' THEN

        DBMS_OUTPUT.PUT_LINE(
            'O sexo informado e masculino'
        );

    ELSE

        DBMS_OUTPUT.PUT_LINE(
            'O sexo informado e outros'
        );

    END IF;

END;
/