for $node in //RTX/string-join(@*/local-name(),"-")
  let $name := $node
  group by $name
  order by $name
return <rtx name="{$name}" cnt="{count($node)}"/>