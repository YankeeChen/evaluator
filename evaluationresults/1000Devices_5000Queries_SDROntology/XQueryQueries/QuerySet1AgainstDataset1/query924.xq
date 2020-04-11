import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_TrackingRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TrackingRadar"]
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:about)
    where fn:exists($node_TrackingRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Receiver_0 in $doc_ObjectDescription
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:about)
    for $node_TrackingRadar_0 in $node_Receiver_0/Nuvio:compositeOf
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:resource)
    where fn:exists($node_Receiver_0) and fn:exists($value_TrackingRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Receiver_0">{$value_Receiver_0}</xqllib:var>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Transceiver_0 in $doc_ObjectDescription
    let $value_Transceiver_0 := fn:data($node_Transceiver_0/@rdf:about)
    for $node_Receiver_0 in $node_Transceiver_0/Nuvio:partOf
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:resource)
    where fn:exists($value_Receiver_0) and fn:exists($node_Transceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Receiver_0">{$value_Receiver_0}</xqllib:var>
        <xqllib:var name="Transceiver_0">{$value_Transceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Transceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transceiver"]
    let $value_Transceiver_0 := fn:data($node_Transceiver_0/@rdf:about)
    where fn:exists($node_Transceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiver_0">{$value_Transceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("Transceiver_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("Receiver_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("TrackingRadar_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("TrackingRadar_0"))),("TrackingRadar_0"))
