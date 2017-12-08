for $node in //(RTX)/@NATURE
  let $name := $node
  group by $name
  order by $name
return <ital-attribut name="{$name}" cnt="{count($node)}"/>