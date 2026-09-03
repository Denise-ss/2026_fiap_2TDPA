SELECT * FROM PF1788.PRODUTO;

SELECT * FROM PF1788.ESTADO;

SELECT DISTINCT COD_PAIS FROM PF1788.ESTADO;
SELECT COD_PAIS FROM PF1788.ESTADO

SELECT
COUNT(a.cod_estado) qtd_estados,
    a.cod_pais "Codigo do Pais",
    b.nom_pais "nome_Pais"

FROM
        pf1788.estado a
    JOIN pf1788.pais B ON a.cod_pais = b.cod_pais
GROUP BY
    a.cod_pais,
    b.nom_pais
    order by 1 desc, "Códfigo do Pais" ;

