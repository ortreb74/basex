(doc("vernimmen/vernimmen_tra.xml")//rfig)[1],
(doc("vernimmen/vernimmen_2017.xml")//rfig)[1],
count(doc("vernimmen/vernimmen_tra.xml")//rfig),
count(//IMAGE),
(//IMAGE)[1],
for $node in //IMAGE//IMG/@FICHIER/tokenize(.,'_')[1]  
  let $name := $node
group by $name
return 
  <detail count='{count($node)}'>{$name}</detail>  

