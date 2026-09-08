SET SERVEROUTPUT ON;

DECLARE
    -- SERVE PARA DECLARAR AS VARIÁVEIS QUE SERÃO UTILIZADAS NO BLOCO DE CÓDIGO.
    v_inicio       PLS_INTEGER := &v_inicio;
    v_fim          PLS_INTEGER := &v_fim;

    -- SERVE PARA DECLARAR AS VARIÁVEIS QUE SERÃO UTILIZADAS PARA CONTAR A QUANTIDADE DE PARES E ÍMPARES, E PARA SOMAR OS VALORES DOS PARES E ÍMPARES.
    v_qtd_pares    PLS_INTEGER := 0;
    v_qtd_impares  PLS_INTEGER := 0;

    -- SERVE PARA DECLARAR AS VARIÁVEIS QUE SERÃO UTILIZADAS PARA SOMAR OS VALORES DOS PARES E ÍMPARES, E PARA CALCULAR A MÉDIA DOS PARES.
    v_soma_impares NUMBER := 0;
    v_soma_pares   NUMBER := 0;

    -- SERVE PARA DECLARAR A VARIÁVEL QUE SERÁ UTILIZADA PARA CALCULAR A MÉDIA DOS PARES.
    v_media_pares  NUMBER := 0;

BEGIN

    FOR v_contador IN v_inicio..v_fim LOOP -- loop que percorre o intervalo de números fornecido pelo usuário, de v_inicio até v_fim, e realiza as operações de contagem e soma dos números pares e ímpares.

        IF MOD(v_contador, 2) = 0 THEN -- verifica se o número atual do loop é par, utilizando a função MOD para verificar se o resto da divisão por 2 é igual a 0.

            v_qtd_pares := v_qtd_pares + 1; -- incrementa a quantidade de números pares encontrados no intervalo.

            v_soma_pares := v_soma_pares + v_contador; -- incrementa a soma dos números pares encontrados no intervalo, somando o valor atual do loop à variável v_soma_pares.

        ELSE

            v_qtd_impares := v_qtd_impares + 1; -- incrementa a quantidade de números ímpares encontrados no intervalo.

            v_soma_impares := -- incrementa a soma dos números ímpares encontrados no intervalo, somando o valor atual do loop à variável v_soma_impares.
                v_soma_impares + v_contador; --serve para somar o valor atual do loop à variável v_soma_impares, que armazena a soma dos números ímpares encontrados no intervalo.
        END IF;

    END LOOP;


    IF v_qtd_pares > 0 THEN -- verifica se a quantidade de números pares encontrados no intervalo é maior que 0, para evitar divisão por zero ao calcular a média dos números pares.

        v_media_pares := -- calcula a média dos números pares encontrados no intervalo, dividindo a soma dos números pares pela quantidade de números pares.
            v_soma_pares / v_qtd_pares; --serve para calcular a média dos números pares encontrados no intervalo, dividindo a soma dos números pares pela quantidade de números pares.

    ELSE

        v_media_pares := 0; -- caso não haja números pares no intervalo, a média dos números pares é definida como 0, para evitar divisão por zero.

    END IF;


    DBMS_OUTPUT.PUT_LINE(
        'Intervalo: ' || v_inicio || ' a ' || v_fim -- exibe o intervalo de números fornecido pelo usuário, mostrando os valores de v_inicio e v_fim.
    );

    DBMS_OUTPUT.PUT_LINE(
        'Quantidade de pares: ' || v_qtd_pares -- exibe a quantidade de números pares encontrados no intervalo.
    );

    DBMS_OUTPUT.PUT_LINE(
        'Quantidade de ímpares: ' || v_qtd_impares -- exibe a quantidade de números ímpares encontrados no intervalo.
    );

    DBMS_OUTPUT.PUT_LINE(
        'Soma dos ímpares: ' || v_soma_impares -- exibe a soma dos números ímpares encontrados no intervalo.
    );

    DBMS_OUTPUT.PUT_LINE(
        'Média dos pares: ' || ROUND(v_media_pares, 2) -- exibe a média dos números pares encontrados no intervalo, arredondando o valor para 2 casas decimais.
    );

END;
/