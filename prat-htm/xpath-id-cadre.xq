for $node in (//CADRE)[1]//ancestor::*
  return (
    $node/local-name(), $node/@ID
  )