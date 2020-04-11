import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
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
    for $node_Receiving_0 in $doc_ObjectDescription
    let $value_Receiving_0 := fn:data($node_Receiving_0/@rdf:about)
    for $node_CommunicationsSystem_0 in $node_Receiving_0/RFDevice:supportsJamming
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_CommunicationsSystem_0) and fn:exists($node_Receiving_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Receiving_0">{$value_Receiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Receiving_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiving"]
    let $value_Receiving_0 := fn:data($node_Receiving_0/@rdf:about)
    where fn:exists($node_Receiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Receiving_0">{$value_Receiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RadarFrequencyBand_0 in $doc_ObjectDescription
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:about)
    for $node_Receiving_0 in $node_RadarFrequencyBand_0/RFDevice:hasBandwidthRange
    let $value_Receiving_0 := fn:data($node_Receiving_0/@rdf:resource)
    where fn:exists($node_RadarFrequencyBand_0) and fn:exists($value_Receiving_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
        <xqllib:var name="Receiving_0">{$value_Receiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_RadarFrequencyBand_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarFrequencyBand"]
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:about)
    where fn:exists($node_RadarFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Frequency_0 in $doc_ObjectDescription
    let $value_Frequency_0 := fn:data($node_Frequency_0/@rdf:about)
    for $node_RadarFrequencyBand_0 in $node_Frequency_0/RFDevice:hasMax
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:resource)
    where fn:exists($node_Frequency_0) and fn:exists($value_RadarFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="Frequency_0">{$value_Frequency_0}</xqllib:var>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Frequency_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Frequency"]
    let $value_Frequency_0 := fn:data($node_Frequency_0/@rdf:about)
    where fn:exists($node_Frequency_0)
    return
      <xqllib:result>
        <xqllib:var name="Frequency_0">{$value_Frequency_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Frequency_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("RadarFrequencyBand_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("RadarFrequencyBand_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("Receiving_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Receiving_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("CommunicationsSystem_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CommunicationsSystem_0"))),("CommunicationsSystem_0"))
