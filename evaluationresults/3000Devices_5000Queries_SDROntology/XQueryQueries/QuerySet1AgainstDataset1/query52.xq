import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
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
    for $node_RadarJammer_0 in $doc_ObjectDescription
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    for $node_RadarSystem_0 in $node_RadarJammer_0/Nuvio:compositeOf
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:resource)
    where fn:exists($node_RadarJammer_0) and fn:exists($value_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarJammer"]
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    where fn:exists($node_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_BarrageJamming_0 in $doc_ObjectDescription
    let $value_BarrageJamming_0 := fn:data($node_BarrageJamming_0/@rdf:about)
    for $node_RadarJammer_0 in $node_BarrageJamming_0/RFDevice:supportsTransmitting
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:resource)
    where fn:exists($node_BarrageJamming_0) and fn:exists($value_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="BarrageJamming_0">{$value_BarrageJamming_0}</xqllib:var>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_BarrageJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BarrageJamming"]
    let $value_BarrageJamming_0 := fn:data($node_BarrageJamming_0/@rdf:about)
    where fn:exists($node_BarrageJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="BarrageJamming_0">{$value_BarrageJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("BarrageJamming_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("RadarJammer_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("RadarJammer_0"))
  let $GRAPH_8 := xqllib:optional($GRAPH_0,$GRAPH_7,("RadarSystem_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarSystem_0"))),("RadarSystem_0"))
