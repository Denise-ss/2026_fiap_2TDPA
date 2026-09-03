SET SERVEROUTPUT ON;

-- Exercício 2 — Boletim da turma com classificação de notas

DECLARE

    -- Contador para saber qual aluno está sendo processado
    -- Começa no aluno 1
    aluno PLS_INTEGER := 1;

    -- Total de alunos da turma
    total_alunos PLS_INTEGER := 5;

    -- Guarda a nota do aluno atual
    -- NUMBER(4,2) permite número com casas decimais (sendo 4 numeros no total e 2 numeros apos a virgula)
    nota NUMBER(4,2); 

    -- Vai somar todas as notas
    -- Começa em zero porque ainda não temos nenhuma nota
    soma_notas NUMBER := 0;

    -- Conta quantos alunos foram aprovados
    -- Também começa em zero
    aprovados PLS_INTEGER := 0;

    -- Vai guardar a média final da turma
    media NUMBER(4,2);

-- BEGIN = começa a execução do programa
BEGIN
    -- WHILE = ENQUANTO a condição for verdadeira, continue repetindo
    -- Enquanto aluno for menor ou igual a 5, continue
    WHILE aluno <= total_alunos LOOP
        -- Gera uma nota aleatória entre 0 e 10
        -- ROUND(..., 2) arredonda para 2 casas decimais
        nota := ROUND(DBMS_RANDOM.VALUE(0, 10), 2);
        -- Soma a nota atual com as notas anteriores
        soma_notas := soma_notas + nota;
        -- Verifica a situação do aluno
        -- SE a nota for maior ou igual a 7
        IF nota >= 7 THEN
            -- Soma 1 ao total de aprovados
            aprovados := aprovados + 1;
            -- Mostra o aluno, a nota e sua situação
            DBMS_OUTPUT.PUT_LINE(
                'Aluno ' || aluno ||
                ' - Nota: ' || nota ||
                ' - APROVADO'
            );
        -- SENÃO, SE a nota for maior ou igual a 5
        ELSIF nota >= 5 THEN
            DBMS_OUTPUT.PUT_LINE(
                'Aluno ' || aluno ||
                ' - Nota: ' || nota ||
                ' - RECUPERACAO'
            );
        -- SENÃO
        ELSE
            DBMS_OUTPUT.PUT_LINE(
                'Aluno ' || aluno ||
                ' - Nota: ' || nota ||
                ' - REPROVADO'
            );

        -- Termina a decisão
        END IF;

        -- Passa para o próximo aluno
        aluno := aluno + 1;

    -- Termina a repetição
    END LOOP;

    -- Calcula a média depois que todos os alunos foram processados
    media := ROUND(soma_notas / total_alunos, 2);

    -- Mostra uma linha separadora
    DBMS_OUTPUT.PUT_LINE('------------------------------');

    -- Mostra a média final
    DBMS_OUTPUT.PUT_LINE(
        'Media da turma: ' || media
    );

    -- Mostra quantos alunos foram aprovados
    DBMS_OUTPUT.PUT_LINE(
        'Total de aprovados: ' || aprovados
    );

-- Termina o bloco
END;
/