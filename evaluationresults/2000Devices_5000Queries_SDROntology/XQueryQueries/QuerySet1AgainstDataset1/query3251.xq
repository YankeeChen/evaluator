import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
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
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Full_DuplexCommunicationsSystem_0 in $node_Var0/RFDevice:hasCapability
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_Full_DuplexCommunicationsSystem_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AdjustableBandwidthSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FixedBandwidthSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    for $node_Var0 in $node_RadioFrequencyBand_0/RFDevice:hasBandwidthRange
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_RadioFrequencyBand_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioFrequencyBand"]
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    where fn:exists($node_RadioFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription[RFDevice:hasMax/@rdf:resource = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#Weight_instance183"]
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    where fn:exists($node_RadioFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("RadioFrequencyBand_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("RadioFrequencyBand_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_4,$GRAPH_9,("Var0"))
  let $GRAPH_11 := ($GRAPH_3,$GRAPH_10)
  let $GRAPH_12 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process" and Nuvio:subprocessOf/@rdf:resource = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#Instance1479"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:and($GRAPH_11,$GRAPH_12,("Var0"))
  let $GRAPH_14 := xqllib:and($GRAPH_1,$GRAPH_13,("Var0"))
  let $GRAPH_15 := xqllib:and($GRAPH_0,$GRAPH_14,("Full_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_15
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Full_DuplexCommunicationsSystem_0"))),("Full_DuplexCommunicationsSystem_0"))
