import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_Full_DuplexCommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Full-DuplexCommunicationsSystem"]
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:about)
    where fn:exists($node_Full_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Full_DuplexCommunicationsSystem_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Full_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Entity_0 in $node_Var0/RFDevice:hasDataTransmissionMode
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_FrequencyScanRate_0 in $doc_ObjectDescription
    let $value_FrequencyScanRate_0 := fn:data($node_FrequencyScanRate_0/@rdf:about)
    for $node_Entity_0 in $node_FrequencyScanRate_0/RFDevice:hasGain
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_FrequencyScanRate_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="FrequencyScanRate_0">{$value_FrequencyScanRate_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_FrequencyScanRate_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyScanRate"]
    let $value_FrequencyScanRate_0 := fn:data($node_FrequencyScanRate_0/@rdf:about)
    where fn:exists($node_FrequencyScanRate_0)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyScanRate_0">{$value_FrequencyScanRate_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_FrequencyScanRate_0 in $node_Var1/Nuvio:hasValue
    let $value_FrequencyScanRate_0 := fn:data($node_FrequencyScanRate_0/@rdf:resource)
    where fn:exists($value_FrequencyScanRate_0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyScanRate_0">{$value_FrequencyScanRate_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DecimalValue"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_DataValue0 in $node_Var1/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := $GRAPH_9[(data(xqllib:var[@name="DataValue0"]) > -1682560553)]
  let $GRAPH_11 := ($GRAPH_8,$GRAPH_10)
  let $GRAPH_12 := xqllib:and($GRAPH_6,$GRAPH_11,("Var1"))
  let $GRAPH_13 := xqllib:and($GRAPH_5,$GRAPH_12,("FrequencyScanRate_0"))
  let $GRAPH_14 := ($GRAPH_4,$GRAPH_13)
  let $GRAPH_15 := xqllib:and($GRAPH_2,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_1,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_0,$GRAPH_16,("Full_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_17
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Full_DuplexCommunicationsSystem_0"))),("Full_DuplexCommunicationsSystem_0"))
