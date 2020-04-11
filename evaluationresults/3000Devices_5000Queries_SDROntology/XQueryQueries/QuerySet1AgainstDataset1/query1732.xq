import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_GNURadio_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#GNURadio"]
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:about)
    where fn:exists($node_GNURadio_0)
    return
      <xqllib:result>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_GNURadio_0 in $node_Entity_0/Nuvio:aggregateOf
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_GNURadio_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Entity_0 in $node_Attribute_0/Nuvio:isExpressedBy
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Frequency_0 in $doc_ObjectDescription
    let $value_Frequency_0 := fn:data($node_Frequency_0/@rdf:about)
    for $node_Entity_0 in $node_Frequency_0/RFDevice:hasMin
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Frequency_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Frequency_0">{$value_Frequency_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Frequency_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Frequency"]
    let $value_Frequency_0 := fn:data($node_Frequency_0/@rdf:about)
    where fn:exists($node_Frequency_0)
    return
      <xqllib:result>
        <xqllib:var name="Frequency_0">{$value_Frequency_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Frequency_0"))
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Value_0 in $doc_ObjectDescription
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Value_0) and $node_Value_0/RFDevice:supportsTuning/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Value_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    for $node_AngleUnit_0 in $node_Value_0/Nuvio:hasUnitOfMeasure
    let $value_AngleUnit_0 := fn:data($node_AngleUnit_0/@rdf:resource)
    where fn:exists($value_AngleUnit_0) and fn:exists($node_Value_0)
    return
      <xqllib:result>
        <xqllib:var name="AngleUnit_0">{$value_AngleUnit_0}</xqllib:var>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_AngleUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AngleUnit"]
    let $value_AngleUnit_0 := fn:data($node_AngleUnit_0/@rdf:about)
    where fn:exists($node_AngleUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="AngleUnit_0">{$value_AngleUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("AngleUnit_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_6,$GRAPH_9,("Value_0"))
  let $GRAPH_11 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_5,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_2,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := xqllib:and($GRAPH_16,$GRAPH_17,("Attribute_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_1,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_0,$GRAPH_19,("GNURadio_0"))
  return
    $GRAPH_20
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("GNURadio_0"))),("GNURadio_0"))
