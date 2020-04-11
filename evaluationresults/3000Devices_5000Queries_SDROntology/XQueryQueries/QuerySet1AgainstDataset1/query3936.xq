import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SDR_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#SDR"]
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:about)
    where fn:exists($node_SDR_0)
    return
      <xqllib:result>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    for $node_SDR_0 in $node_RadarJammer_0/Nuvio:aggregateOf
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:resource)
    where fn:exists($node_RadarJammer_0) and fn:exists($value_SDR_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
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
    for $node_Amplifier_0 in $doc_ObjectDescription
    let $value_Amplifier_0 := fn:data($node_Amplifier_0/@rdf:about)
    for $node_RadarJammer_0 in $node_Amplifier_0/Nuvio:aggregateOf
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:resource)
    where fn:exists($node_Amplifier_0) and fn:exists($value_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="Amplifier_0">{$value_Amplifier_0}</xqllib:var>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Amplifier_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Amplifier"]
    let $value_Amplifier_0 := fn:data($node_Amplifier_0/@rdf:about)
    where fn:exists($node_Amplifier_0)
    return
      <xqllib:result>
        <xqllib:var name="Amplifier_0">{$value_Amplifier_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_ARMProcessor_0 in $doc_ObjectDescription
    let $value_ARMProcessor_0 := fn:data($node_ARMProcessor_0/@rdf:about)
    for $node_Amplifier_0 in $node_ARMProcessor_0/Nuvio:compositeOf
    let $value_Amplifier_0 := fn:data($node_Amplifier_0/@rdf:resource)
    where fn:exists($node_ARMProcessor_0) and fn:exists($value_Amplifier_0)
    return
      <xqllib:result>
        <xqllib:var name="ARMProcessor_0">{$value_ARMProcessor_0}</xqllib:var>
        <xqllib:var name="Amplifier_0">{$value_Amplifier_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_ARMProcessor_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#ARMProcessor"]
    let $value_ARMProcessor_0 := fn:data($node_ARMProcessor_0/@rdf:about)
    where fn:exists($node_ARMProcessor_0)
    return
      <xqllib:result>
        <xqllib:var name="ARMProcessor_0">{$value_ARMProcessor_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_ARMProcessor_0 in $doc_ObjectDescription
    let $value_ARMProcessor_0 := fn:data($node_ARMProcessor_0/@rdf:about)
    where fn:exists($node_ARMProcessor_0) and $node_ARMProcessor_0/Nuvio:partOf/@rdf:resource = $value_ARMProcessor_0
    return
      <xqllib:result>
        <xqllib:var name="ARMProcessor_0">{$value_ARMProcessor_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("ARMProcessor_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("ARMProcessor_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_4,$GRAPH_9,("Amplifier_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_3,$GRAPH_10,("Amplifier_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_2,$GRAPH_11,("RadarJammer_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_1,$GRAPH_12,("RadarJammer_0"))
  let $GRAPH_14 := xqllib:optional($GRAPH_0,$GRAPH_13,("SDR_0"))
  return
    $GRAPH_14
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SDR_0"))),("SDR_0"))
