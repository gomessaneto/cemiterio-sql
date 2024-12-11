DELIMITER $
create trigger defunto_alocado after insert
on defunto
for each row 
begin
    insert into jazigo (iddefuntojazigo) values (new.iddefunto);
end$
DELIMITER ;

-- ------------------------ --

DELIMITER $
create trigger defunto_retirado after delete
on defunto
for each row 
begin
	delete from defunto where iddefunto = old.iddefunto;
end$
DELIMITER ;

drop trigger defunto_alocado;
drop trigger defunto_retirado;

delete from jazigo where iddefuntojazigo = 25;
INSERT INTO defunto (nomedefunto, datanascimentodefunto, dataobitodefunto, dataenterrodefunto, grauparentescodefunto) VALUES ("josyres", 2005-12-31, 2013-12-21, 2013-12-23, "irma");

select * from defunto;
select * from jazigo;