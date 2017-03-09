for $table in //table
let $target := doc('middleware/tableaux.xml')/tableau 
return insert node $table into $target