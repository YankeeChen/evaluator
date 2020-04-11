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
    for $node_IEDJammer_0 in $doc_ObjectDescription
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:about)
    for $node_SDR_0 in $node_IEDJammer_0/Nuvio:compositeOf
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:resource)
    where fn:exists($node_IEDJammer_0) and fn:exists($value_SDR_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_IEDJammer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IEDJammer"]
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:about)
    where fn:exists($node_IEDJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RadarFrequencyBand_0 in $doc_ObjectDescription
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:about)
    for $node_IEDJammer_0 in $node_RadarFrequencyBand_0/RFDevice:hasFrequencyAccuracy
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:resource)
    where fn:exists($value_IEDJammer_0) and fn:exists($node_RadarFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_RadarFrequencyBand_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarFrequencyBand"]
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:about)
    where fn:exists($node_RadarFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Quantity_0 in $doc_ObjectDescription
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    for $node_RadarFrequencyBand_0 in $node_Quantity_0/RFDevice:hasMax
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:resource)
    where fn:exists($node_Quantity_0) and fn:exists($value_RadarFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Quantity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Quantity"]
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    where fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Quantity_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("RadarFrequencyBand_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("RadarFrequencyBand_0"))
  let $GRAPH_10 := xqllib:optional($GRAPH_2,$GRAPH_9,("IEDJammer_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("IEDJammer_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("SDR_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SDR_0"))),("SDR_0"))
