import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
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
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_SearchRadar_0 in $node_Object_0/RFDevice:hasProducer
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_SpotJamming_0 in $doc_ObjectDescription
    let $value_SpotJamming_0 := fn:data($node_SpotJamming_0/@rdf:about)
    where fn:exists($node_Object_0) and fn:exists($node_SpotJamming_0) and $node_SpotJamming_0/RFDevice:supportsTuning/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="SpotJamming_0">{$value_SpotJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_SpotJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpotJamming"]
    let $value_SpotJamming_0 := fn:data($node_SpotJamming_0/@rdf:about)
    where fn:exists($node_SpotJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="SpotJamming_0">{$value_SpotJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SpotJamming_0 in $node_Entity_0/RFDevice:hasPulseRepetitionInterval
    let $value_SpotJamming_0 := fn:data($node_SpotJamming_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_SpotJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SpotJamming_0">{$value_SpotJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Object_0) and $node_Object_0/Nuvio:expresses/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AngleModulation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_DecimalValue_0 in $doc_ObjectDescription
    let $value_DecimalValue_0 := fn:data($node_DecimalValue_0/@rdf:about)
    for $node_Entity_0 in $node_DecimalValue_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_DecimalValue_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DecimalValue_0">{$value_DecimalValue_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Transceiver_0 in $doc_ObjectDescription
    let $value_Transceiver_0 := fn:data($node_Transceiver_0/@rdf:about)
    for $node_Entity_0 in $node_Transceiver_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Transceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Transceiver_0">{$value_Transceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Transceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transceiver"]
    let $value_Transceiver_0 := fn:data($node_Transceiver_0/@rdf:about)
    where fn:exists($node_Transceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiver_0">{$value_Transceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("Transceiver_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_7,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 :=  
    for $node_DecimalValue_0 in $doc_ObjectDescription
    let $value_DecimalValue_0 := fn:data($node_DecimalValue_0/@rdf:about)
    for $node_DataValue0 in $node_DecimalValue_0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_DecimalValue_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="DecimalValue_0">{$value_DecimalValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := $GRAPH_12[(data(xqllib:var[@name="DataValue0"]) < -85132686)]
  let $GRAPH_14 := xqllib:and($GRAPH_11,$GRAPH_13,("DecimalValue_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_6,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_5,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_4,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:optional($GRAPH_3,$GRAPH_17,("SpotJamming_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_2,$GRAPH_18,("Object_0","SpotJamming_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_1,$GRAPH_19,("Object_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_0,$GRAPH_20,("SearchRadar_0"))
  return
    $GRAPH_21
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SearchRadar_0"))),("SearchRadar_0"))
