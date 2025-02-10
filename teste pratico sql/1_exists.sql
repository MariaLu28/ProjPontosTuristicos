select cli_nome
from cadclientes c
where exists (
    select 1
    from cadclientes
    where cli_cidade = 'TUPA' and cli_id = c.cli_id
);