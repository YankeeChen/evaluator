import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_PulseDopplerRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseDopplerRadar"]
    let $value_PulseDopplerRadar_0 := fn:data($node_PulseDopplerRadar_0/@rdf:about)
    where fn:exists($node_PulseDopplerRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadar_0">{$value_PulseDopplerRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_PulseDopplerRadar_0 in $doc_ObjectDescription
    let $value_PulseDopplerRadar_0 := fn:data($node_PulseDopplerRadar_0/@rdf:about)
    for $node_Entity_0 in $node_PulseDopplerRadar_0/RFDevice:supportsSpectrumSensing
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_PulseDopplerRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="PulseDopplerRadar_0">{$value_PulseDopplerRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationContent_0 in $node_Entity_0/Nuvio:expresses
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_InformationContent_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Height"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0) and $doc_ObjectDescription[@rdf:ID = "AntennaPolarization_instance19"]/Nuvio:hasProcessQuality/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Var0) and $node_Var0/Nuvio:informationSource/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SweptSpotJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Var0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 :=  
    for $node_InformationContent_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationContent"]
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:about)
    where fn:exists($node_InformationContent_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:optional($GRAPH_9,$GRAPH_10,())
  let $GRAPH_12 := xqllib:and($GRAPH_2,$GRAPH_11,("Entity_0","InformationContent_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_1,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_0,$GRAPH_13,("PulseDopplerRadar_0"))
  return
    $GRAPH_14
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseDopplerRadar_0"))),("PulseDopplerRadar_0"))
