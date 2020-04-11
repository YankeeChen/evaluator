import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SearchRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SearchRadar"]
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:about)
    where fn:exists($node_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_SearchRadar_0 in $doc_ObjectDescription
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:about)
    for $node_PulseDopplerRadarModulation_0 in $node_SearchRadar_0/RFDevice:supportsJamming
    let $value_PulseDopplerRadarModulation_0 := fn:data($node_PulseDopplerRadarModulation_0/@rdf:resource)
    where fn:exists($value_PulseDopplerRadarModulation_0) and fn:exists($node_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadarModulation_0">{$value_PulseDopplerRadarModulation_0}</xqllib:var>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_PulseDopplerRadarModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseDopplerRadarModulation"]
    let $value_PulseDopplerRadarModulation_0 := fn:data($node_PulseDopplerRadarModulation_0/@rdf:about)
    where fn:exists($node_PulseDopplerRadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadarModulation_0">{$value_PulseDopplerRadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_PulseDopplerRadarModulation_0 in $node_Attribute_0/RFDevice:hasEffectiveRadiatedPower
    let $value_PulseDopplerRadarModulation_0 := fn:data($node_PulseDopplerRadarModulation_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_PulseDopplerRadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="PulseDopplerRadarModulation_0">{$value_PulseDopplerRadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Attribute_0"))
  let $GRAPH_6 := xqllib:optional($GRAPH_2,$GRAPH_5,("PulseDopplerRadarModulation_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("PulseDopplerRadarModulation_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("SearchRadar_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SearchRadar_0"))),("SearchRadar_0"))
