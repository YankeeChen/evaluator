import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ContinuousWaveRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ContinuousWaveRadar"]
    let $value_ContinuousWaveRadar_0 := fn:data($node_ContinuousWaveRadar_0/@rdf:about)
    where fn:exists($node_ContinuousWaveRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadar_0">{$value_ContinuousWaveRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_ContinuousWaveRadar_0 in $doc_ObjectDescription
    let $value_ContinuousWaveRadar_0 := fn:data($node_ContinuousWaveRadar_0/@rdf:about)
    for $node_Entity_0 in $node_ContinuousWaveRadar_0/RFDevice:hasWidth
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_ContinuousWaveRadar_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadar_0">{$value_ContinuousWaveRadar_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_Entity_0 in $node_Process_0/Nuvio:isExpressedBy
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AdjustableBandwidthSensing"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Spartan6FPGA_0 in $node_Entity_0/Nuvio:participatesIn
    let $value_Spartan6FPGA_0 := fn:data($node_Spartan6FPGA_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Spartan6FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Spartan6FPGA_0">{$value_Spartan6FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Spartan6FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#Spartan6FPGA"]
    let $value_Spartan6FPGA_0 := fn:data($node_Spartan6FPGA_0/@rdf:about)
    where fn:exists($node_Spartan6FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Spartan6FPGA_0">{$value_Spartan6FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Spartan6FPGA_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PositiveFloatValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 := ($GRAPH_3,$GRAPH_10)
  let $GRAPH_12 := xqllib:and($GRAPH_1,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_0,$GRAPH_12,("ContinuousWaveRadar_0"))
  return
    $GRAPH_13
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ContinuousWaveRadar_0"))),("ContinuousWaveRadar_0"))
