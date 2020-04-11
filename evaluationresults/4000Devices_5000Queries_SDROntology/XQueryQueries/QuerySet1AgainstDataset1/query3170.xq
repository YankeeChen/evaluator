import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE3xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE3xx"]
    let $value_USRPE3xx_0 := fn:data($node_USRPE3xx_0/@rdf:about)
    where fn:exists($node_USRPE3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE3xx_0">{$value_USRPE3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Processor_0 in $doc_ObjectDescription
    let $value_Processor_0 := fn:data($node_Processor_0/@rdf:about)
    for $node_USRPE3xx_0 in $node_Processor_0/Nuvio:partOf
    let $value_USRPE3xx_0 := fn:data($node_USRPE3xx_0/@rdf:resource)
    where fn:exists($node_Processor_0) and fn:exists($value_USRPE3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="Processor_0">{$value_Processor_0}</xqllib:var>
        <xqllib:var name="USRPE3xx_0">{$value_USRPE3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Processor_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Processor"]
    let $value_Processor_0 := fn:data($node_Processor_0/@rdf:about)
    where fn:exists($node_Processor_0)
    return
      <xqllib:result>
        <xqllib:var name="Processor_0">{$value_Processor_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    for $node_Processor_0 in $node_RadarJammer_0/Nuvio:partOf
    let $value_Processor_0 := fn:data($node_Processor_0/@rdf:resource)
    where fn:exists($value_Processor_0) and fn:exists($node_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="Processor_0">{$value_Processor_0}</xqllib:var>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarJammer"]
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    where fn:exists($node_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Spartan3ADSPFPGA_0 in $doc_ObjectDescription
    let $value_Spartan3ADSPFPGA_0 := fn:data($node_Spartan3ADSPFPGA_0/@rdf:about)
    for $node_RadarJammer_0 in $node_Spartan3ADSPFPGA_0/Nuvio:compositeOf
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:resource)
    where fn:exists($value_RadarJammer_0) and fn:exists($node_Spartan3ADSPFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
        <xqllib:var name="Spartan3ADSPFPGA_0">{$value_Spartan3ADSPFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Spartan3ADSPFPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#Spartan3ADSPFPGA"]
    let $value_Spartan3ADSPFPGA_0 := fn:data($node_Spartan3ADSPFPGA_0/@rdf:about)
    where fn:exists($node_Spartan3ADSPFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Spartan3ADSPFPGA_0">{$value_Spartan3ADSPFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Spartan3ADSPFPGA_0 in $node_Var0/RFDevice:isProducerOf
    let $value_Spartan3ADSPFPGA_0 := fn:data($node_Spartan3ADSPFPGA_0/@rdf:resource)
    where fn:exists($value_Spartan3ADSPFPGA_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Spartan3ADSPFPGA_0">{$value_Spartan3ADSPFPGA_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Spartan3ADSPFPGA_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("Spartan3ADSPFPGA_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_4,$GRAPH_9,("RadarJammer_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_3,$GRAPH_10,("RadarJammer_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_2,$GRAPH_11,("Processor_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_1,$GRAPH_12,("Processor_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_0,$GRAPH_13,("USRPE3xx_0"))
  return
    $GRAPH_14
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE3xx_0"))),("USRPE3xx_0"))
