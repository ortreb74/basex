//niv1[@code="REV"][empty(./descendant::file/@filename)],
count(//niv1[@code="REV"]/descendant::file/@filename),
for $node in //niv1[@code="REV"]/descendant::file/@filename
return concat ("cp /e8/webbu/livraison/",$node," import/")