import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SearchRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SearchRadar"]
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:about)
    where fn:exists($node_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_SearchRadar_0 in $doc_ObjectDescription
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:about)
    for $node_Object_0 in $node_SearchRadar_0/RFDevice:isProducerOf
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_TimeInterval_0 in $doc_ObjectDescription
    let $value_TimeInterval_0 := fn:data($node_TimeInterval_0/@rdf:about)
    for $node_Object_0 in $node_TimeInterval_0/RFDevice:hasVoltage
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_TimeInterval_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="TimeInterval_0">{$value_TimeInterval_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_TimeInterval_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TimeInterval"]
    let $value_TimeInterval_0 := fn:data($node_TimeInterval_0/@rdf:about)
    where fn:exists($node_TimeInterval_0)
    return
      <xqllib:result>
        <xqllib:var name="TimeInterval_0">{$value_TimeInterval_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_TimeInterval_0 in $node_Var0/Nuvio:hasValue
    let $value_TimeInterval_0 := fn:data($node_TimeInterval_0/@rdf:resource)
    where fn:exists($value_TimeInterval_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="TimeInterval_0">{$value_TimeInterval_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/Nuvio:hasUnitOfMeasure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#StandoffJamming"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Entity_0 in $node_Attribute_0/Nuvio:hasProcessQuantity
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_CompositeSurface_0 in $node_Entity_0/Nuvio:isExpressedBy
    let $value_CompositeSurface_0 := fn:data($node_CompositeSurface_0/@rdf:resource)
    where fn:exists($value_CompositeSurface_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="CompositeSurface_0">{$value_CompositeSurface_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#NonNegativeDecimalValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_8,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AntennaPolarization"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_5,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_4,$GRAPH_15,("Var0"))
  let $GRAPH_17 := xqllib:and($GRAPH_3,$GRAPH_16,("TimeInterval_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_2,$GRAPH_17,("TimeInterval_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_1,$GRAPH_18,("Object_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_0,$GRAPH_19,("SearchRadar_0"))
  return
    $GRAPH_20
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SearchRadar_0"))),("SearchRadar_0"))
