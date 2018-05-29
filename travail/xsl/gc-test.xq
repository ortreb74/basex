declare namespace xsl="http://www.w3.org/1999/XSL/Transform";
count(//xsl:when),
for $node in //xsl:when/@test  
  let $test := $node
  group by $test  
return 
<when test="{$test}">{count($test)}</when>


