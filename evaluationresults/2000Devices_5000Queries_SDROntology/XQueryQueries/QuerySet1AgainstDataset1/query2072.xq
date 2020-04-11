import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_PulseRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseRadar"]
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:about)
    where fn:exists($node_PulseRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_IEDJammer_0 in $doc_ObjectDescription
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:about)
    for $node_PulseRadar_0 in $node_IEDJammer_0/Nuvio:aggregateOf
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:resource)
    where fn:exists($node_IEDJammer_0) and fn:exists($value_PulseRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_InverseGainJamming_0 in $doc_ObjectDescription
    let $value_InverseGainJamming_0 := fn:data($node_InverseGainJamming_0/@rdf:about)
    for $node_IEDJammer_0 in $node_InverseGainJamming_0/RFDevice:supportsJamming
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:resource)
    where fn:exists($value_IEDJammer_0) and fn:exists($node_InverseGainJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
        <xqllib:var name="InverseGainJamming_0">{$value_InverseGainJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_InverseGainJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InverseGainJamming"]
    let $value_InverseGainJamming_0 := fn:data($node_InverseGainJamming_0/@rdf:about)
    where fn:exists($node_InverseGainJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="InverseGainJamming_0">{$value_InverseGainJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Quantity_0 in $doc_ObjectDescription
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    for $node_InverseGainJamming_0 in $node_Quantity_0/RFDevice:hasPulseRepetitionFrequency
    let $value_InverseGainJamming_0 := fn:data($node_InverseGainJamming_0/@rdf:resource)
    where fn:exists($value_InverseGainJamming_0) and fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="InverseGainJamming_0">{$value_InverseGainJamming_0}</xqllib:var>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Quantity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Quantity"]
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    where fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Quantity_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("InverseGainJamming_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("InverseGainJamming_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("IEDJammer_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("PulseRadar_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseRadar_0"))),("PulseRadar_0"))
