import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
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
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_ModelX_0 in $node_Entity_0/Nuvio:partOf
    let $value_ModelX_0 := fn:data($node_ModelX_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_ModelX_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="ModelX_0">{$value_ModelX_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Process_0) and $node_Process_0/Nuvio:expresses/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#USRPN310_instance7"]/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Entity_0"))
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:optional($GRAPH_6,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 :=  
    for $node_AutomaticGainControl_0 in $doc_ObjectDescription
    let $value_AutomaticGainControl_0 := fn:data($node_AutomaticGainControl_0/@rdf:about)
    for $node_Process_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    where fn:exists($node_AutomaticGainControl_0) and fn:exists($node_Process_0) and $node_AutomaticGainControl_0/Nuvio:subprocessOf/@rdf:resource = $value_Process_0
    return
      <xqllib:result>
        <xqllib:var name="AutomaticGainControl_0">{$value_AutomaticGainControl_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_AutomaticGainControl_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AutomaticGainControl"]
    let $value_AutomaticGainControl_0 := fn:data($node_AutomaticGainControl_0/@rdf:about)
    where fn:exists($node_AutomaticGainControl_0)
    return
      <xqllib:result>
        <xqllib:var name="AutomaticGainControl_0">{$value_AutomaticGainControl_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_AutomaticGainControl_0 in $doc_ObjectDescription
    let $value_AutomaticGainControl_0 := fn:data($node_AutomaticGainControl_0/@rdf:about)
    for $node_Power_0 in $node_AutomaticGainControl_0/RFDevice:hasEffectiveRadiatedPower
    let $value_Power_0 := fn:data($node_Power_0/@rdf:resource)
    where fn:exists($node_AutomaticGainControl_0) and fn:exists($value_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="AutomaticGainControl_0">{$value_AutomaticGainControl_0}</xqllib:var>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Power_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Power"]
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    where fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:and($GRAPH_11,$GRAPH_12,("Power_0"))
  let $GRAPH_14 := xqllib:optional($GRAPH_10,$GRAPH_13,("AutomaticGainControl_0"))
  let $GRAPH_15 := xqllib:optional($GRAPH_9,$GRAPH_14,("AutomaticGainControl_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_8,$GRAPH_15,())
  let $GRAPH_17 := ($GRAPH_3,$GRAPH_16)
  let $GRAPH_18 := xqllib:and($GRAPH_1,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_0,$GRAPH_18,("ModelX_0"))
  return
    $GRAPH_19
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ModelX_0"))),("ModelX_0"))
