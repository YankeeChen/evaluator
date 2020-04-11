import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ModelX_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ModelX"]
    let $value_ModelX_0 := fn:data($node_ModelX_0/@rdf:about)
    where fn:exists($node_ModelX_0)
    return
      <xqllib:result>
        <xqllib:var name="ModelX_0">{$value_ModelX_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Transceiving_0 in $doc_ObjectDescription
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:about)
    for $node_ModelX_0 in $node_Transceiving_0/RFDevice:supportsJamming
    let $value_ModelX_0 := fn:data($node_ModelX_0/@rdf:resource)
    where fn:exists($value_ModelX_0) and fn:exists($node_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="ModelX_0">{$value_ModelX_0}</xqllib:var>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Transceiving_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transceiving"]
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:about)
    where fn:exists($node_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Transceiving_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TerrainBounceJamming"]
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:about)
    where fn:exists($node_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Transceiving_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiving"]
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:about)
    where fn:exists($node_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    for $node_Transceiving_0 in $node_RadioFrequencyBand_0/RFDevice:hasFrequencyAccuracy
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:resource)
    where fn:exists($node_RadioFrequencyBand_0) and fn:exists($value_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioFrequencyBand"]
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    where fn:exists($node_RadioFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("RadioFrequencyBand_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("Transceiving_0"))
  let $GRAPH_9 := xqllib:optional($GRAPH_3,$GRAPH_8,("Transceiving_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("Transceiving_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Transceiving_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("ModelX_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ModelX_0"))),("ModelX_0"))
