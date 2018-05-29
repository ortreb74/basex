let $root := doc("outputFactory/map.xml")/*
for $file in collection("ucx") 
  return 
    if (starts-with(db:path($file),"z4")) then 
      for $node in $file//gendoc/@uri-cible
        let $document := replace(db:path($file),".ucx.xml","")
        let $word := tokenize($node,"/")        
        let $texte := $word[5]
        let $bloc := replace($word[4],"ELNETTXTBLOC","")
      return insert node <entry document = "{$document}" texte = "{$texte}" bloc = "{$bloc}"/> into $root
    else ()