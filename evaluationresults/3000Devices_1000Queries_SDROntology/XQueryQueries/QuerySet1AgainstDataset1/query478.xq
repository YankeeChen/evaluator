import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ElectronicAttackSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicAttackSystem"]
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:about)
    where fn:exists($node_ElectronicAttackSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_ElectronicAttackSystem_0 in $node_Entity_0/Nuvio:partOf
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:resource)
    where fn:exists($value_ElectronicAttackSystem_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_InformationEntity_0) and $node_InformationEntity_0/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#LatitudeValueInDegree"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPN210_0 in $doc_ObjectDescription
    let $value_USRPN210_0 := fn:data($node_USRPN210_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_USRPN210_0) and $node_USRPN210_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPN210_0">{$value_USRPN210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_USRPN210_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN210"]
    let $value_USRPN210_0 := fn:data($node_USRPN210_0/@rdf:about)
    where fn:exists($node_USRPN210_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN210_0">{$value_USRPN210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Satellite_0 in $doc_ObjectDescription
    let $value_Satellite_0 := fn:data($node_Satellite_0/@rdf:about)
    for $node_USRPN210_0 in $node_Satellite_0/RFDevice:isDeployedOn
    let $value_USRPN210_0 := fn:data($node_USRPN210_0/@rdf:resource)
    where fn:exists($node_Satellite_0) and fn:exists($value_USRPN210_0)
    return
      <xqllib:result>
        <xqllib:var name="Satellite_0">{$value_Satellite_0}</xqllib:var>
        <xqllib:var name="USRPN210_0">{$value_USRPN210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Satellite_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Satellite"]
    let $value_Satellite_0 := fn:data($node_Satellite_0/@rdf:about)
    where fn:exists($node_Satellite_0)
    return
      <xqllib:result>
        <xqllib:var name="Satellite_0">{$value_Satellite_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("Satellite_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_7,$GRAPH_10,("USRPN210_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_6,$GRAPH_11,("USRPN210_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_5,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := ($GRAPH_4,$GRAPH_13)
  let $GRAPH_15 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    where fn:exists($node_InformationEntity_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := ($GRAPH_14,$GRAPH_15)
  let $GRAPH_17 := xqllib:and($GRAPH_1,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:optional($GRAPH_0,$GRAPH_17,("ElectronicAttackSystem_0"))
  return
    $GRAPH_18
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicAttackSystem_0"))),("ElectronicAttackSystem_0"))
