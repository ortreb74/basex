declare variable $p-repertoire-output external :='file:/c:/var/';

let $p-serialization := (<output:serialization-parameters>
  <output:method value='xml'/>
  <output:indent value='no'/>
  <output:omit-xml-declaration value='no'/>
  <output:encoding value='utf-8'/>
</output:serialization-parameters>)

for $file in (db:list("outputFactory"))
(:  return <a></a>{concat($p-repertoire-output,$file)}</a> :)
  return file:write(concat($p-repertoire-output,$file), collection(concat("outputFactory/",$file)), $p-serialization)