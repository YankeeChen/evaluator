import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_Half_DuplexCommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Half-DuplexCommunicationsSystem"]
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:about)
    where fn:exists($node_Half_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Half_DuplexCommunicationsSystem_0 in $node_Var0/RFDevice:supportsTuning
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_Half_DuplexCommunicationsSystem_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SelfProtectionJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/RFDevice:hasPulseWidth
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IEDTrigger"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_FreqencyRange_0 in $doc_ObjectDescription
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:about)
    for $node_Entity_0 in $node_FreqencyRange_0/RFDevice:hasFrequencyAccuracy
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_FreqencyRange_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_FreqencyRange_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FreqencyRange"]
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:about)
    where fn:exists($node_FreqencyRange_0)
    return
      <xqllib:result>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Frequency_0 in $doc_ObjectDescription
    let $value_Frequency_0 := fn:data($node_Frequency_0/@rdf:about)
    for $node_FreqencyRange_0 in $node_Frequency_0/RFDevice:hasMax
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:resource)
    where fn:exists($value_FreqencyRange_0) and fn:exists($node_Frequency_0)
    return
      <xqllib:result>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
        <xqllib:var name="Frequency_0">{$value_Frequency_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Frequency_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Frequency"]
    let $value_Frequency_0 := fn:data($node_Frequency_0/@rdf:about)
    where fn:exists($node_Frequency_0)
    return
      <xqllib:result>
        <xqllib:var name="Frequency_0">{$value_Frequency_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Frequency_0 in $doc_ObjectDescription
    let $value_Frequency_0 := fn:data($node_Frequency_0/@rdf:about)
    for $node_Var1 in $node_Frequency_0/Nuvio:hasValue
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Frequency_0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Frequency_0">{$value_Frequency_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_DataValue0 in $node_Var1/RFDevice:hasFloatValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := $GRAPH_11[(data(xqllib:var[@name="DataValue0"]) <= -75.95)]
  let $GRAPH_13 := xqllib:and($GRAPH_10,$GRAPH_12,("Var1"))
  let $GRAPH_14 := xqllib:and($GRAPH_9,$GRAPH_13,("Frequency_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_8,$GRAPH_14,("Frequency_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_7,$GRAPH_15,("FreqencyRange_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_6,$GRAPH_16,("FreqencyRange_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_5,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_DataValue1 in $node_Entity_0/Nuvio:hasDataValue
    let $value_DataValue1 := fn:data($node_DataValue1)
    where fn:exists($value_DataValue1) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue1">{$value_DataValue1}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 := $GRAPH_19[(data(xqllib:var[@name="DataValue1"]) = xs:decimal("80"))]
  let $GRAPH_21 := xqllib:and($GRAPH_18,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Gain"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 :=  
    for $node_FeatureDetection_0 in $doc_ObjectDescription
    let $value_FeatureDetection_0 := fn:data($node_FeatureDetection_0/@rdf:about)
    for $node_Entity_0 in $node_FeatureDetection_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_FeatureDetection_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="FeatureDetection_0">{$value_FeatureDetection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 :=  
    for $node_FeatureDetection_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FeatureDetection"]
    let $value_FeatureDetection_0 := fn:data($node_FeatureDetection_0/@rdf:about)
    where fn:exists($node_FeatureDetection_0)
    return
      <xqllib:result>
        <xqllib:var name="FeatureDetection_0">{$value_FeatureDetection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_25 := xqllib:optional($GRAPH_23,$GRAPH_24,("FeatureDetection_0"))
  let $GRAPH_26 := xqllib:optional($GRAPH_22,$GRAPH_25,("Entity_0"))
  let $GRAPH_27 := xqllib:and($GRAPH_21,$GRAPH_26,("Entity_0"))
  let $GRAPH_28 := xqllib:and($GRAPH_4,$GRAPH_27,("Entity_0"))
  let $GRAPH_29 := xqllib:and($GRAPH_3,$GRAPH_28,("Entity_0"))
  let $GRAPH_30 := xqllib:and($GRAPH_2,$GRAPH_29,("Var0"))
  let $GRAPH_31 := xqllib:and($GRAPH_1,$GRAPH_30,("Var0"))
  let $GRAPH_32 := xqllib:and($GRAPH_0,$GRAPH_31,("Half_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_32
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Half_DuplexCommunicationsSystem_0"))),("Half_DuplexCommunicationsSystem_0"))
