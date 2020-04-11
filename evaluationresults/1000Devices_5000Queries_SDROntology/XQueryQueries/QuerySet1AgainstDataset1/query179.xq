import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_PulseDopplerRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseDopplerRadar"]
    let $value_PulseDopplerRadar_0 := fn:data($node_PulseDopplerRadar_0/@rdf:about)
    where fn:exists($node_PulseDopplerRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadar_0">{$value_PulseDopplerRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadioComponent_0 in $doc_ObjectDescription
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:about)
    for $node_PulseDopplerRadar_0 in $node_RadioComponent_0/Nuvio:partOf
    let $value_PulseDopplerRadar_0 := fn:data($node_PulseDopplerRadar_0/@rdf:resource)
    where fn:exists($value_PulseDopplerRadar_0) and fn:exists($node_RadioComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadar_0">{$value_PulseDopplerRadar_0}</xqllib:var>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_RadioComponent_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioComponent"]
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:about)
    where fn:exists($node_RadioComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Series7FPGA_0 in $doc_ObjectDescription
    let $value_Series7FPGA_0 := fn:data($node_Series7FPGA_0/@rdf:about)
    for $node_RadioComponent_0 in $node_Series7FPGA_0/Nuvio:compositeOf
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:resource)
    where fn:exists($value_RadioComponent_0) and fn:exists($node_Series7FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
        <xqllib:var name="Series7FPGA_0">{$value_Series7FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Series7FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#Series7FPGA"]
    let $value_Series7FPGA_0 := fn:data($node_Series7FPGA_0/@rdf:about)
    where fn:exists($node_Series7FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Series7FPGA_0">{$value_Series7FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    for $node_Series7FPGA_0 in $node_RadarJammer_0/Nuvio:partOf
    let $value_Series7FPGA_0 := fn:data($node_Series7FPGA_0/@rdf:resource)
    where fn:exists($node_RadarJammer_0) and fn:exists($value_Series7FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
        <xqllib:var name="Series7FPGA_0">{$value_Series7FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_DRFMJamming_0 in $doc_ObjectDescription
    let $value_DRFMJamming_0 := fn:data($node_DRFMJamming_0/@rdf:about)
    for $node_RadarJammer_0 in $node_DRFMJamming_0/RFDevice:hasCapability
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:resource)
    where fn:exists($node_DRFMJamming_0) and fn:exists($value_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="DRFMJamming_0">{$value_DRFMJamming_0}</xqllib:var>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("RadarJammer_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("Series7FPGA_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("Series7FPGA_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("RadioComponent_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("RadioComponent_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("PulseDopplerRadar_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseDopplerRadar_0"))),("PulseDopplerRadar_0"))
