import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
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
    for $node_RadioComponent_0 in $node_RadarWarningReceiver_0/Nuvio:partOf
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:resource)
    where fn:exists($node_RadarWarningReceiver_0) and fn:exists($value_RadioComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarWarningReceiver_0">{$value_RadarWarningReceiver_0}</xqllib:var>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_RadioComponent_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioComponent"]
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:about)
    where fn:exists($node_RadioComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_XilinxZynq7000Family_0 in $doc_ObjectDescription
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:about)
    for $node_RadioComponent_0 in $node_XilinxZynq7000Family_0/Nuvio:compositeOf
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:resource)
    where fn:exists($value_RadioComponent_0) and fn:exists($node_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_XilinxZynq7000Family_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XilinxZynq7000Family"]
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:about)
    where fn:exists($node_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_XilinxZynq7000Family_0 in $node_Object_0/RFDevice:hasProducer
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Object_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("XilinxZynq7000Family_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("XilinxZynq7000Family_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("RadioComponent_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("RadioComponent_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("RadarWarningReceiver_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarWarningReceiver_0"))),("RadarWarningReceiver_0"))
