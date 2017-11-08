(: https://stackoverflow.com/questions/6386236/getting-filename-of-an-xml-file-with-xquery :)

distinct-values(//rfig/fn:base-uri()),
distinct-values(//rfig/static-base-uri()),
for $node in //*
  let $docname := $node/fn:base-uri()
  let $name := lower-case(local-name($node))
group by $docname, $name
order  by count($node) descending
return
<group>
 <docname>{$docname}</docname>
 <name>{$name}</name>
 <count>{count($node)}</count>
</group> 