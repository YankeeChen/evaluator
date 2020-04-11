import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace sf = "http://www.opengis.net/ont/sf#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200"]
    let $value_USRPB200_0 := fn:data($node_USRPB200_0/@rdf:about)
    where fn:exists($node_USRPB200_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200_0">{$value_USRPB200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPB200_0 in $doc_ObjectDescription
    let $value_USRPB200_0 := fn:data($node_USRPB200_0/@rdf:about)
    for $node_RadioComponent_0 in $node_USRPB200_0/Nuvio:aggregateOf
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:resource)
    where fn:exists($value_RadioComponent_0) and fn:exists($node_USRPB200_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
        <xqllib:var name="USRPB200_0">{$value_USRPB200_0}</xqllib:var>
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
    for $node_OmnidirectionalAntenna_0 in $doc_ObjectDescription
    let $value_OmnidirectionalAntenna_0 := fn:data($node_OmnidirectionalAntenna_0/@rdf:about)
    for $node_RadioComponent_0 in $node_OmnidirectionalAntenna_0/Nuvio:partOf
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:resource)
    where fn:exists($node_OmnidirectionalAntenna_0) and fn:exists($value_RadioComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="OmnidirectionalAntenna_0">{$value_OmnidirectionalAntenna_0}</xqllib:var>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_OmnidirectionalAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#OmnidirectionalAntenna"]
    let $value_OmnidirectionalAntenna_0 := fn:data($node_OmnidirectionalAntenna_0/@rdf:about)
    where fn:exists($node_OmnidirectionalAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="OmnidirectionalAntenna_0">{$value_OmnidirectionalAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_OmnidirectionalAntenna_0 in $doc_ObjectDescription
    let $value_OmnidirectionalAntenna_0 := fn:data($node_OmnidirectionalAntenna_0/@rdf:about)
    for $node_Entity_0 in $node_OmnidirectionalAntenna_0/RFDevice:hasSamplingRate
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_OmnidirectionalAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="OmnidirectionalAntenna_0">{$value_OmnidirectionalAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarJamming"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Circle_0 in $node_Entity_0/Nuvio:expresses
    let $value_Circle_0 := fn:data($node_Circle_0/@rdf:resource)
    where fn:exists($value_Circle_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Circle_0">{$value_Circle_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Circle_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#Circle"]
    let $value_Circle_0 := fn:data($node_Circle_0/@rdf:about)
    where fn:exists($node_Circle_0)
    return
      <xqllib:result>
        <xqllib:var name="Circle_0">{$value_Circle_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:optional($GRAPH_8,$GRAPH_9,("Circle_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_7,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Line_0 in $doc_ObjectDescription
    let $value_Line_0 := fn:data($node_Line_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Line_0) and $node_Line_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Line_0">{$value_Line_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Line_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/sf#Line"]
    let $value_Line_0 := fn:data($node_Line_0/@rdf:about)
    where fn:exists($node_Line_0)
    return
      <xqllib:result>
        <xqllib:var name="Line_0">{$value_Line_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("Line_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_11,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_6,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_5,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 :=  
    for $node_Angle_0 in $doc_ObjectDescription
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    for $node_OmnidirectionalAntenna_0 in $node_Angle_0/RFDevice:hasLevel
    let $value_OmnidirectionalAntenna_0 := fn:data($node_OmnidirectionalAntenna_0/@rdf:resource)
    where fn:exists($node_Angle_0) and fn:exists($value_OmnidirectionalAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
        <xqllib:var name="OmnidirectionalAntenna_0">{$value_OmnidirectionalAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := xqllib:and($GRAPH_17,$GRAPH_18,("OmnidirectionalAntenna_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_4,$GRAPH_19,("OmnidirectionalAntenna_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_3,$GRAPH_20,("OmnidirectionalAntenna_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_2,$GRAPH_21,("RadioComponent_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_1,$GRAPH_22,("RadioComponent_0"))
  let $GRAPH_24 := xqllib:and($GRAPH_0,$GRAPH_23,("USRPB200_0"))
  return
    $GRAPH_24
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200_0"))),("USRPB200_0"))
