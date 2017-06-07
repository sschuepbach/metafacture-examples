"https://www.swissbib.ch/mapportal.json"|
open-http(encoding="UTF-8")|
//FLUX_DIR + "mapportal.json"|
//FLUX_DIR + "test.json"|
read-json-object|
decode-json|
morph(FLUX_DIR + "libadminMorph.xml")|
split-entities|
change-id|
encode-ntriples|
write(FLUX_DIR + "output.nt", separator="");
