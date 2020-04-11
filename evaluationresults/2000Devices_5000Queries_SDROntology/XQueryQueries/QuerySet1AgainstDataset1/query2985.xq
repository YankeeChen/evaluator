import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN200_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN200"]
    let $value_USRPN200_0 := fn:data($node_USRPN200_0/@rdf:about)
    where fn:exists($node_USRPN200_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN200_0">{$value_USRPN200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPN200_0 in $doc_ObjectDescription
    let $value_USRPN200_0 := fn:data($node_USRPN200_0/@rdf:about)
    for $node_Entity_0 in $node_USRPN200_0/Nuvio:partOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_USRPN200_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPN200_0">{$value_USRPN200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationRepresentation_0 in $node_Entity_0/Nuvio:isExpressedBy
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_InformationRepresentation_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TrackingRadar"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Weight"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
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
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Entity_0"))
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_InformationRepresentation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationRepresentation"]
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    where fn:exists($node_InformationEntity_0) and fn:exists($node_InformationRepresentation_0) and $node_InformationEntity_0/Nuvio:representedBy/@rdf:resource = $value_InformationRepresentation_0
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("InformationRepresentation_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_1,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:optional($GRAPH_0,$GRAPH_13,("USRPN200_0"))
  return
    $GRAPH_14
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN200_0"))),("USRPN200_0"))
