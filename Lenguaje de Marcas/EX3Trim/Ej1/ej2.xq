for $i in /bailes/baile
where $i/precio >= 30 and $i/precio <= 100
order by $i/plazas/text() descending
return <oferta>Nombre del baile: {$i/nombre/text()} / Profesor: {$i/profesor/text()}</oferta>