//ur[@n = "2"],
for $ur in //ur
return
  <group>
    <file>{tokenize($ur/base-uri(),"/")[last()]}</file>
    <numur>{$ur/@n}</numur>
    {for $node in $ur//mots-cles/*/text() return <mc>{$node}</mc>}
  </group>,
//mots-cles,
for $node in distinct-values(//mots-cles) return <mc>{$node}</mc>,
for $node in collection("revues_xml")/*[exists(.//ui/infoCommentaire/analyseObservation/blocAbstracts/abstract/descripteur)]
return base-uri($node)