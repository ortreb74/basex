count(doc("siechaine-253/y5003.livraison.xml")//LINK),
for $node in doc("siechaine-253/y5003.livraison.xml")//LINK/@*
  let $attribute-name := $node/local-name()
(:  let $attribute := $node :)
  group by $attribute-name (:, $attribute  :)
return 
<link attribute-name="{$attribute-name}">{count($node)}</link>