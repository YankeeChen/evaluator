import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ModelX_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ModelX"]
    let $value_ModelX_0 := fn:data($node_ModelX_0/@rdf:about)
    where fn:exists($node_ModelX_0)
    return
      <xqllib:result>
        <xqllib:var name="ModelX_0">{$value_ModelX_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_ModelX_0 in $doc_ObjectDescription
    let $value_ModelX_0 := fn:data($node_ModelX_0/@rdf:about)
    for $node_Entity_0 in $node_ModelX_0/RFDevice:isProducerOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_ModelX_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="ModelX_0">{$value_ModelX_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_InformationRepresentation_0 in $doc_ObjectDescription
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    for $node_Entity_0 in $node_InformationRepresentation_0/Nuvio:isExpressedBy
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_InformationRepresentation_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BistaticRadar"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_RadioComponent_0 in $doc_ObjectDescription
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:about)
    for $node_Entity_0 in $node_RadioComponent_0/Nuvio:aggregateOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_RadioComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_RadioComponent_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioComponent"]
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:about)
    where fn:exists($node_RadioComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_RadioComponent_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription3000.owl#Oscillator_instance32"]/Nuvio:partOf
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:resource)
    where fn:exists($value_RadioComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("RadioComponent_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("RadioComponent_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FixedBandwidthSensing"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Power"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/Nuvio:hasValue
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0) and $doc_ObjectDescription[@rdf:ID = "Meter"]/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := xqllib:optional($GRAPH_14,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_11,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_2,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationRepresentation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationRepresentation"]
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_InformationRepresentation_0) and $node_Entity_0/Nuvio:represents/@rdf:resource = $value_InformationRepresentation_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 := xqllib:and($GRAPH_18,$GRAPH_19,("Entity_0","InformationRepresentation_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_1,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_0,$GRAPH_21,("ModelX_0"))
  return
    $GRAPH_22
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ModelX_0"))),("ModelX_0"))
