for $i in /bailes/baile
where contains($i/comienzo/text(),"/1/")
return <bailes>{$i}</bailes>