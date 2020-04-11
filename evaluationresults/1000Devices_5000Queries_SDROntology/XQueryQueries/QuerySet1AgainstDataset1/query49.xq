import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_CommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CommunicationsSystem"]
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:about)
    where fn:exists($node_CommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_CommunicationsSystem_0 in $doc_ObjectDescription
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:about)
    for $node_Receiver_0 in $node_CommunicationsSystem_0/Nuvio:partOf
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:resource)
    where fn:exists($node_CommunicationsSystem_0) and fn:exists($value_Receiver_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Receiver_0">{$value_Receiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Receiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiver"]
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:about)
    where fn:exists($node_Receiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Receiver_0">{$value_Receiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_XC3SD1800AFPGA_0 in $doc_ObjectDescription
    let $value_XC3SD1800AFPGA_0 := fn:data($node_XC3SD1800AFPGA_0/@rdf:about)
    for $node_Receiver_0 in $node_XC3SD1800AFPGA_0/Nuvio:compositeOf
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:resource)
    where fn:exists($value_Receiver_0) and fn:exists($node_XC3SD1800AFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Receiver_0">{$value_Receiver_0}</xqllib:var>
        <xqllib:var name="XC3SD1800AFPGA_0">{$value_XC3SD1800AFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_XC3SD1800AFPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC3SD1800AFPGA"]
    let $value_XC3SD1800AFPGA_0 := fn:data($node_XC3SD1800AFPGA_0/@rdf:about)
    where fn:exists($node_XC3SD1800AFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC3SD1800AFPGA_0">{$value_XC3SD1800AFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_XC3SD1800AFPGA_0 in $doc_ObjectDescription
    let $value_XC3SD1800AFPGA_0 := fn:data($node_XC3SD1800AFPGA_0/@rdf:about)
    for $node_Var0 in $node_XC3SD1800AFPGA_0/RFDevice:hasProducer
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_XC3SD1800AFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="XC3SD1800AFPGA_0">{$value_XC3SD1800AFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("XC3SD1800AFPGA_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("XC3SD1800AFPGA_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Receiver_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Receiver_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("CommunicationsSystem_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CommunicationsSystem_0"))),("CommunicationsSystem_0"))
