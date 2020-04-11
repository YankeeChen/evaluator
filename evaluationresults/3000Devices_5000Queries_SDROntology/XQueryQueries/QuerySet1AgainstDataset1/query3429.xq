import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_CR_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#CR"]
    let $value_CR_0 := fn:data($node_CR_0/@rdf:about)
    where fn:exists($node_CR_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_CR_0 in $doc_ObjectDescription
    let $value_CR_0 := fn:data($node_CR_0/@rdf:about)
    for $node_Entity_0 in $node_CR_0/RFDevice:isProducerOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_CR_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Mixer"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Series7FPGA_0 in $doc_ObjectDescription
    let $value_Series7FPGA_0 := fn:data($node_Series7FPGA_0/@rdf:about)
    for $node_Entity_0 in $node_Series7FPGA_0/Nuvio:aggregateOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Series7FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Series7FPGA_0">{$value_Series7FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Series7FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#Series7FPGA"]
    let $value_Series7FPGA_0 := fn:data($node_Series7FPGA_0/@rdf:about)
    where fn:exists($node_Series7FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Series7FPGA_0">{$value_Series7FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_XC3SD1800AFPGA_0 in $doc_ObjectDescription
    let $value_XC3SD1800AFPGA_0 := fn:data($node_XC3SD1800AFPGA_0/@rdf:about)
    for $node_Series7FPGA_0 in $node_XC3SD1800AFPGA_0/Nuvio:partOf
    let $value_Series7FPGA_0 := fn:data($node_Series7FPGA_0/@rdf:resource)
    where fn:exists($value_Series7FPGA_0) and fn:exists($node_XC3SD1800AFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Series7FPGA_0">{$value_Series7FPGA_0}</xqllib:var>
        <xqllib:var name="XC3SD1800AFPGA_0">{$value_XC3SD1800AFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_XC3SD1800AFPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC3SD1800AFPGA"]
    let $value_XC3SD1800AFPGA_0 := fn:data($node_XC3SD1800AFPGA_0/@rdf:about)
    where fn:exists($node_XC3SD1800AFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC3SD1800AFPGA_0">{$value_XC3SD1800AFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("XC3SD1800AFPGA_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("Series7FPGA_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_4,$GRAPH_9,("Series7FPGA_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_3,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyScanRateUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DoubleValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_11,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:optional($GRAPH_2,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_1,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_0,$GRAPH_17,("CR_0"))
  return
    $GRAPH_18
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CR_0"))),("CR_0"))
