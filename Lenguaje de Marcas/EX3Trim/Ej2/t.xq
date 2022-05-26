let $j := /bailes/baile
return <html>
<body>
<h1 style="text-align: center;">Informacion Profesores de baile</h1>
<list>
{for $i in /bailes/baile where distinct-values($i/profesor/text()) return <ul>
  <li><b>{$i/profesor/text()}</b></li>
  <ul>
    <li>Numero de clases que imparte:</li>
    <li>Numero de plazas disponibles: {$i/plazas/text()}</li>
    <li>Baile: {$i/nombre/text()}</li>
  </ul>
</ul>}
</list>
</body>
</html>