import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
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
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_RadarWarningReceiver_0 in $node_Object_0/RFDevice:hasProducer
    let $value_RadarWarningReceiver_0 := fn:data($node_RadarWarningReceiver_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_RadarWarningReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="RadarWarningReceiver_0">{$value_RadarWarningReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_DeceptiveJamming_0 in $doc_ObjectDescription
    let $value_DeceptiveJamming_0 := fn:data($node_DeceptiveJamming_0/@rdf:about)
    for $node_Object_0 in $node_DeceptiveJamming_0/Nuvio:hasParticipant
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($node_DeceptiveJamming_0) and fn:exists($value_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveJamming_0">{$value_DeceptiveJamming_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_DeceptiveJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DeceptiveJamming"]
    let $value_DeceptiveJamming_0 := fn:data($node_DeceptiveJamming_0/@rdf:about)
    where fn:exists($node_DeceptiveJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveJamming_0">{$value_DeceptiveJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_DeceptiveJamming_0 in $node_Power_0/RFDevice:hasPulseWidth
    let $value_DeceptiveJamming_0 := fn:data($node_DeceptiveJamming_0/@rdf:resource)
    where fn:exists($value_DeceptiveJamming_0) and fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveJamming_0">{$value_DeceptiveJamming_0}</xqllib:var>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("DeceptiveJamming_0"))
  let $GRAPH_6 := xqllib:optional($GRAPH_2,$GRAPH_5,("DeceptiveJamming_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Object_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("RadarWarningReceiver_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarWarningReceiver_0"))),("RadarWarningReceiver_0"))
