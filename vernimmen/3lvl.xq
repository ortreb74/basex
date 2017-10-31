for $node in //PEDAGO
  let $gp-name := local-name($node/ancestor::*[2])
  let $p-name := local-name($node/parent::*)
  group by $gp-name, $p-name
  order by $gp-name, $p-name
return 
<group balise = "PEDAGO">
  <root-name>{$gp-name}</root-name>
  <parent-name>{$p-name}</parent-name>
  <detail count='{count($node)}'></detail>  
</group>