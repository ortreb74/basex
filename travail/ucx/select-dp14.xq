for $node in collection("ucx") 
  return 
  if (starts-with(db:path($node),"z4")) then db:path($node) else ()