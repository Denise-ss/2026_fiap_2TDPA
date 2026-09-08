--primeiro é a criação da Tabela ALUNO, com os campos RA e NOME, sendo RA a chave primária.
CREATE TABLE ALUNO (
    RA CHAR(9),
    NOME VARCHAR2(50),
    CONSTRAINT ALUNO_PK PRIMARY KEY (RA)
);


-- depois é a inserção de 3 registros na tabela ALUNO, com os valores de RA e NOME para cada aluno.
INSERT INTO ALUNO (RA, NOME)
VALUES ('111222333', 'Antonio Alves');

INSERT INTO ALUNO (RA, NOME)
VALUES ('222333444', 'Beatriz Bernardes');

INSERT INTO ALUNO (RA, NOME)
VALUES ('333444555', 'Claudio Cardoso');

-- commit é usado para salvar as alterações feitas na tabela ALUNO.
COMMIT;


SET SERVEROUTPUT ON;

DECLARE
    v_nome VARCHAR2(50);

BEGIN
    -- --insere um novo registro na tabela ALUNO com os valores de RA e NOME fornecidos.
    INSERT INTO ALUNO (RA, NOME)
    VALUES ('444555666', 'Daniela Dias'); 
    dbms_output.put_line('INSERT realizado: 444555666 - Daniela Dorneles');

    -- atualiza o nome do aluno com RA 111222333 para Antonio Rodrigues.
    -- set serve para especificar qual campo deve ser atualizado, neste caso, o campo NOME.
    --where serve para especificar qual registro deve ser atualizado, neste caso, o aluno com RA 111222333.
    UPDATE ALUNO
    SET NOME = 'Antonio Rodrigues' 
    Where RA = '111222333';
    dbms_output.put_line('UPDATE realizado: 111222333 - Antonio Rodrigues');


    --SELECT é usado para buscar o nome do aluno com RA 333444555 na tabela ALUNO e armazenar o resultado na variável v_nome.
    --INTO é usado para especificar a variável onde o resultado da consulta será armazenado, neste caso, a variável v_nome.
    -- FROM é usado para especificar a tabela de onde os dados serão buscados, neste caso, a tabela ALUNO.
    -- WHERE é usado para especificar a condição que deve ser atendida para que o registro seja retornado, neste caso, o aluno com RA 333444555.
    SELECT NOME
    INTO v_nome
    FROM ALUNO
    WHERE RA = '333444555'; -- seleciona o nome do aluno com RA 333444555 e armazena na variável v_nome.
    dbms_output.put_line('SELECT realizado: 333444555 - ' || v_nome); -- exibe o resultado da consulta, mostrando o RA e o nome do aluno selecionado.


    --DELETE FROM é usado para deletar um registro da tabela ALUNO, neste caso, o aluno com RA 222333444.
    -- WHERE é usado para especificar qual registro deve ser deletado, neste caso, o aluno com RA 222333444.
    DELETE FROM ALUNO
    WHERE RA = '222333444'; -- deleta o registro do aluno com RA 222333444 da tabela ALUNO.
    dbms_output.put_line('DELETE realizado: 222333444 - Beatriz Bernardes');

    COMMIT; -- commit é usado para salvar as alterações feitas na tabela ALUNO.
    END;
    /

    --NO TERMINAL DESC ALUNO; NOS MOSTRA A ESTRUTURA DA TABELA ALUNO, COM OS CAMPOS RA E NOME, E A CHAVE PRIMÁRIA DEFINIDA NO CAMPO RA.
    --EM PROJETOS PASSADOS JA TINHA UMA TABELA ALUNO, ENTAO PARA RODAR PRO EXERCICIO PRECISEI EXCLUIR USANDO O COMANDO DROP TABLE ALUNO; ANTES DE RODAR O SCRIPT. 
    -- DEPOIS PRECUSA INSERI O COMANDO COMMIT; PARA SALVAR AS ALTERAÇÕES FEITAS NA TABELA ALUNO.
    --SELECT * FROM ALUNO; PARA APARECER OS REGISTROS INSERIDOS NA TABELA ALUNO, COM OS CAMPOS RA E NOME, QUE ESTAO LISTADOS ACIMA, E OS REGISTROS INSERIDOS NO SCRIPT.
    -- APOS CONFERIR, EXECUTAR O INSERT, UPDATE, SELECT E DELETE, PARA VERIFICAR SE OS REGISTROS FORAM INSERIDOS, ATUALIZADOS, SELECIONADOS E DELETADOS CORRETAMENTE.