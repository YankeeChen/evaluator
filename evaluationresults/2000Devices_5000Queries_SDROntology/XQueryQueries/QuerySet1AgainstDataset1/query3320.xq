import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN210_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN210"]
    let $value_USRPN210_0 := fn:data($node_USRPN210_0/@rdf:about)
    where fn:exists($node_USRPN210_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN210_0">{$value_USRPN210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Satellite_0 in $doc_ObjectDescription
    let $value_Satellite_0 := fn:data($node_Satellite_0/@rdf:about)
    for $node_USRPN210_0 in $node_Satellite_0/RFDevice:isDeployedOn
    let $value_USRPN210_0 := fn:data($node_USRPN210_0/@rdf:resource)
    where fn:exists($node_Satellite_0) and fn:exists($value_USRPN210_0)
    return
      <xqllib:result>
        <xqllib:var name="Satellite_0">{$value_Satellite_0}</xqllib:var>
        <xqllib:var name="USRPN210_0">{$value_USRPN210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Satellite_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Satellite"]
    let $value_Satellite_0 := fn:data($node_Satellite_0/@rdf:about)
    where fn:exists($node_Satellite_0)
    return
      <xqllib:result>
        <xqllib:var name="Satellite_0">{$value_Satellite_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Satellite_0 in $doc_ObjectDescription
    let $value_Satellite_0 := fn:data($node_Satellite_0/@rdf:about)
    for $node_Entity_0 in $node_Satellite_0/RFDevice:supportsTuning
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Satellite_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Satellite_0">{$value_Satellite_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Process_0) and $node_Process_0/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_XilinxFPGA_0 in $doc_ObjectDescription
    let $value_XilinxFPGA_0 := fn:data($node_XilinxFPGA_0/@rdf:about)
    for $node_Entity_0 in $node_XilinxFPGA_0/Nuvio:compositeOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_XilinxFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="XilinxFPGA_0">{$value_XilinxFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    for $node_XilinxFPGA_0 in $node_Entity_1/RFDevice:hasProducer
    let $value_XilinxFPGA_0 := fn:data($node_XilinxFPGA_0/@rdf:resource)
    where fn:exists($node_Entity_1) and fn:exists($value_XilinxFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
        <xqllib:var name="XilinxFPGA_0">{$value_XilinxFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_XilinxFPGA_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription2000.owl#Producer_instance611"]/RFDevice:hasProducer
    let $value_XilinxFPGA_0 := fn:data($node_XilinxFPGA_0/@rdf:resource)
    where fn:exists($value_XilinxFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxFPGA_0">{$value_XilinxFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("XilinxFPGA_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_6,$GRAPH_9,("XilinxFPGA_0"))
  let $GRAPH_11 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_ElectricCharge_0 in $node_Entity_0/RFDevice:hasNoiseFigure
    let $value_ElectricCharge_0 := fn:data($node_ElectricCharge_0/@rdf:resource)
    where fn:exists($value_ElectricCharge_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectricCharge_0">{$value_ElectricCharge_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 :=  
    for $node_Process_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_Processor_0 in $doc_ObjectDescription
    let $value_Processor_0 := fn:data($node_Processor_0/@rdf:about)
    where fn:exists($node_Process_0) and fn:exists($node_Processor_0) and $node_Processor_0/RFDevice:hasTarget/@rdf:resource = $value_Process_0
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="Processor_0">{$value_Processor_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:optional($GRAPH_12,$GRAPH_13,())
  let $GRAPH_15 := xqllib:and($GRAPH_5,$GRAPH_14,("Entity_0","Process_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_4,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := ($GRAPH_3,$GRAPH_16)
  let $GRAPH_18 := xqllib:and($GRAPH_1,$GRAPH_17,("Satellite_0"))
  let $GRAPH_19 := xqllib:optional($GRAPH_0,$GRAPH_18,("USRPN210_0"))
  return
    $GRAPH_19
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN210_0"))),("USRPN210_0"))
