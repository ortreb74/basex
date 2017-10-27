for $node in /*
return element {
  $node/name()}{/$node/@*,
  (//property)[position()<=2],
  (//target[java])[1]
}