for $node in //EXERCICE/*/*/*
  let $gp-name := local-name($node/ancestor::*[2])
  let $p-name := local-name($node/parent::*)
  group by $gp-name, $p-name
  order by $gp-name, $p-name
return 
<exercice lvl1="{$gp-name}" lvl2="{$p-name}">{count($node)}'</exercice>
