select * from cadclientes

select cli_nome
from cadclientes c
where exists (
    select 1
    from cadclientes
    where cli_cidade = 'TUPA' and cli_id = c.cli_id
);

select cli_nome, cli_cidade from cadclientes

select cli_id, cli_nome from cadclientes order by cli_nome