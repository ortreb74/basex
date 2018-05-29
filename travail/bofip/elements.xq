for $node in //* 
  let $name := $node/local-name()
  group by $name
  order by $name
return $name