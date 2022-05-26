let $j := distinct-values(/bailes/baile[profesor = "Jesus Lozano"]/profesor/text())
let $p := count(/bailes/baile) where /bailes/baile/profesor/text() = "Jesus Lozano"
 
return <Info><Profesor>Profesor: {$j}</Profesor><Plazas>Numero de plazas: {$p}</Plazas>{for $i in /bailes/baile where $i/profesor/text() = "Jesus Lozano" return <Bailes><Nombre>{$i/nombre/text()}: {$i/plazas/text()} plazas</Nombre></Bailes>}</Info>