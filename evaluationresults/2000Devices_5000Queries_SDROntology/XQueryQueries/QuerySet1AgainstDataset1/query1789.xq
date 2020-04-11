import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_PulseRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseRadar"]
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:about)
    where fn:exists($node_PulseRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_PulseRadar_0 in $node_Var0/RFDevice:hasCapability
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:resource)
    where fn:exists($value_PulseRadar_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Value_0 in $doc_ObjectDescription
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Value_0) and fn:exists($node_Var0) and $node_Value_0/Nuvio:expresses/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("Var0"))
  let $GRAPH_6 :=  
    for $node_Value_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    for $node_VoltageUnit_0 in $doc_ObjectDescription
    let $value_VoltageUnit_0 := fn:data($node_VoltageUnit_0/@rdf:about)
    where fn:exists($node_Value_0) and fn:exists($node_VoltageUnit_0) and $node_VoltageUnit_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Value_0
    return
      <xqllib:result>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
        <xqllib:var name="VoltageUnit_0">{$value_VoltageUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Value_0 in $doc_ObjectDescription
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    for $node_DataValue0 in $node_Value_0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Value_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := $GRAPH_7[(data(xqllib:var[@name="DataValue0"]) > -1062617013)]
  let $GRAPH_9 :=  
    for $node_VoltageUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#VoltageUnit"]
    let $value_VoltageUnit_0 := fn:data($node_VoltageUnit_0/@rdf:about)
    where fn:exists($node_VoltageUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="VoltageUnit_0">{$value_VoltageUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,())
  let $GRAPH_11 := ($GRAPH_6,$GRAPH_10)
  let $GRAPH_12 := xqllib:optional($GRAPH_4,$GRAPH_11,("Value_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_1,$GRAPH_12,("Var0"))
  let $GRAPH_14 := xqllib:and($GRAPH_0,$GRAPH_13,("PulseRadar_0"))
  return
    $GRAPH_14
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseRadar_0"))),("PulseRadar_0"))
