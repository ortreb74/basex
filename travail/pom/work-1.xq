declare namespace default="http://maven.apache.org/POM/4.0.0";
declare namespace xls="excel";

for $node in (collection("pom")//default:modelVersion)[1] return $node,

let $key := "DallozTraiteCodes"
return collection("ref")//xls:worksheet[@name='pom']/xls:range[xls:header/@name="Date"]/xls:line[xls:cell=$key],
for $line in collection("ref")//xls:worksheet[@name='pom']/xls:range[xls:header/@name="Date"]/xls:line
  let $programName := $line/xls:cell[@name="artifactId"]/text()   
  return $programName,
for $line in collection("ref")//xls:worksheet[@name='pom']/xls:range[xls:header/@name="Date"]/xls:line
  let $programName := $line/xls:cell[@name="artifactId"]/text()   
  return if ($programName = "DallozTraiteCodes") then $programName else (),  
0