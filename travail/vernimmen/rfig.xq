for $node in //rfig
  let $preceding := local-name($node/preceding-sibling::*[1])
  let $successor := local-name($node/following-sibling::*[1])
  group by $preceding, $successor
  order by $preceding, $successor
return 
<group balise = "rfig">
  <preceding>{$preceding}</preceding>
  <successor>{$successor}</successor>
  <detail count='{count($node)}'></detail>  
</group>