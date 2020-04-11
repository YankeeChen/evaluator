import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RadarSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarSystem"]
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:about)
    where fn:exists($node_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Receiver_0 in $doc_ObjectDescription
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:about)
    for $node_RadarSystem_0 in $node_Receiver_0/Nuvio:compositeOf
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:resource)
    where fn:exists($value_RadarSystem_0) and fn:exists($node_Receiver_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
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
    for $node_FreqencyRange_0 in $doc_ObjectDescription
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:about)
    for $node_Receiver_0 in $node_FreqencyRange_0/RFDevice:hasFrequencyAccuracy
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:resource)
    where fn:exists($node_FreqencyRange_0) and fn:exists($value_Receiver_0)
    return
      <xqllib:result>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
        <xqllib:var name="Receiver_0">{$value_Receiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_FreqencyRange_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FreqencyRange"]
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:about)
    where fn:exists($node_FreqencyRange_0)
    return
      <xqllib:result>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Quantity_0 in $doc_ObjectDescription
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    for $node_FreqencyRange_0 in $node_Quantity_0/RFDevice:hasMax
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:resource)
    where fn:exists($value_FreqencyRange_0) and fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Quantity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Quantity"]
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    where fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Quantity_0"))
  let $GRAPH_8 := xqllib:optional($GRAPH_4,$GRAPH_7,("FreqencyRange_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("FreqencyRange_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("Receiver_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Receiver_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("RadarSystem_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarSystem_0"))),("RadarSystem_0"))
