import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription50.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
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
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPB200_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_USRPB200_0 := fn:data($node_USRPB200_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPB200_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPB200_0">{$value_USRPB200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#VelocityUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DecimalValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Weight"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := ($GRAPH_5,$GRAPH_6)
  let $GRAPH_8 := xqllib:and($GRAPH_3,$GRAPH_7,("Entity_0"))
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_CortexA9_0 in $node_Entity_0/Nuvio:relevantIndividual
    let $value_CortexA9_0 := fn:data($node_CortexA9_0/@rdf:resource)
    where fn:exists($value_CortexA9_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="CortexA9_0">{$value_CortexA9_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_DirectionalAntenna_0 in $doc_ObjectDescription
    let $value_DirectionalAntenna_0 := fn:data($node_DirectionalAntenna_0/@rdf:about)
    for $node_CortexA9_0 in $node_DirectionalAntenna_0/Nuvio:partOf
    let $value_CortexA9_0 := fn:data($node_CortexA9_0/@rdf:resource)
    where fn:exists($value_CortexA9_0) and fn:exists($node_DirectionalAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="CortexA9_0">{$value_CortexA9_0}</xqllib:var>
        <xqllib:var name="DirectionalAntenna_0">{$value_DirectionalAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Modulator_0 in $doc_ObjectDescription
    let $value_Modulator_0 := fn:data($node_Modulator_0/@rdf:about)
    for $node_DirectionalAntenna_0 in $node_Modulator_0/Nuvio:compositeOf
    let $value_DirectionalAntenna_0 := fn:data($node_DirectionalAntenna_0/@rdf:resource)
    where fn:exists($value_DirectionalAntenna_0) and fn:exists($node_Modulator_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectionalAntenna_0">{$value_DirectionalAntenna_0}</xqllib:var>
        <xqllib:var name="Modulator_0">{$value_Modulator_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_Modulator_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Modulator"]
    let $value_Modulator_0 := fn:data($node_Modulator_0/@rdf:about)
    where fn:exists($node_Modulator_0)
    return
      <xqllib:result>
        <xqllib:var name="Modulator_0">{$value_Modulator_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("Modulator_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_12,$GRAPH_15,("DirectionalAntenna_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_11,$GRAPH_16,("CortexA9_0"))
  let $GRAPH_18 := ($GRAPH_10,$GRAPH_17)
  let $GRAPH_19 := xqllib:and($GRAPH_8,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 := xqllib:optional($GRAPH_2,$GRAPH_19,("Entity_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_1,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 := xqllib:optional($GRAPH_0,$GRAPH_21,("USRPB200_0"))
  return
    $GRAPH_22
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200_0"))),("USRPB200_0"))
