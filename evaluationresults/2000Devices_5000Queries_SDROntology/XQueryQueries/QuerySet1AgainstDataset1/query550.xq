import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN300_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN300"]
    let $value_USRPN300_0 := fn:data($node_USRPN300_0/@rdf:about)
    where fn:exists($node_USRPN300_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN300_0">{$value_USRPN300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPN300_0 in $doc_ObjectDescription
    let $value_USRPN300_0 := fn:data($node_USRPN300_0/@rdf:about)
    for $node_Aircraft_0 in $node_USRPN300_0/RFDevice:isDeployedOn
    let $value_Aircraft_0 := fn:data($node_Aircraft_0/@rdf:resource)
    where fn:exists($value_Aircraft_0) and fn:exists($node_USRPN300_0)
    return
      <xqllib:result>
        <xqllib:var name="Aircraft_0">{$value_Aircraft_0}</xqllib:var>
        <xqllib:var name="USRPN300_0">{$value_USRPN300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Aircraft_0 in $node_Entity_0/RFDevice:supportsTuning
    let $value_Aircraft_0 := fn:data($node_Aircraft_0/@rdf:resource)
    where fn:exists($value_Aircraft_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Aircraft_0">{$value_Aircraft_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationRepresentation_0 in $doc_ObjectDescription
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_InformationRepresentation_0) and $node_InformationRepresentation_0/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AnalogModulation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Frequency"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Entity_0 in $node_Var0/Nuvio:hasValue
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:optional($GRAPH_6,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 := ($GRAPH_5,$GRAPH_8)
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 :=  
    for $node_MultiSurface_0 in $doc_ObjectDescription
    let $value_MultiSurface_0 := fn:data($node_MultiSurface_0/@rdf:about)
    for $node_Entity_0 in $node_MultiSurface_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_MultiSurface_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="MultiSurface_0">{$value_MultiSurface_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:and($GRAPH_11,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:optional($GRAPH_3,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_2,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_1,$GRAPH_15,("Aircraft_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_0,$GRAPH_16,("USRPN300_0"))
  return
    $GRAPH_17
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN300_0"))),("USRPN300_0"))
