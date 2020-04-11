import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPX310_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPX310"]
    let $value_USRPX310_0 := fn:data($node_USRPX310_0/@rdf:about)
    where fn:exists($node_USRPX310_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX310_0">{$value_USRPX310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Submarine_0 in $doc_ObjectDescription
    let $value_Submarine_0 := fn:data($node_Submarine_0/@rdf:about)
    for $node_USRPX310_0 in $node_Submarine_0/RFDevice:isDeployedOn
    let $value_USRPX310_0 := fn:data($node_USRPX310_0/@rdf:resource)
    where fn:exists($node_Submarine_0) and fn:exists($value_USRPX310_0)
    return
      <xqllib:result>
        <xqllib:var name="Submarine_0">{$value_Submarine_0}</xqllib:var>
        <xqllib:var name="USRPX310_0">{$value_USRPX310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Submarine_0 in $node_Entity_0/RFDevice:supportsSpectrumSensing
    let $value_Submarine_0 := fn:data($node_Submarine_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Submarine_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Submarine_0">{$value_Submarine_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ModelX"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicProtection"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Var0) and $node_Var0/Nuvio:informationSource/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseRadarModulation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_AngleModulation_0 in $doc_ObjectDescription
    let $value_AngleModulation_0 := fn:data($node_AngleModulation_0/@rdf:about)
    for $node_Var0 in $node_AngleModulation_0/RFDevice:hasCapability
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_AngleModulation_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="AngleModulation_0">{$value_AngleModulation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_AngleModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AngleModulation"]
    let $value_AngleModulation_0 := fn:data($node_AngleModulation_0/@rdf:about)
    where fn:exists($node_AngleModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="AngleModulation_0">{$value_AngleModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := ($GRAPH_8,$GRAPH_9)
  let $GRAPH_11 := xqllib:optional($GRAPH_6,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:and($GRAPH_5,$GRAPH_11,("Var0"))
  let $GRAPH_13 := xqllib:optional($GRAPH_4,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:optional($GRAPH_3,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_2,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_1,$GRAPH_15,("Submarine_0"))
  let $GRAPH_17 := xqllib:optional($GRAPH_0,$GRAPH_16,("USRPX310_0"))
  return
    $GRAPH_17
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPX310_0"))),("USRPX310_0"))
