import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SurveillanceRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SurveillanceRadar"]
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:about)
    where fn:exists($node_SurveillanceRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_SurveillanceRadar_0 in $doc_ObjectDescription
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:about)
    for $node_Var0 in $node_SurveillanceRadar_0/RFDevice:supportsTransmitting
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_SurveillanceRadar_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Value_0 in $doc_ObjectDescription
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    for $node_Var0 in $node_Value_0/Nuvio:expresses
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Value_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationRepresentation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_InformationEntity_0) and fn:exists($node_Var0) and $node_InformationEntity_0/Nuvio:represents/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Var1 in $node_InformationEntity_0/Nuvio:informationSource
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_InformationEntity_0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var1 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Instance5437"]/RFDevice:hasChargingTime
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Var1"))
  let $GRAPH_8 := ($GRAPH_4,$GRAPH_7)
  let $GRAPH_9 := xqllib:and($GRAPH_2,$GRAPH_8,("Var0"))
  let $GRAPH_10 := xqllib:and($GRAPH_1,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:optional($GRAPH_0,$GRAPH_10,("SurveillanceRadar_0"))
  return
    $GRAPH_11
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SurveillanceRadar_0"))),("SurveillanceRadar_0"))
