import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ElectronicAttackSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicAttackSystem"]
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:about)
    where fn:exists($node_ElectronicAttackSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_ElectronicAttackSystem_0 in $node_Process_0/RFDevice:supportsSpectrumSensing
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:resource)
    where fn:exists($value_ElectronicAttackSystem_0) and fn:exists($node_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Angle_0 in $doc_ObjectDescription
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    for $node_Process_0 in $node_Angle_0/RFDevice:hasMaxOutputPower
    let $value_Process_0 := fn:data($node_Process_0/@rdf:resource)
    where fn:exists($node_Angle_0) and fn:exists($value_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_AngleValue_0 in $doc_ObjectDescription
    let $value_AngleValue_0 := fn:data($node_AngleValue_0/@rdf:about)
    for $node_Angle_0 in $node_AngleValue_0/Nuvio:hasValue
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:resource)
    where fn:exists($node_AngleValue_0) and fn:exists($value_Angle_0)
    return
      <xqllib:result>
        <xqllib:var name="AngleValue_0">{$value_AngleValue_0}</xqllib:var>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_AngleValue_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AngleValue"]
    let $value_AngleValue_0 := fn:data($node_AngleValue_0/@rdf:about)
    where fn:exists($node_AngleValue_0)
    return
      <xqllib:result>
        <xqllib:var name="AngleValue_0">{$value_AngleValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("AngleValue_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Angle_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Process_0"))
  let $GRAPH_8 := xqllib:optional($GRAPH_0,$GRAPH_7,("ElectronicAttackSystem_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicAttackSystem_0"))),("ElectronicAttackSystem_0"))
