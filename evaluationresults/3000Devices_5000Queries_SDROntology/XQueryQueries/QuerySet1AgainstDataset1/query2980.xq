import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ContinuousWaveRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ContinuousWaveRadar"]
    let $value_ContinuousWaveRadar_0 := fn:data($node_ContinuousWaveRadar_0/@rdf:about)
    where fn:exists($node_ContinuousWaveRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadar_0">{$value_ContinuousWaveRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_ContinuousWaveRadar_0 in $node_Entity_0/RFDevice:isProducerOf
    let $value_ContinuousWaveRadar_0 := fn:data($node_ContinuousWaveRadar_0/@rdf:resource)
    where fn:exists($value_ContinuousWaveRadar_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadar_0">{$value_ContinuousWaveRadar_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_UnitOfMeasure_0 in $node_Entity_0/Nuvio:isExpressedBy
    let $value_UnitOfMeasure_0 := fn:data($node_UnitOfMeasure_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_UnitOfMeasure_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="UnitOfMeasure_0">{$value_UnitOfMeasure_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#StandoffJamming"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    for $node_Entity_0 in $node_Entity_1/Nuvio:hasProcessQuantity
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Entity_1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:optional($GRAPH_4,$GRAPH_5,("Entity_0"))
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
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
  let $GRAPH_12 := $GRAPH_11[(data(xqllib:var[@name="DataValue0"]) > -2118279497)]
  let $GRAPH_13 := ($GRAPH_10,$GRAPH_12)
  let $GRAPH_14 := ($GRAPH_8,$GRAPH_13)
  let $GRAPH_15 := ($GRAPH_6,$GRAPH_14)
  let $GRAPH_16 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Angle"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := xqllib:optional($GRAPH_15,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_2,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_1,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 := xqllib:optional($GRAPH_0,$GRAPH_19,("ContinuousWaveRadar_0"))
  return
    $GRAPH_20
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ContinuousWaveRadar_0"))),("ContinuousWaveRadar_0"))
