import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB2xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB2xx"]
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:about)
    where fn:exists($node_USRPB2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPB2xx_0 in $node_Var0/Nuvio:partOf
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:resource)
    where fn:exists($value_USRPB2xx_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/SDR.owl#Data_12bit"]/RFDevice:hasResolution
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Jamming_0 in $doc_ObjectDescription
    let $value_Jamming_0 := fn:data($node_Jamming_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Jamming_0) and fn:exists($node_Var0) and $node_Jamming_0/Nuvio:hasSubprocess/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Jamming_0">{$value_Jamming_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Jamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Jamming"]
    let $value_Jamming_0 := fn:data($node_Jamming_0/@rdf:about)
    where fn:exists($node_Jamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Jamming_0">{$value_Jamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := ($GRAPH_4,$GRAPH_5)
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_AdjustableBandwidthSensing_0 in $node_Var0/RFDevice:supportsJamming
    let $value_AdjustableBandwidthSensing_0 := fn:data($node_AdjustableBandwidthSensing_0/@rdf:resource)
    where fn:exists($value_AdjustableBandwidthSensing_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="AdjustableBandwidthSensing_0">{$value_AdjustableBandwidthSensing_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_AdjustableBandwidthSensing_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AdjustableBandwidthSensing"]
    let $value_AdjustableBandwidthSensing_0 := fn:data($node_AdjustableBandwidthSensing_0/@rdf:about)
    where fn:exists($node_AdjustableBandwidthSensing_0)
    return
      <xqllib:result>
        <xqllib:var name="AdjustableBandwidthSensing_0">{$value_AdjustableBandwidthSensing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_AdjustableBandwidthSensing_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpectrumSensing"]
    let $value_AdjustableBandwidthSensing_0 := fn:data($node_AdjustableBandwidthSensing_0/@rdf:about)
    where fn:exists($node_AdjustableBandwidthSensing_0)
    return
      <xqllib:result>
        <xqllib:var name="AdjustableBandwidthSensing_0">{$value_AdjustableBandwidthSensing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_AdjustableBandwidthSensing_0 in $node_Object_0/RFDevice:hasBandwidthRange
    let $value_AdjustableBandwidthSensing_0 := fn:data($node_AdjustableBandwidthSensing_0/@rdf:resource)
    where fn:exists($value_AdjustableBandwidthSensing_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="AdjustableBandwidthSensing_0">{$value_AdjustableBandwidthSensing_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("AdjustableBandwidthSensing_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_8,$GRAPH_11,("AdjustableBandwidthSensing_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_7,$GRAPH_12,("AdjustableBandwidthSensing_0"))
  let $GRAPH_14 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("Var0"))
  let $GRAPH_16 := xqllib:and($GRAPH_6,$GRAPH_15,("Var0"))
  let $GRAPH_17 := xqllib:optional($GRAPH_2,$GRAPH_16,("Var0"))
  let $GRAPH_18 := xqllib:and($GRAPH_1,$GRAPH_17,("Var0"))
  let $GRAPH_19 := xqllib:and($GRAPH_0,$GRAPH_18,("USRPB2xx_0"))
  return
    $GRAPH_19
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB2xx_0"))),("USRPB2xx_0"))
