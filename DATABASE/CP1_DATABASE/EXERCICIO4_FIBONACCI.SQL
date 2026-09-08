SET SERVEROUTPUT ON;

DECLARE

    v_n PLS_INTEGER := &n; -- quantidade de números da sequência de Fibonacci a ser exibida, fornecida pelo usuário.

    v_k PLS_INTEGER := 1; -- contador para controlar o número atual da sequência de Fibonacci, iniciando em 1.

    v_anterior NUMBER := 0; -- armazena o número anterior da sequência de Fibonacci, iniciando em 0.

    v_atual NUMBER := 1; -- armazena o número atual da sequência de Fibonacci, iniciando em 1.

    v_proximo NUMBER; -- armazena o próximo número da sequência de Fibonacci.

BEGIN

    IF v_n <= 0 THEN -- verifica se a quantidade de números da sequência de Fibonacci fornecida pelo usuário é menor ou igual a zero, caso seja, exibe uma mensagem de erro.

        DBMS_OUTPUT.PUT_LINE('Quantidade inválida');

    ELSE

        WHILE v_k <= v_n LOOP -- enquanto o contador v_k for menor ou igual a quantidade de números da sequência de Fibonacci fornecida pelo usuário, o loop continuará executando.

            IF v_k = 1 THEN -- verifica se o contador v_k é igual a 1, caso seja, exibe o primeiro número da sequência de Fibonacci, que é 0.

                DBMS_OUTPUT.PUT_LINE('F(1) = 0'); --EXIBE O PRIMEIRO NÚMERO DA SEQUÊNCIA DE FIBONACCI, QUE É 0.

            ELSIF v_k = 2 THEN -- verifica se o contador v_k é igual a 2, caso seja, exibe o segundo número da sequência de Fibonacci, que é 1.

                DBMS_OUTPUT.PUT_LINE('F(2) = 1'); --EXIBE O SEGUNDO NÚMERO DA SEQUÊNCIA DE FIBONACCI, QUE É 1.

            ELSE

                v_proximo := v_anterior + v_atual; -- calcula o próximo número da sequência de Fibonacci somando o número anterior com o número atual.

                DBMS_OUTPUT.PUT_LINE(
                    'F(' || v_k || ') = ' || v_proximo -- exibe o próximo número da sequência de Fibonacci, mostrando o valor do contador v_k e o valor do próximo número calculado.
                );

                v_anterior := v_atual; -- atualiza o valor do número anterior para o valor do número atual, para que na próxima iteração do loop, o próximo número da sequência de Fibonacci possa ser calculado corretamente.

                v_atual := v_proximo; -- atualiza o valor do número atual para o valor do próximo número calculado, para que na próxima iteração do loop, o próximo número da sequência de Fibonacci possa ser calculado corretamente.

            END IF; --FIM DO IF, que verifica se o contador v_k é igual a 1 ou 2, para exibir os dois primeiros números da sequência de Fibonacci, ou calcula o próximo número da sequência de Fibonacci.

            v_k := v_k + 1; -- incrementa o valor do contador v_k em 1, para que na próxima iteração do loop, o próximo número da sequência de Fibonacci possa ser calculado corretamente.

        END LOOP; -- FIM DO LOOP, que continuará executando enquanto o contador v_k for menor ou igual a quantidade de números da sequência de Fibonacci fornecida pelo usuário.

    END IF; -- FIM DO IF, que verifica se a quantidade de números da sequência de Fibonacci fornecida pelo usuário é menor ou igual a zero, caso seja, exibe uma mensagem de erro.

END;
/