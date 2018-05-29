for $node in //REFDOC2[starts-with(@NATURE,"BOI")]/@DATE
  let $name := $node
  group by $name
  order by $name
return <refdoc2 date="{$name}" cnt="{count($node)}"/>