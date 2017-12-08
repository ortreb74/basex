for $node in //REFDOC2/string-join(@*[local-name()!="ITAL" and local-name()!="ID"]/local-name(),"-")
  let $name := $node
  group by $name
  order by count($node) 
return <refdoc2 name="{$name}" cnt="{count($node)}"/>