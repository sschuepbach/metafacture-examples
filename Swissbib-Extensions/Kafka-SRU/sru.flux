"localhost:9092"|
read-kafka(topics="swissbib")|
decode-xml|
handle-marcxml-sru|
morph(FLUX_DIR + "resourceMorph.xml")|
stream-to-triples(redirect="true")|
template("\"${s}\",\"${p}\",\"${o}\"")|
write-csv(path=FLUX_DIR, linesPerFile="1000000", continuousFile="true", filetype="csv", filenamePrefix="sb");
