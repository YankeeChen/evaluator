import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPX300_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPX300"]
    let $value_USRPX300_0 := fn:data($node_USRPX300_0/@rdf:about)
    where fn:exists($node_USRPX300_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX300_0">{$value_USRPX300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Aircraft_0 in $doc_ObjectDescription
    let $value_Aircraft_0 := fn:data($node_Aircraft_0/@rdf:about)
    for $node_USRPX300_0 in $node_Aircraft_0/RFDevice:isDeployedOn
    let $value_USRPX300_0 := fn:data($node_USRPX300_0/@rdf:resource)
    where fn:exists($node_Aircraft_0) and fn:exists($value_USRPX300_0)
    return
      <xqllib:result>
        <xqllib:var name="Aircraft_0">{$value_Aircraft_0}</xqllib:var>
        <xqllib:var name="USRPX300_0">{$value_USRPX300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Aircraft_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Aircraft"]
    let $value_Aircraft_0 := fn:data($node_Aircraft_0/@rdf:about)
    where fn:exists($node_Aircraft_0)
    return
      <xqllib:result>
        <xqllib:var name="Aircraft_0">{$value_Aircraft_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Aircraft_0 in $node_Entity_0/RFDevice:supportsJamming
    let $value_Aircraft_0 := fn:data($node_Aircraft_0/@rdf:resource)
    where fn:exists($value_Aircraft_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Aircraft_0">{$value_Aircraft_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0) and $node_Entity_0/Nuvio:expresses/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiving"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_TerrainBounceJamming_0 in $doc_ObjectDescription
    let $value_TerrainBounceJamming_0 := fn:data($node_TerrainBounceJamming_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_TerrainBounceJamming_0) and $node_TerrainBounceJamming_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="TerrainBounceJamming_0">{$value_TerrainBounceJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 :=  
    for $node_InformationRepresentation_0 in $doc_ObjectDescription
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    for $node_Entity_0 in $node_InformationRepresentation_0/Nuvio:representedBy
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_InformationRepresentation_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_InformationRepresentation_0 in $node_InformationEntity_0/Nuvio:representedBy
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:resource)
    where fn:exists($node_InformationEntity_0) and fn:exists($value_InformationRepresentation_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Angle_0 in $doc_ObjectDescription
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    for $node_InformationEntity_0 in $node_Angle_0/Nuvio:expresses
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:resource)
    where fn:exists($node_Angle_0) and fn:exists($value_InformationEntity_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Angle_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Angle"]
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    where fn:exists($node_Angle_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Angle_0 in $doc_ObjectDescription
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    for $node_AngleValue_0 in $node_Angle_0/Nuvio:hasValue
    let $value_AngleValue_0 := fn:data($node_AngleValue_0/@rdf:resource)
    where fn:exists($value_AngleValue_0) and fn:exists($node_Angle_0)
    return
      <xqllib:result>
        <xqllib:var name="AngleValue_0">{$value_AngleValue_0}</xqllib:var>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_AngleValue_0 in $doc_ObjectDescription
    let $value_AngleValue_0 := fn:data($node_AngleValue_0/@rdf:about)
    for $node_DataValue0 in $node_AngleValue_0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($node_AngleValue_0) and fn:exists($value_DataValue0)
    return
      <xqllib:result>
        <xqllib:var name="AngleValue_0">{$value_AngleValue_0}</xqllib:var>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := $GRAPH_14[(data(xqllib:var[@name="DataValue0"]) = 1200559905)]
  let $GRAPH_16 := xqllib:and($GRAPH_13,$GRAPH_15,("AngleValue_0"))
  let $GRAPH_17 := xqllib:optional($GRAPH_12,$GRAPH_16,("Angle_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_11,$GRAPH_17,("Angle_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_10,$GRAPH_18,("InformationEntity_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_9,$GRAPH_19,("InformationRepresentation_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_8,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_5,$GRAPH_21,("Entity_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_4,$GRAPH_22,("Entity_0"))
  let $GRAPH_24 := ($GRAPH_3,$GRAPH_23)
  let $GRAPH_25 := xqllib:and($GRAPH_1,$GRAPH_24,("Aircraft_0"))
  let $GRAPH_26 := xqllib:optional($GRAPH_0,$GRAPH_25,("USRPX300_0"))
  return
    $GRAPH_26
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPX300_0"))),("USRPX300_0"))
