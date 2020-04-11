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
    for $node_MobilePlatform_0 in $node_ModelX_0/RFDevice:isDeployedOn
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:resource)
    where fn:exists($value_MobilePlatform_0) and fn:exists($node_ModelX_0)
    return
      <xqllib:result>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
        <xqllib:var name="ModelX_0">{$value_ModelX_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_MobilePlatform_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#MobilePlatform"]
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:about)
    where fn:exists($node_MobilePlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_MobilePlatform_0 in $node_Entity_0/RFDevice:supportsJamming
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_MobilePlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationContent_0 in $doc_ObjectDescription
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_InformationContent_0) and $node_InformationContent_0/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0) and $doc_ObjectDescription[@rdf:ID = "USRPB2xx_instance9"]/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_MultiGeometry_0 in $doc_ObjectDescription
    let $value_MultiGeometry_0 := fn:data($node_MultiGeometry_0/@rdf:about)
    for $node_Entity_0 in $node_MultiGeometry_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_MultiGeometry_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="MultiGeometry_0">{$value_MultiGeometry_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 := xqllib:optional($GRAPH_6,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:optional($GRAPH_10,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_5,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_4,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := ($GRAPH_3,$GRAPH_14)
  let $GRAPH_16 := xqllib:and($GRAPH_1,$GRAPH_15,("MobilePlatform_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_0,$GRAPH_16,("ModelX_0"))
  return
    $GRAPH_17
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ModelX_0"))),("ModelX_0"))
