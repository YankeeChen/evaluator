import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RadarSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarSystem"]
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:about)
    where fn:exists($node_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadarSystem_0 in $doc_ObjectDescription
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:about)
    for $node_Var0 in $node_RadarSystem_0/RFDevice:hasCapability
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_RadarSystem_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_RadarFrequencyBand_0 in $doc_ObjectDescription
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:about)
    for $node_Var0 in $node_RadarFrequencyBand_0/RFDevice:hasBandwidthRange
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_RadarFrequencyBand_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RadarFrequencyBand_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarFrequencyBand"]
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:about)
    where fn:exists($node_RadarFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_TimeInstant_0 in $doc_ObjectDescription
    let $value_TimeInstant_0 := fn:data($node_TimeInstant_0/@rdf:about)
    for $node_RadarFrequencyBand_0 in $node_TimeInstant_0/RFDevice:hasMax
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:resource)
    where fn:exists($value_RadarFrequencyBand_0) and fn:exists($node_TimeInstant_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
        <xqllib:var name="TimeInstant_0">{$value_TimeInstant_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_TimeInstant_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TimeInstant"]
    let $value_TimeInstant_0 := fn:data($node_TimeInstant_0/@rdf:about)
    where fn:exists($node_TimeInstant_0)
    return
      <xqllib:result>
        <xqllib:var name="TimeInstant_0">{$value_TimeInstant_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_TimeInstant_0 in $node_Var1/Nuvio:hasValue
    let $value_TimeInstant_0 := fn:data($node_TimeInstant_0/@rdf:resource)
    where fn:exists($value_TimeInstant_0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="TimeInstant_0">{$value_TimeInstant_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("TimeInstant_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("TimeInstant_0"))
  let $GRAPH_9 := xqllib:optional($GRAPH_3,$GRAPH_8,("RadarFrequencyBand_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("RadarFrequencyBand_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:optional($GRAPH_0,$GRAPH_11,("RadarSystem_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarSystem_0"))),("RadarSystem_0"))
