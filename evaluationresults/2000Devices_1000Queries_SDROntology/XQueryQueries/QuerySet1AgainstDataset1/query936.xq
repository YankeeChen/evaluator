import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
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
    for $node_Full_DuplexCommunicationsSystem_0 in $node_Var0/RFDevice:supportsTransmitting
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_Full_DuplexCommunicationsSystem_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription2000.owl#Frequency_instance35"]/RFDevice:hasBandwidth
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
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
  let $GRAPH_4 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioFrequencyBand"]
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    where fn:exists($node_RadioFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_NoiseFigure_0 in $doc_ObjectDescription
    let $value_NoiseFigure_0 := fn:data($node_NoiseFigure_0/@rdf:about)
    for $node_RadioFrequencyBand_0 in $node_NoiseFigure_0/RFDevice:hasMin
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:resource)
    where fn:exists($node_NoiseFigure_0) and fn:exists($value_RadioFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="NoiseFigure_0">{$value_NoiseFigure_0}</xqllib:var>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("RadioFrequencyBand_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("RadioFrequencyBand_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Var0"))
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CrossEyeJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("Full_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Full_DuplexCommunicationsSystem_0"))),("Full_DuplexCommunicationsSystem_0"))
