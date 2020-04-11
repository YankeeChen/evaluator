import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN310_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN310"]
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:about)
    where fn:exists($node_USRPN310_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPN310_0 in $node_Entity_0/RFDevice:isProducerOf
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPN310_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_RadarJamming_0 in $doc_ObjectDescription
    let $value_RadarJamming_0 := fn:data($node_RadarJamming_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_RadarJamming_0) and $node_RadarJamming_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="RadarJamming_0">{$value_RadarJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_ARMProcessor_0 in $doc_ObjectDescription
    let $value_ARMProcessor_0 := fn:data($node_ARMProcessor_0/@rdf:about)
    for $node_Entity_0 in $node_ARMProcessor_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_ARMProcessor_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ARMProcessor_0">{$value_ARMProcessor_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_ARMProcessor_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#ARMProcessor"]
    let $value_ARMProcessor_0 := fn:data($node_ARMProcessor_0/@rdf:about)
    where fn:exists($node_ARMProcessor_0)
    return
      <xqllib:result>
        <xqllib:var name="ARMProcessor_0">{$value_ARMProcessor_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_ARMProcessor_0 in $doc_ObjectDescription
    let $value_ARMProcessor_0 := fn:data($node_ARMProcessor_0/@rdf:about)
    for $node_Kintex7FPGA_0 in $node_ARMProcessor_0/Nuvio:aggregateOf
    let $value_Kintex7FPGA_0 := fn:data($node_Kintex7FPGA_0/@rdf:resource)
    where fn:exists($node_ARMProcessor_0) and fn:exists($value_Kintex7FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="ARMProcessor_0">{$value_ARMProcessor_0}</xqllib:var>
        <xqllib:var name="Kintex7FPGA_0">{$value_Kintex7FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Kintex7FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#Kintex7FPGA"]
    let $value_Kintex7FPGA_0 := fn:data($node_Kintex7FPGA_0/@rdf:about)
    where fn:exists($node_Kintex7FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Kintex7FPGA_0">{$value_Kintex7FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("Kintex7FPGA_0"))
  let $GRAPH_11 := ($GRAPH_7,$GRAPH_10)
  let $GRAPH_12 := xqllib:and($GRAPH_5,$GRAPH_11,("ARMProcessor_0"))
  let $GRAPH_13 := xqllib:optional($GRAPH_4,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 :=  
    for $node_RadarJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarJamming"]
    let $value_RadarJamming_0 := fn:data($node_RadarJamming_0/@rdf:about)
    where fn:exists($node_RadarJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJamming_0">{$value_RadarJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_RadarJamming_0 in $node_Attribute_0/RFDevice:hasMaxSensedPower
    let $value_RadarJamming_0 := fn:data($node_RadarJamming_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_RadarJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="RadarJamming_0">{$value_RadarJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := xqllib:and($GRAPH_15,$GRAPH_16,("Attribute_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_14,$GRAPH_17,("RadarJamming_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_13,$GRAPH_18,("RadarJamming_0"))
  let $GRAPH_20 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InformationUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_21 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Quantity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 := xqllib:optional($GRAPH_20,$GRAPH_21,("Entity_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_19,$GRAPH_22,("Entity_0"))
  let $GRAPH_24 := ($GRAPH_3,$GRAPH_23)
  let $GRAPH_25 := xqllib:and($GRAPH_1,$GRAPH_24,("Entity_0"))
  let $GRAPH_26 := xqllib:and($GRAPH_0,$GRAPH_25,("USRPN310_0"))
  return
    $GRAPH_26
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN310_0"))),("USRPN310_0"))
