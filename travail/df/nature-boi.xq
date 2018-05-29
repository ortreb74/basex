(: pour avoir un découpage par partie qui indiquerait le cardinal :)

for $node in //*[starts-with(@NATURE,"BOI")] 
  let $name := $node/local-name()
  group by $name
  order by $name
return <element name="{$name}" cnt="{count($node)}"/>