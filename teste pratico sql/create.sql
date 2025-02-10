create database cadastroclientes

use cadastroclientes
go

create table cadclientes (
 cli_id INT PRIMARY KEY, 
 cli_nome NVARCHAR(100),
 cli_uf NVARCHAR(2),
 cli_cidade NVARCHAR(100)
)

drop table cadclientes