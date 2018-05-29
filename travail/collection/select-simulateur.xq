count(collection("collection")),
let $path:=collection("collection")//niv0[@code="OM"]/niv1[@label="Simulateur"]/book/file/@filename
return $path,
let $path:=collection("collection")//niv0[@code="OM"]/niv1[@label="Simulateur"]/book/file/@filename
return count($path)
