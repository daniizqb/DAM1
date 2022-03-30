for $i in /herramientas/caja
where $i/precio/text() < 10 and contains($i/nombre/text(),"a") and contains($i/nombre/text(),"e") and contains($i/nombre/text(),"i")

return <html>
    <head>
        <title>{$i/nombre/text()}</title>
    </head>
    <body>
        <h1 style="color: red; text-align: center;">{$i/nombre/text()}</h1>

        <div style="border: 2px black solid; width: 30%; align-items: center; padding: 15px;">
            <p style="text-align: center;">precio(euros): {$i/precio/text()}</p>
            <p style="text-align: center;">fecha_fabricacion: {$i/características/fecha_fab/text()}</p>
        </div>
    </body>
</html>