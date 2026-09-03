-- CRIAÇÃO DA TABELA

CREATE TABLE AULA_DB ( 
    ID NUMBER PRIMARY KEY, 
    RM VARCHAR2(30), 
    NOME VARCHAR2(30), 
    TURMA VARCHAR2(30) 
); 

-- CONSULTA DA TABELA


SELECT * FROM AULA_DB;

-- EXEMPLO COM DECLARE / UPDATE / DELETE / INSERT


DECLARE

    -- Guarda o ID
    v0 NUMBER := &id;

    -- Guarda o RM
    v1 VARCHAR2(30) := '&rm';

    -- Guarda o nome
    v2 VARCHAR2(30) := '&nome';

    -- Guarda a turma
    v3 VARCHAR2(30) := '&turma';

BEGIN   
    -- UPDATE = ALTERAR UM REGISTRO    

    UPDATE AULA_DB
    SET RM = v1
    WHERE ID = v0;

    -- DELETE = EXCLUIR UM REGISTRO
  
    DELETE FROM AULA_DB
    WHERE ID = v0;

    -- INSERT = INSERIR UM REGISTRO

    INSERT INTO AULA_DB (
        ID,
        RM,
        NOME,
        TURMA
    )
    VALUES (
        v0,
        v1,
        v2,
        v3
    );


    -- Confirma as alterações feitas no banco
    COMMIT;

END;
/