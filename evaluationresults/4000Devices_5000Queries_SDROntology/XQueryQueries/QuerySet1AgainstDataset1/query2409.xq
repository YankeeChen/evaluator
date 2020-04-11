import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace geosparql = "http://www.opengis.net/ont/geosparql#";
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
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPX300_0 in $node_Entity_0/Nuvio:compositeOf
    let $value_USRPX300_0 := fn:data($node_USRPX300_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPX300_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPX300_0">{$value_USRPX300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_InformationContent_0 in $doc_ObjectDescription
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:about)
    for $node_Entity_0 in $node_InformationContent_0/Nuvio:isExpressedBy
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_InformationContent_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/geosparql#SpatialObject"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_MultiSurface_0 in $doc_ObjectDescription
    let $value_MultiSurface_0 := fn:data($node_MultiSurface_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_MultiSurface_0) and $node_MultiSurface_0/geosparql:ehMeet/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="MultiSurface_0">{$value_MultiSurface_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PowerUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Entity_0"))
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Var0) and $node_Var0/Nuvio:informationSource/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_MobilePlatform_0 in $doc_ObjectDescription
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:about)
    for $node_Var0 in $node_MobilePlatform_0/RFDevice:isDeployedOn
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_MobilePlatform_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_MobilePlatform_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#MobilePlatform"]
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:about)
    where fn:exists($node_MobilePlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Moving_0 in $doc_ObjectDescription
    let $value_Moving_0 := fn:data($node_Moving_0/@rdf:about)
    for $node_MobilePlatform_0 in $node_Moving_0/RFDevice:supportsSpectrumSensing
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:resource)
    where fn:exists($value_MobilePlatform_0) and fn:exists($node_Moving_0)
    return
      <xqllib:result>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
        <xqllib:var name="Moving_0">{$value_Moving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Moving_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Moving"]
    let $value_Moving_0 := fn:data($node_Moving_0/@rdf:about)
    where fn:exists($node_Moving_0)
    return
      <xqllib:result>
        <xqllib:var name="Moving_0">{$value_Moving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Moving_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_8,$GRAPH_11,("MobilePlatform_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_7,$GRAPH_12,("MobilePlatform_0"))
  let $GRAPH_15 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CrossPolarizationJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Instance2600"]/RFDevice:hasPulseRepetitionFrequency
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := ($GRAPH_15,$GRAPH_16)
  let $GRAPH_18 := xqllib:and($GRAPH_13,$GRAPH_17,("Var0"))
  let $GRAPH_19 := xqllib:and($GRAPH_6,$GRAPH_18,("Var0"))
  let $GRAPH_20 := xqllib:optional($GRAPH_5,$GRAPH_19,("Entity_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_2,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 :=  
    for $node_InformationContent_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationContent"]
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:about)
    for $node_InformationRepresentation_0 in $node_InformationContent_0/Nuvio:representedBy
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:resource)
    where fn:exists($node_InformationContent_0) and fn:exists($value_InformationRepresentation_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 :=  
    for $node_InformationRepresentation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationRepresentation"]
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    where fn:exists($node_InformationRepresentation_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 := xqllib:and($GRAPH_22,$GRAPH_23,("InformationRepresentation_0"))
  let $GRAPH_25 := xqllib:and($GRAPH_21,$GRAPH_24,("InformationContent_0"))
  let $GRAPH_26 := xqllib:and($GRAPH_1,$GRAPH_25,("Entity_0"))
  let $GRAPH_27 := xqllib:and($GRAPH_0,$GRAPH_26,("USRPX300_0"))
  return
    $GRAPH_27
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPX300_0"))),("USRPX300_0"))
