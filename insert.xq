import module namespace local='f' at 'insert.xqm';

let $target := doc('middleware/tableaux.xml')/*
return insert node
local:process()
into $target