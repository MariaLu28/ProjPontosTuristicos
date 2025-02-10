use cadastroclientes


create table cidade (
    cid_id int identity primary key, 
    cid_nome nvarchar(100),
	cid_uf nvarchar(2)
),

create procedure crudcidade (
@operacao nvarchar(15),
@p_id int = NULL, 
@p_nome nvarchar(100),
@p_uf nvarchar(2)
)
  as
  begin
if @operacao = 'insert'
  begin
insert into cidade (cid_nome, cid_uf)
values (@p_nome, @p_uf);
    end
    else if @operacao = 'update'
    begin
update cidade
set cid_nome = @p_nome,
cid_uf = @p_uf
where cid_id = @p_id;
    end
    else if @operacao = 'delete'
    begin
delete from cidade
where cid_id = @p_id;
    end
end;

select * from cidade;


exec crudcidade 'insert', NULL, 'São Paulo', 'SP';
exec crudcidade 'insert', NULL, 'Rio de Janeiro', 'RJ';
exec crudcidade 'insert', NULL, 'Belo Horizonte', 'MG';
exec crudcidade 'update', 3, 'Nova Tupa', 'SP';
exec crudcidade 'delete', 2, NULL, NULL;

drop procedure crudcidade