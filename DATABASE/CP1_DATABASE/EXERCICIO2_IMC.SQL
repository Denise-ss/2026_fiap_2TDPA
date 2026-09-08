SET serveroutput on;

DECLARE
    v_peso number(6,2) := &peso; -- peso da pessoa, que tenha 6 digitos antes da vírgula e 2 depois da vírgula.
    v_altura number(4,2) := &altura; -- altura da pessoa, que tenha 4 digitos antes da vírgula e 2 depois da vírgula.
    v_imc number(6,2); 
    v_classificacao varchar2(30);

BEGIN

    if v_peso <= 0 or v_altura <= 0 then -- verifica se o peso ou a altura são menores ou iguais a zero, caso sejam, exibe uma mensagem de erro.
        dbms_output.put_line('Dados inválidos. O peso e a altura devem ser maiores que zero.');

    else
        v_imc := v_peso / (v_altura * v_altura); -- calcula o IMC (Índice de Massa Corporal) com base no peso e altura fornecidos.

        if v_imc < 18.5 then
            v_classificacao := 'Abaixo do peso';
        elsif v_imc < 25 then
            v_classificacao := 'Peso normal';
        elsif v_imc < 30 then
            v_classificacao := 'Sobrepeso';
        elsif v_imc < 35 then
            v_classificacao := 'Obesidade grau I';
        elsif v_imc < 40 then
            v_classificacao := 'Obesidade grau II';
        else
            v_classificacao := 'Obesidade grau III';
        end if;

        dbms_output.put_line('Peso: ' || v_peso || ' kg'); -- exibe o peso da pessoa.
        dbms_output.put_line('Altura: ' || v_altura || ' m'); -- exibe a altura da pessoa.
        dbms_output.put_line('IMC: ' || v_imc); -- exibe o valor do IMC calculado.
        dbms_output.put_line('Classificação: ' || v_classificacao); -- exibe a classificação do IMC com base no valor calculado.
    end if;

end;
/
