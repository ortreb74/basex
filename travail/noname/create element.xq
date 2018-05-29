for $c in (//table)[1]/ancestor-or-self::*
  return element {$c/name()} { $c/@* }