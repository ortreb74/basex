let $p-serialization := <output:serialization-parameters>
  <output:method value='xml'/>
  <output:indent value='no'/>
  <output:omit-xml-declaration value='no'/>
  <output:encoding value='utf-8'/></output:serialization-parameters>
return file:write("q:/collection.xml",doc("collection/collection.xml"),$p-serialization)  
  