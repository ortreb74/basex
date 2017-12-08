for $node in (//ATT)[1]//ancestor::*
  return (
    $node/local-name(), $node/@ID
  )