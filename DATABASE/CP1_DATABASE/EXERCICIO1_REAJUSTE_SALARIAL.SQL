SET SERVEROUTPUT ON;

DECLARE
    v_salario_atual NUMBER(7,2) := &salario_atual; --salario atual do funcionário, que tenha 7 digitos antes da vírgula e 2 depois da vírgula.
    v_percentual NUMBER(4,2) := 25; -- percentual de reajuste, definido como 25% para este exemplo.
    v_reajuste NUMBER(7,2);
    v_salario_novo NUMBER(7,2);

BEGIN
   
   v_reajuste := v_salario_atual * v_percentual / 100; -- calcula o valor do reajuste com base no salário atual e no percentual definido.
   v_salario_novo := v_salario_atual + v_reajuste; -- calcula o novo salário somando o salário atual com o valor do reajuste.

   dbms_output.put_line('Salario atual: R$ ' || v_salario_atual); -- exibe o salário atual do funcionário.
   dbms_output.put_line('Percentual de reajuste: ' || v_percentual || '%'); -- exibe o percentual de reajuste aplicado com o simbolo de % apos o valor.
   dbms_output.put_line('O valor do reajuste: R$ ' || v_reajuste); -- exibe o valor do reajuste calculado.
   dbms_output.put_line('Salario novo: R$ ' || v_salario_novo); -- exibe o novo salário após o reajuste.

END;   
/