import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RadarWarningReceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarWarningReceiver"]
    let $value_RadarWarningReceiver_0 := fn:data($node_RadarWarningReceiver_0/@rdf:about)
    where fn:exists($node_RadarWarningReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarWarningReceiver_0">{$value_RadarWarningReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    for $node_RadarWarningReceiver_0 in $node_RadarJammer_0/Nuvio:partOf
    let $value_RadarWarningReceiver_0 := fn:data($node_RadarWarningReceiver_0/@rdf:resource)
    where fn:exists($node_RadarJammer_0) and fn:exists($value_RadarWarningReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
        <xqllib:var name="RadarWarningReceiver_0">{$value_RadarWarningReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Amplifier_0 in $doc_ObjectDescription
    let $value_Amplifier_0 := fn:data($node_Amplifier_0/@rdf:about)
    for $node_RadarJammer_0 in $node_Amplifier_0/Nuvio:partOf
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:resource)
    where fn:exists($node_Amplifier_0) and fn:exists($value_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="Amplifier_0">{$value_Amplifier_0}</xqllib:var>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Amplifier_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Amplifier"]
    let $value_Amplifier_0 := fn:data($node_Amplifier_0/@rdf:about)
    where fn:exists($node_Amplifier_0)
    return
      <xqllib:result>
        <xqllib:var name="Amplifier_0">{$value_Amplifier_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Amplifier_0 in $node_Attribute_0/RFDevice:hasNoiseFigure
    let $value_Amplifier_0 := fn:data($node_Amplifier_0/@rdf:resource)
    where fn:exists($value_Amplifier_0) and fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Amplifier_0">{$value_Amplifier_0}</xqllib:var>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Attribute_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Amplifier_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Amplifier_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("RadarJammer_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("RadarWarningReceiver_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarWarningReceiver_0"))),("RadarWarningReceiver_0"))
