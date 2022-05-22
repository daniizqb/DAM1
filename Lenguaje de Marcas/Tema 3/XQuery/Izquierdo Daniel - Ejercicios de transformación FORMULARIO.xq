let $i := /usuarios/usuario[ends-with(apellido/text(), 'a') and contains(confidencial/email/text(), '@') and anchura/text() - altura/text() < 8]

return <html>
    <head>
        <title>Formulario</title>
    </head>
    <body>
        <form action="mailto:{$i/confidencial/email/text()}" method="post" enctype="text/plain">
            <p style="font-weight: bold;">Nombre</p>
            <input type="text" name="Nombre" id="name" style="width: 100%;" value="{$i/nombre/text()}" />
            <p style="font-weight: bold;">Apellido</p>
            <input type="text" name="Apellido" id="last" style="width: 100%;" value="{$i/apellido/text()}" />
            <p style="font-weight: bold;">Email</p>
            <input type="email" name="Email" id="email" style="width: 100%;" value="{$i/confidencial/email/text()}" />
            <p style="font-weight: bold;">Teléfono</p>
            <input type="text" name="Telefono" id="phone" style="width: 100%;" value="{$i/confidencial/telefono/text()}" />

            <button type="submit" style="margin-top: 30px; padding: 5px 15px;">Enviar</button>
        </form>
    </body>
</html>