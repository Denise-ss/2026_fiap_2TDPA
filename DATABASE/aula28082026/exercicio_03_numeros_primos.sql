-- Exercício 3 — Identificação de números primos
-- Permite que as mensagens do DBMS_OUTPUT apareçam na tela

DECLARE

    -- Define até qual número queremos procurar números primos
    limite PLS_INTEGER := 30;

    -- Número que será testado
    -- Começamos em 2 porque 2 é o menor número primo
    numero PLS_INTEGER := 2;

    -- Guarda o número que será usado para tentar dividir o "numero"
    divisor PLS_INTEGER;

    -- BOOLEAN só pode assumir TRUE ou FALSE
    -- Vai indicar se o número atual continua sendo primo
    primo BOOLEAN;

    -- Conta quantos números primos encontramos
    quantidade PLS_INTEGER := 0;

    -- Vai juntando todos os números primos encontrados
    lista VARCHAR2(200) := '';

-- Começa a execução
BEGIN
    -- LOOP externo:
    -- serve para testar os números 2, 3, 4, 5... até 30
    LOOP
        -- Se o número ultrapassar o limite, termina o LOOP
        EXIT WHEN numero > limite;

        -- Antes de testar, assumimos que o número É primo
        primo := TRUE;

        -- Começamos tentando dividir por 2
        divisor := 2;


        -- LOOP interno:
        -- testa se existe algum divisor para o número atual
        LOOP

            -- Só precisamos testar divisores até a raiz quadrada
            -- do número
            EXIT WHEN divisor > SQRT(numero);

            -- MOD retorna o resto da divisão
            -- Se o resto for 0, encontramos um divisor exato
            IF MOD(numero, divisor) = 0 THEN

                -- Portanto, o número NÃO é primo
                primo := FALSE;

                -- Não precisamos continuar procurando divisores
                -- Sai do LOOP interno
                EXIT;

            END IF;
            -- Se não encontramos divisor,
            -- testamos o próximo
            divisor := divisor + 1;

        -- Final do LOOP que procura divisores
        END LOOP;

        -- Depois dos testes, verificamos:
        -- o número continuou sendo primo?
        IF primo THEN
            -- Se sim, aumentamos a quantidade de primos
            quantidade := quantidade + 1;

            -- E adicionamos o número à nossa lista
            lista := lista || numero || ' ';

        END IF;

        -- Passamos para o próximo número
        numero := numero + 1;

    -- Final do LOOP que percorre os números
    END LOOP;

    -- Mostra a lista de números primos
    DBMS_OUTPUT.PUT_LINE(
        'Primos até ' || limite || ': ' || lista
    );

    -- Mostra quantos números primos foram encontrados
    DBMS_OUTPUT.PUT_LINE(
        'Quantidade: ' || quantidade
    );

END;

