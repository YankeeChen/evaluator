import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace geosparql = "http://www.opengis.net/ont/geosparql#";
declare namespace sf = "http://www.opengis.net/ont/sf#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
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
    for $node_ElectronicAttackSystem_0 in $doc_ObjectDescription
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:about)
    for $node_Entity_0 in $node_ElectronicAttackSystem_0/RFDevice:isProducerOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_ElectronicAttackSystem_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Value_0 in $doc_ObjectDescription
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Value_0) and $node_Value_0/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/sf#MultiSurface"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_DataValue0 in $node_Entity_0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := $GRAPH_4[(data(xqllib:var[@name="DataValue0"]) != -597285244)]
  let $GRAPH_6 := xqllib:and($GRAPH_3,$GRAPH_5,("Entity_0"))
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Feature_0 in $node_Entity_0/RFDevice:hasTarget
    let $value_Feature_0 := fn:data($node_Feature_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Feature_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Feature_0">{$value_Feature_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Feature_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/geosparql#Feature"]
    let $value_Feature_0 := fn:data($node_Feature_0/@rdf:about)
    for $node_MultiCurve_0 in $doc_ObjectDescription
    let $value_MultiCurve_0 := fn:data($node_MultiCurve_0/@rdf:about)
    where fn:exists($node_Feature_0) and fn:exists($node_MultiCurve_0) and $node_MultiCurve_0/geosparql:hasGeometry/@rdf:resource = $value_Feature_0
    return
      <xqllib:result>
        <xqllib:var name="Feature_0">{$value_Feature_0}</xqllib:var>
        <xqllib:var name="MultiCurve_0">{$value_MultiCurve_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_MultiCurve_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/sf#MultiCurve"]
    let $value_MultiCurve_0 := fn:data($node_MultiCurve_0/@rdf:about)
    where fn:exists($node_MultiCurve_0)
    return
      <xqllib:result>
        <xqllib:var name="MultiCurve_0">{$value_MultiCurve_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("MultiCurve_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_7,$GRAPH_10,("Feature_0"))
  let $GRAPH_12 := xqllib:optional($GRAPH_6,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_2,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 :=  
    for $node_FrequencyUnit_0 in $doc_ObjectDescription
    let $value_FrequencyUnit_0 := fn:data($node_FrequencyUnit_0/@rdf:about)
    for $node_Value_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    where fn:exists($node_FrequencyUnit_0) and fn:exists($node_Value_0) and $node_FrequencyUnit_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Value_0
    return
      <xqllib:result>
        <xqllib:var name="FrequencyUnit_0">{$value_FrequencyUnit_0}</xqllib:var>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("Value_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_1,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_0,$GRAPH_16,("ElectronicAttackSystem_0"))
  return
    $GRAPH_17
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicAttackSystem_0"))),("ElectronicAttackSystem_0"))
