for $i in /herramientas/caja
where $i/precio/text() < 10 and contains($i/nombre/text(),"a") and contains($i/nombre/text(),"e") and contains($i/nombre/text(),"i")

return <html>
<head>
    <title>Herramientas</title>
</head>
<body>
<div style="display: flex; justify-content: center; width: 100vw;">
    <table border="3" style="border-collapse:collapse; text-align: center;">
        <tr style="background-color: grey; border: 3px solid black;">
            <th style="min-width: 10vw">Nombre</th>
            <th style="min-width: 10vw">Precio</th>
            <th style="min-width: 10vw">Fecha_fab</th>
            <th style="min-width: 10vw">Peso</th>
        </tr>
        <tr>
            <td>{$i/nombre/text()}</td>
            <td>{$i/precio/text()}</td>
            <td>{$i/características/fecha_fab/text()}</td>
            <td>{$i/características/peso/text()}</td>
        </tr>
    </table>
</div>
</body>
</html>