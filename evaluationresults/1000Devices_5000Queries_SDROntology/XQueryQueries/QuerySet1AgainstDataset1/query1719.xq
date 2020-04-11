import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_GNURadio_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#GNURadio"]
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:about)
    where fn:exists($node_GNURadio_0)
    return
      <xqllib:result>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Receiver_0 in $doc_ObjectDescription
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:about)
    for $node_GNURadio_0 in $node_Receiver_0/Nuvio:partOf
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:resource)
    where fn:exists($value_GNURadio_0) and fn:exists($node_Receiver_0)
    return
      <xqllib:result>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
        <xqllib:var name="Receiver_0">{$value_Receiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_PhasedArrayAntenna_0 in $doc_ObjectDescription
    let $value_PhasedArrayAntenna_0 := fn:data($node_PhasedArrayAntenna_0/@rdf:about)
    for $node_Receiver_0 in $node_PhasedArrayAntenna_0/Nuvio:partOf
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:resource)
    where fn:exists($node_PhasedArrayAntenna_0) and fn:exists($value_Receiver_0)
    return
      <xqllib:result>
        <xqllib:var name="PhasedArrayAntenna_0">{$value_PhasedArrayAntenna_0}</xqllib:var>
        <xqllib:var name="Receiver_0">{$value_Receiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_PhasedArrayAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PhasedArrayAntenna"]
    let $value_PhasedArrayAntenna_0 := fn:data($node_PhasedArrayAntenna_0/@rdf:about)
    where fn:exists($node_PhasedArrayAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="PhasedArrayAntenna_0">{$value_PhasedArrayAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Producer_0 in $doc_ObjectDescription
    let $value_Producer_0 := fn:data($node_Producer_0/@rdf:about)
    for $node_PhasedArrayAntenna_0 in $node_Producer_0/RFDevice:isProducerOf
    let $value_PhasedArrayAntenna_0 := fn:data($node_PhasedArrayAntenna_0/@rdf:resource)
    where fn:exists($value_PhasedArrayAntenna_0) and fn:exists($node_Producer_0)
    return
      <xqllib:result>
        <xqllib:var name="PhasedArrayAntenna_0">{$value_PhasedArrayAntenna_0}</xqllib:var>
        <xqllib:var name="Producer_0">{$value_Producer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("PhasedArrayAntenna_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("PhasedArrayAntenna_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Receiver_0"))
  let $GRAPH_8 := xqllib:optional($GRAPH_0,$GRAPH_7,("GNURadio_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("GNURadio_0"))),("GNURadio_0"))
