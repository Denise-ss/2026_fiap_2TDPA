SET SERVEROUTPUT ON;


/*
Exercicio 7 - Situacao do aluno

Crie um bloco PL/SQL que:

- receba a nota de um aluno em tempo de execucao;
- utilize IF / ELSIF / ELSE;
- classifique o aluno:
  nota >= 7       = APROVADO
  nota entre 5 e 6.9 = RECUPERACAO
  nota < 5        = REPROVADO
- exiba a situacao do aluno.
*/

DECLARE
    nota NUMBER := &valor;

BEGIN

    IF nota >= 7 THEN

        DBMS_OUTPUT.PUT_LINE(
            'Voce foi aprovado'
        );

    ELSIF nota BETWEEN 5 AND 6.9 THEN

        DBMS_OUTPUT.PUT_LINE(
            'Voce esta em recuperacao'
        );

    ELSE

        DBMS_OUTPUT.PUT_LINE(
            'Voce esta reprovado'
        );

    END IF;

END;
/