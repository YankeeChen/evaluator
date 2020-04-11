import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
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
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SearchRadar_0 in $node_Entity_0/Nuvio:aggregateOf
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Situation_0 in $node_Entity_0/Nuvio:isExpressedBy
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#DirectConversionReceiver_instance25"]/Nuvio:compositeOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_Entity_0 in $node_Power_0/RFDevice:hasTransmitPowerRange
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Power_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Power"]
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    where fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Power_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Entity_0"))
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Width"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/Nuvio:hasValue
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0) and $doc_ObjectDescription[@rdf:ID = "VerticalPolarization"]/Nuvio:hasProcessQuality/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:optional($GRAPH_10,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_7,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_2,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 :=  
    for $node_Situation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := xqllib:and($GRAPH_14,$GRAPH_15,("Situation_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_1,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_0,$GRAPH_17,("SearchRadar_0"))
  return
    $GRAPH_18
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SearchRadar_0"))),("SearchRadar_0"))
