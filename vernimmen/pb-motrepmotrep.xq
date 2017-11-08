(: il n'y en a que 12 :)
//motrep[motrep],
//TIT1[GRAS],
for $node in //motrep[motrep]/ancestor::*
  return (
    $node/local-name(), $node/@id
  ),
//motrep[motrep]/../../../../../../@id,
//*[@ID="UNIVERSITAIRE/VERNIMMEN/2018/C_9"]//PEDAGO