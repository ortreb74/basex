declare namespace pom="http://maven.apache.org/POM/4.0.0";
declare namespace xls="excel";

for $node in (collection("pom")//pom:modelVersion)[1]
return insert node $node into doc("outputFactory/pom.xml")/pom:project,

let $root := doc("outputFactory/pom.xml")/pom:project
let $build := <build></build>
for $line in collection("ref")//xls:worksheet[@name='pom']/xls:range[xls:header/@name="Date"]/xls:line
  let $programName := $line/xls:cell[@name="artifactId"]/text()   
  let $groupId := $line/xls:cell[@name="groupId"]/text()   
  let $version := $line/xls:cell[@name="version"]/text()   
  let $goal := $line/xls:cell[@name="goal"]/text()   
  return   
    if ($programName = "DallozTraiteCodes") then 
      (
        insert node <artifactId>{$programName}</artifactId> into $root,
        insert node <groupId>{$groupId}</groupId> into $root,
        insert node <version>{$version}</version> into $root,
        insert node $build into $root        
      ) else ()
      
  