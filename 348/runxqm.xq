import module namespace om-ci-actu ='http://els.eu/ns/efl/offresMetiers/CreateCIActu' 
												at 'C:\bb\bu\sie-efl-inneo-src\src\main\BaseXML\creation-actualisation-induit.xqm';

import module namespace om='http://els.eu/ns/efl/offresMetiers'	at 'C:\bb\bu\sie-efl-inneo-src\src\main\BaseXML\BcCommon.xqm';

(: local:getPNonNumPortantActu(*) :)

(:
local:processCIActu(collection('baseCo')/*, 
collection('FichiersBase')/*, 
doc('contenusInduits/actu-induits.xml')/Actualisation)
:)


for $p-actu in (om-ci-actu:getPNonNumPortantActu(collection("baseCo")/*)) 
let $pLink := $p-actu/ana/al/link[om:is-supp-actualisation(@supp)][1] 
(: let $ret := basex:attribute($ouvragesBu, $pLink/@linkid, 'id')/parent::*
let $peu-parentCible := om-ci-actu:getParentCible($ret) :)
return $pLink