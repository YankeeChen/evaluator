import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_TrackingRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TrackingRadar"]
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:about)
    where fn:exists($node_TrackingRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    for $node_TrackingRadar_0 in $node_RadarJammer_0/Nuvio:compositeOf
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:resource)
    where fn:exists($node_RadarJammer_0) and fn:exists($value_TrackingRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_ElectronicWarfare_0 in $doc_ObjectDescription
    let $value_ElectronicWarfare_0 := fn:data($node_ElectronicWarfare_0/@rdf:about)
    for $node_RadarJammer_0 in $node_ElectronicWarfare_0/RFDevice:supportsJamming
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:resource)
    where fn:exists($node_ElectronicWarfare_0) and fn:exists($value_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicWarfare_0">{$value_ElectronicWarfare_0}</xqllib:var>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_ElectronicWarfare_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicWarfare"]
    let $value_ElectronicWarfare_0 := fn:data($node_ElectronicWarfare_0/@rdf:about)
    where fn:exists($node_ElectronicWarfare_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicWarfare_0">{$value_ElectronicWarfare_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("ElectronicWarfare_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("RadarJammer_0"))
  let $GRAPH_6 := xqllib:optional($GRAPH_0,$GRAPH_5,("TrackingRadar_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("TrackingRadar_0"))),("TrackingRadar_0"))
