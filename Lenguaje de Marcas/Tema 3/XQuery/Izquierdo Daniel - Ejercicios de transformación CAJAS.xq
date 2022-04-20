for $nombre in /usuarios/usuario
where contains($nombre/nombre/text(),"Jon")
for $nombre2 in /usuarios/usuario
where contains($nombre2/nombre/text(), "Marius")
for $nombre3 in /usuarios/usuario
where contains($nombre3/nombre/text(), "Daniel")
let $cuenta := ($nombre3/altura/text()-$nombre3/anchura/text()) div 5

return
<html>
    <head>
    </head>
    <body>
      <div style="height: {$nombre/altura/text()}px; width: {$nombre/anchura/text()}px; background-color: {$nombre/color/text()}; 			padding: {$cuenta}; margin: auto; float: left; margin-left:25%;">
        <p style="text-align: center; color: white;">{$nombre/nombre/text()}</p>
      </div>
      <div style="height: {$nombre2/altura/text()}px; width: {$nombre2/anchura/text()}px; background-color: {$nombre2/color/text()}; padding: {$cuenta}; margin: auto; float: left; margin: auto;">
        <p style="text-align: center; color: white;">{$nombre2/nombre/text()}</p>
      </div>
      <div style="height: {$nombre3/altura/text()}px; width: {$nombre3/anchura/text()}px; background-color: {$nombre3/color/text()}; padding: {$cuenta}; margin: auto; float:left; margin: auto;">
        <p style="text-align: center; color: white;">{$nombre3/nombre/text()}</p>
      </div>
    </body>
</html>