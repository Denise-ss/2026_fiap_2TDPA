SET SERVEROUTPUT ON; -- Serve para a exibição das mensagens do DBMS_OUTPUT

DECLARE -- DECLARE = área onde declaramos as variáveis que o programa vai usar

    -- Cria uma variável chamada "tabuada"
    -- NUMBER = ela vai armazenar um número
    -- &valor = o valor será informado pelo usuário
    tabuada NUMBER := &valor;

BEGIN -- BEGIN = começa a execução do programa

    -- DBMS_OUTPUT.PUT_LINE = Mostra uma mensagem na tela
    -- || serve para juntar texto com o conteúdo da variável
    DBMS_OUTPUT.PUT_LINE('A tabuada do ' || tabuada || ' é:');

    -- FOR = estrutura de repetição
    -- c = contador criado automaticamente pelo FOR
    -- 1..10 = começa em 1 e termina em 10
    -- LOOP = começa a repetição
    FOR c IN 1..10 LOOP
        -- Mostra cada linha da tabuada
        -- tabuada = x número escolhido pelo usuário
        -- c = número da repetição atual (1, 2, 3...10)
        -- (c * tabuada) = realiza a multiplicação
        DBMS_OUTPUT.PUT_LINE(
            tabuada || ' x ' ||
            c || ' = ' ||
            (c * tabuada)
        );  
    END LOOP;   -- Termina a repetição

END; -- Termina o bloco PL/SQL
/