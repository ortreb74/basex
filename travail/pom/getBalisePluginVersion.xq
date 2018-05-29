declare namespace default="http://maven.apache.org/POM/4.0.0";

(: max(//default:artifactId[.="balise-maven-plugin"]/../*[local-name()="version"]/text()), :)
for $node in //default:artifactId[.="balise-maven-plugin"]
  return 
    <c>
      <version>{$node/base-uri()}</version>
      <document>{$node/../*[local-name()="version"]/text()}</document>
    </c>
    