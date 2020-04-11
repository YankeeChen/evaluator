import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SurveillanceRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SurveillanceRadar"]
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:about)
    where fn:exists($node_SurveillanceRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SurveillanceRadar_0 in $node_Entity_0/RFDevice:isProducerOf
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_SurveillanceRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_UnitOfMeasure_0 in $doc_ObjectDescription
    let $value_UnitOfMeasure_0 := fn:data($node_UnitOfMeasure_0/@rdf:about)
    for $node_Entity_0 in $node_UnitOfMeasure_0/Nuvio:expresses
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_UnitOfMeasure_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="UnitOfMeasure_0">{$value_UnitOfMeasure_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SweepJamming"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0) and $doc_ObjectDescription[@rdf:ID = "AntennaPolarization_instance12"]/Nuvio:hasProcessQuality/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FloatValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Entity_0"))
  let $GRAPH_8 := xqllib:optional($GRAPH_4,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("SurveillanceRadar_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SurveillanceRadar_0"))),("SurveillanceRadar_0"))
