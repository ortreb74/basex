doc("baseCoOut/basecoperformance_fiscale.xml")//vide/ancestor::pNonNum,
doc("baseCoOut/basecoperformance_fiscale-d.xml")//peu-parentCible/ancestor::pNonNum,
count(collection("baseCoIn")//pNonNum/misesajour),
count(collection("baseCoIn")//pNonNum[@id="TCB1806-493173"]),
count(collection("baseCoIn")//pNonNum[@id!="TCB1806-493173"]),
collection("baseCoOut")//pNonNum[@id="TCB1806-493173"]