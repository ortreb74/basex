collection('elwork/z5m28.tra.sgm.xml')//BLOCTXT[exists(XIFORM/following-sibling::text())]/text(),
collection('elwork/z5m28.optj.sgm.xml')//BLOCTXT[exists(XIFORM/following-sibling::text())]/text(),
count(collection('elwork/z5m28.tra.sgm.xml')//AL[exists(XIFORM/following-sibling::text())]),
count(collection('elwork/z5m28.optj.sgm.xml')//AL[exists(XIFORM/following-sibling::text())]),
count(//XIFORM),
distinct-values(collection('elwork/z5m28.optj.sgm.xml')//XIFORM),
collection('elwork/z5m28.optj.sgm.xml')//XIFORM