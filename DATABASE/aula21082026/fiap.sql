SET SERVEROUTPUT ON 
 
//EXERCICIO 1

DECLARE
    salario     NUMBER := &valor;
    salarionovo NUMBER;
BEGIN
    salarionovo := salario + ( salario * 0.25 );
    dbms_output.put_line('O novo salario é' || salarionovo);
END;
 
 
//EXERCICIO 2

DECLARE
    valor     NUMBER := 45;
    valornovo NUMBER;
BEGIN
    valornovo := valor * 5;
    dbms_output.put_line('O novo salario é' || valornovo);
END;

//exercicio3
//CRIAR UM BLOCO PL-SQL PARA CALCULAR O VALOR DAS PARCELAS DE UMA COMPRA DE UM CARRO NAS SEGUINTES CONDICOES:
// PARCELAR PARA AQUISICAO EM 10 PAGAMENTOS
// O VALOR DA COMPRA DEVERA SER INFORMADO EM TEMPO DE EXECUCAO
// O VALOR TOTAL DOS JUROS É DE 3%
// NO FINAL INFORMAR O VALOR DE CADA PARCELA

DECLARE
    carro   NUMBER := &valor;
    parcela NUMBER := 10;
    juros   NUMBER := 1.03;
BEGIN
    dbms_output.put_line('Qual o valor da compra é R$:' || carro);
    carro := carro * juros;
    dbms_output.put_line('O valor de cada parcela: r$ ' || carro / parcela);
    dbms_output.put_line('O valor do carro financiado: r$' || carro);
END;


//exercicio4:

DECLARE
    carro      NUMBER := &valor;
    entrada    NUMBER;
    restante   NUMBER;
    financiado NUMBER;
BEGIN
    dbms_output.put_line('O VALOR DO CARRO A VISTA É: ' || carro);
    entrada := carro * 0.20;
    restante := carro * 0.80;
    financiado := restante * 1.10;
    dbms_output.put_line('O VEICULO PARCELADO EM 6X É R$ ' ||(financiado + entrada));
    dbms_output.put_line('O VALOR DA PARCELA EM 6X + JUROS É R$ '
                         ||(financiado / 6) * 1.10);
    dbms_output.put_line('O VEICULO PARCELADO EM 12X É R$ ' ||(financiado + entrada));
    dbms_output.put_line('O VALOR DA PARCELA EM 12X + JUROS É R$ '
                         ||(financiado / 12) * 1.05);
    dbms_output.put_line('O VEICULO PARCELADO EM 18X É R$ ' ||(financiado + entrada));
    dbms_output.put_line('O VALOR DA PARCELA EM 18X + JUROS É R$ '
                         ||(financiado / 18) * 1.10);
END;

DECLARE
    numero NUMBER := &valor;
BEGIN
    IF MOD(numero, 2) = 0 THEN
        dbms_output.put_line('O numero informado é Par');
    ELSE
        dbms_output.put_line('O numero informado é Impar');
    END IF;
END;

DECLARE
    sexo CHAR(1) := '&valor';
BEGIN
    IF sexo = 'f' THEN
        dbms_output.put_line('O sexo informado é feminino');
    ELSIF sexo = 'm' THEN
        dbms_output.put_line('o sexo informado é masculino');
    ELSE
        dbms_output.put_line('o sexo informado é outros');
    END IF;
END;

//receba uma nota de aluno e imprima se estava aprovado, recuperacao ou reprovado

DECLARE
    NOTA NUMBER := &VALOR;

BEGIN 
    IF NOTA >=7 THEN
        dbms_output.put_line('Voce foi aprovado');
    //ELSIF NOTA => 5 or NOTA <=6.9 THEN
    ELSIF NOTA between 5 and 6.9 THEN
        dbms_output.put_line('Voce esta em recuperacao');
    ELSE 
        dbms_output.put_line('Voce esta reprovado');
end;
    