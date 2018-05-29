module namespace f='f';

declare function f:pilot($e) {

(: on copie le titre et les ui mais pas pour la même raison :)
       
(: la syntaxe * ! :)    
(: la création d'un élément avec element ! :) 
    if ($e/self::*[local-name()=("ua","ui","docNiv","infoCommentaire","infoChiffres","infoQuestionsReponses")][exists(descendant::table)]) then (
       element {$e/name()}
        {
          $e/@*,
          $e/titre,
          $e/titreUa,
          for $se in $e/*[exists(descendant::table)] return f:pilot ($se)
        }
    ) else if ($e/self::table) then (
       $e
    )else (
(: descendant-or-self ! :)       
      for $se in $e/*[exists(descendant-or-self::table)] return f:pilot ($se)      
    )
};

declare function f:process() { 
   for $revue in collection("revues_xml")/doc
     (: let $titre := $revue/metadonnees/metaCommunes/metaQualif/titreCalcule/text() :)
     return f:pilot($revue)
};