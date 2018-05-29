count(//CADRE[empty[CHEVRON]]),
for $node in //CADRE/@*
  let $attribute-name := $node/local-name()
  let $attribute := $node
  group by $attribute-name, $attribute  
return 
<cadre attribute-name="{$attribute-name}" attribute-value="{$attribute}">{count($attribute)}</cadre>