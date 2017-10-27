count(collection('ant/build.xml')//target),
count(collection('ant/build.xml')//target[java]),
count(collection('ant/build.xml')//parallel),
collection('ant/build.xml')//target[@name=/project/@default]