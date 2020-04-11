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
    for $node_SDR_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#SDR"]
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:about)
    where fn:exists($node_SDR_0)
    return
      <xqllib:result>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_SDR_0 in $node_Var0/RFDevice:hasCapability
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:resource)
    where fn:exists($value_SDR_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FixedBandwidthSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_InformationEntity_0) and fn:exists($node_Var0) and $node_InformationEntity_0/Nuvio:expresses/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/sf#Geometry"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/Nuvio:hasProcessQuantity
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Circle_0 in $node_Var0/Nuvio:relevantIndividual
    let $value_Circle_0 := fn:data($node_Circle_0/@rdf:resource)
    where fn:exists($value_Circle_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Circle_0">{$value_Circle_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_System_0 in $doc_ObjectDescription
    let $value_System_0 := fn:data($node_System_0/@rdf:about)
    for $node_Var0 in $node_System_0/Nuvio:relevantIndividual
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_System_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="System_0">{$value_System_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_System_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#System"]
    let $value_System_0 := fn:data($node_System_0/@rdf:about)
    where fn:exists($node_System_0)
    return
      <xqllib:result>
        <xqllib:var name="System_0">{$value_System_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Satellite_0 in $doc_ObjectDescription
    let $value_Satellite_0 := fn:data($node_Satellite_0/@rdf:about)
    for $node_System_0 in $node_Satellite_0/RFDevice:isDeployedOn
    let $value_System_0 := fn:data($node_System_0/@rdf:resource)
    where fn:exists($node_Satellite_0) and fn:exists($value_System_0)
    return
      <xqllib:result>
        <xqllib:var name="Satellite_0">{$value_Satellite_0}</xqllib:var>
        <xqllib:var name="System_0">{$value_System_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Moving_0 in $doc_ObjectDescription
    let $value_Moving_0 := fn:data($node_Moving_0/@rdf:about)
    for $node_Satellite_0 in $node_Moving_0/RFDevice:hasCapability
    let $value_Satellite_0 := fn:data($node_Satellite_0/@rdf:resource)
    where fn:exists($node_Moving_0) and fn:exists($value_Satellite_0)
    return
      <xqllib:result>
        <xqllib:var name="Moving_0">{$value_Moving_0}</xqllib:var>
        <xqllib:var name="Satellite_0">{$value_Satellite_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Satellite_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_8,$GRAPH_11,("System_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_7,$GRAPH_12,("System_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_6,$GRAPH_13,("Var0"))
  let $GRAPH_15 :=  
    for $node_Circle_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#Circle"]
    let $value_Circle_0 := fn:data($node_Circle_0/@rdf:about)
    where fn:exists($node_Circle_0)
    return
      <xqllib:result>
        <xqllib:var name="Circle_0">{$value_Circle_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := xqllib:and($GRAPH_14,$GRAPH_15,("Circle_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_5,$GRAPH_16,("Var0"))
  let $GRAPH_18 := xqllib:and($GRAPH_4,$GRAPH_17,("Var0"))
  let $GRAPH_19 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PositiveDecimalValue"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectricCharge"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_21 := xqllib:and($GRAPH_19,$GRAPH_20,("Var0"))
  let $GRAPH_22 := xqllib:and($GRAPH_18,$GRAPH_21,("Var0"))
  let $GRAPH_23 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_USRPN2xx_0 in $node_InformationEntity_0/Nuvio:isExpressedBy
    let $value_USRPN2xx_0 := fn:data($node_USRPN2xx_0/@rdf:resource)
    where fn:exists($node_InformationEntity_0) and fn:exists($value_USRPN2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="USRPN2xx_0">{$value_USRPN2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 := xqllib:and($GRAPH_22,$GRAPH_23,())
  let $GRAPH_25 := xqllib:and($GRAPH_3,$GRAPH_24,("InformationEntity_0","Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_2,$GRAPH_25,("Var0"))
  let $GRAPH_27 := xqllib:and($GRAPH_1,$GRAPH_26,("Var0"))
  let $GRAPH_28 := xqllib:optional($GRAPH_0,$GRAPH_27,("SDR_0"))
  return
    $GRAPH_28
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SDR_0"))),("SDR_0"))
