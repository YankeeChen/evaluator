import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB2xxmini_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB2xxmini"]
    let $value_USRPB2xxmini_0 := fn:data($node_USRPB2xxmini_0/@rdf:about)
    where fn:exists($node_USRPB2xxmini_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xxmini_0">{$value_USRPB2xxmini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPB2xxmini_0 in $node_Var0/RFDevice:hasCapability
    let $value_USRPB2xxmini_0 := fn:data($node_USRPB2xxmini_0/@rdf:resource)
    where fn:exists($value_USRPB2xxmini_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xxmini_0">{$value_USRPB2xxmini_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Var0) and $node_Entity_0/Nuvio:hasProcessQuality/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
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
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#GNURadio"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    for $node_Entity_0 in $node_RadarJammer_0/Nuvio:partOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarJammer"]
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    where fn:exists($node_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_XC3SD3400AFPGA_0 in $doc_ObjectDescription
    let $value_XC3SD3400AFPGA_0 := fn:data($node_XC3SD3400AFPGA_0/@rdf:about)
    for $node_RadarJammer_0 in $node_XC3SD3400AFPGA_0/Nuvio:partOf
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:resource)
    where fn:exists($value_RadarJammer_0) and fn:exists($node_XC3SD3400AFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
        <xqllib:var name="XC3SD3400AFPGA_0">{$value_XC3SD3400AFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Producer_0 in $doc_ObjectDescription
    let $value_Producer_0 := fn:data($node_Producer_0/@rdf:about)
    for $node_XC3SD3400AFPGA_0 in $node_Producer_0/RFDevice:hasProducer
    let $value_XC3SD3400AFPGA_0 := fn:data($node_XC3SD3400AFPGA_0/@rdf:resource)
    where fn:exists($node_Producer_0) and fn:exists($value_XC3SD3400AFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Producer_0">{$value_Producer_0}</xqllib:var>
        <xqllib:var name="XC3SD3400AFPGA_0">{$value_XC3SD3400AFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Producer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Producer"]
    let $value_Producer_0 := fn:data($node_Producer_0/@rdf:about)
    where fn:exists($node_Producer_0)
    return
      <xqllib:result>
        <xqllib:var name="Producer_0">{$value_Producer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("Producer_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_7,$GRAPH_10,("XC3SD3400AFPGA_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_6,$GRAPH_11,("RadarJammer_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_5,$GRAPH_12,("RadarJammer_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_4,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_Entity_0 in $node_Power_0/RFDevice:hasPulseRepetitionInterval
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Power_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Power"]
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    where fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := xqllib:and($GRAPH_15,$GRAPH_16,("Power_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_14,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 := xqllib:optional($GRAPH_18,$GRAPH_19,("Entity_0"))
  let $GRAPH_21 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 := xqllib:and($GRAPH_20,$GRAPH_21,("Entity_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_3,$GRAPH_22,("Entity_0"))
  let $GRAPH_24 := xqllib:and($GRAPH_2,$GRAPH_23,("Entity_0"))
  let $GRAPH_25 := xqllib:and($GRAPH_1,$GRAPH_24,("Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_0,$GRAPH_25,("USRPB2xxmini_0"))
  return
    $GRAPH_26
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB2xxmini_0"))),("USRPB2xxmini_0"))
