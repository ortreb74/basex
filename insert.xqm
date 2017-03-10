module namespace f='f';

declare function f:pilot($e) {
  
    if ($e/self::docNiv) then (
      <docNiv>        
        {
          $e/@*,
          $e/titre,
          for $se in $e/* return f:pilot ($se)        
        }
      </docNiv>
    ) else if ($e/self::ui) then (
       $e//table
    ) else (
      for $se in $e/* return f:pilot ($se)
    )
};

declare function f:process() { 
   for $revue in collection("revues_xml")/doc
     let $titre := $revue/metadonnees/metaCommunes/metaQualif/titreCalcule/text()
     return 
     <docNiv>
       <titre>{$titre}</titre>
       {
       for $docNiv in $revue//docNiv[empty(ancestor::docNiv)]
         return f:pilot($docNiv)     
       }
     </docNiv>   
};