for $node in //(REFDOC2|RTX)/@ITAL
  let $name := $node
  group by $name
  order by $name
return <ital-attribut name="{$name}" cnt="{count($node)}"/>