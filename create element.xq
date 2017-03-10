for $c in (//table)[1]/ancestor-or-self::*
  return element {$c/name()} {
   for $a in $c/@* return attribute{name($a)}{string($a)}
}
