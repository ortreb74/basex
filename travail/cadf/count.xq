for $node in /doc("cadf/uaur_enr")//*[local-name()=('DEBUR','DEBUA','FINUR','FINUA','CADF')]
  let $name := local-name($node)
  group by $name
  order by $name
return 
<element name="{$name}">{count($node)}</element>