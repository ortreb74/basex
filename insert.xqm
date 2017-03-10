for $table in collection("revues_xml")//table
let $target := doc('middleware/tableaux.xml')/* 
return insert node $table into $target