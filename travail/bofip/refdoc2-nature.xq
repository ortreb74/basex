for $node in //(REFDOC2)/@NATURE
  let $name := $node
  group by $name
  order by $name
return <ital-attribut name="{$name}" cnt="{count($node)}"/>