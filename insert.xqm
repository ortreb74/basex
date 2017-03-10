
let $target := doc('middleware/tableaux.xml')/* 
return insert node 
 for $table in collection("revues_xml")//table
 return $table 
into $target