import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RadarWarningReceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarWarningReceiver"]
    let $value_RadarWarningReceiver_0 := fn:data($node_RadarWarningReceiver_0/@rdf:about)
    where fn:exists($node_RadarWarningReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarWarningReceiver_0">{$value_RadarWarningReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadarWarningReceiver_0 in $doc_ObjectDescription
    let $value_RadarWarningReceiver_0 := fn:data($node_RadarWarningReceiver_0/@rdf:about)
    for $node_Transmitter_0 in $node_RadarWarningReceiver_0/Nuvio:compositeOf
    let $value_Transmitter_0 := fn:data($node_Transmitter_0/@rdf:resource)
    where fn:exists($node_RadarWarningReceiver_0) and fn:exists($value_Transmitter_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarWarningReceiver_0">{$value_RadarWarningReceiver_0}</xqllib:var>
        <xqllib:var name="Transmitter_0">{$value_Transmitter_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Transmitter_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transmitter"]
    let $value_Transmitter_0 := fn:data($node_Transmitter_0/@rdf:about)
    where fn:exists($node_Transmitter_0)
    return
      <xqllib:result>
        <xqllib:var name="Transmitter_0">{$value_Transmitter_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 := xqllib:and($GRAPH_1,$GRAPH_2,("Transmitter_0"))
  let $GRAPH_4 := xqllib:and($GRAPH_0,$GRAPH_3,("RadarWarningReceiver_0"))
  return
    $GRAPH_4
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarWarningReceiver_0"))),("RadarWarningReceiver_0"))
