for $i in /bailes/baile
where $i/precio < 32
return <bailes><baile id="{$i/@id}">{$i/nombre/text()}: {$i/precio/text()} euros</baile></bailes>