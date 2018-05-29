for $node at $pos in //niv0[@code="OM"]/*[substring(@code,1,4)="BASE"]/book
 return if ($pos mod 9 = 0) then () else delete node $node
 
(: data($node/@filename) :)