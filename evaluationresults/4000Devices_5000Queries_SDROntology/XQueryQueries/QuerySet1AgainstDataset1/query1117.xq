import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE313_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE313"]
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:about)
    where fn:exists($node_USRPE313_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPE313_0 in $doc_ObjectDescription
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:about)
    for $node_Object_0 in $node_USRPE313_0/Nuvio:compositeOf
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_USRPE313_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_RadarJamming_0 in $doc_ObjectDescription
    let $value_RadarJamming_0 := fn:data($node_RadarJamming_0/@rdf:about)
    where fn:exists($node_Object_0) and fn:exists($node_RadarJamming_0) and $node_RadarJamming_0/Nuvio:participatesIn/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="RadarJamming_0">{$value_RadarJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RFSystem_0 in $doc_ObjectDescription
    let $value_RFSystem_0 := fn:data($node_RFSystem_0/@rdf:about)
    for $node_RadarJamming_0 in $node_RFSystem_0/Nuvio:hasParticipant
    let $value_RadarJamming_0 := fn:data($node_RadarJamming_0/@rdf:resource)
    where fn:exists($node_RFSystem_0) and fn:exists($value_RadarJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="RFSystem_0">{$value_RFSystem_0}</xqllib:var>
        <xqllib:var name="RadarJamming_0">{$value_RadarJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_RFSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RFSystem"]
    let $value_RFSystem_0 := fn:data($node_RFSystem_0/@rdf:about)
    where fn:exists($node_RFSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="RFSystem_0">{$value_RFSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_IEDJammer_0 in $doc_ObjectDescription
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:about)
    for $node_RFSystem_0 in $node_IEDJammer_0/Nuvio:aggregateOf
    let $value_RFSystem_0 := fn:data($node_RFSystem_0/@rdf:resource)
    where fn:exists($node_IEDJammer_0) and fn:exists($value_RFSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
        <xqllib:var name="RFSystem_0">{$value_RFSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_IEDJammer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IEDJammer"]
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:about)
    where fn:exists($node_IEDJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_RadarFrequencyBand_0 in $doc_ObjectDescription
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:about)
    for $node_IEDJammer_0 in $node_RadarFrequencyBand_0/RFDevice:hasFrequencyRange
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:resource)
    where fn:exists($value_IEDJammer_0) and fn:exists($node_RadarFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Height_0 in $doc_ObjectDescription
    let $value_Height_0 := fn:data($node_Height_0/@rdf:about)
    for $node_RadarFrequencyBand_0 in $node_Height_0/RFDevice:hasMin
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:resource)
    where fn:exists($node_Height_0) and fn:exists($value_RadarFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="Height_0">{$value_Height_0}</xqllib:var>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Height_0 in $node_Var0/Nuvio:hasValue
    let $value_Height_0 := fn:data($node_Height_0/@rdf:resource)
    where fn:exists($value_Height_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Height_0">{$value_Height_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Height_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_8,$GRAPH_11,("RadarFrequencyBand_0"))
  let $GRAPH_13 := ($GRAPH_7,$GRAPH_12)
  let $GRAPH_14 := xqllib:and($GRAPH_5,$GRAPH_13,("IEDJammer_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_4,$GRAPH_14,("RFSystem_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_3,$GRAPH_15,("RFSystem_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_2,$GRAPH_16,("RadarJamming_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_1,$GRAPH_17,("Object_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_0,$GRAPH_18,("USRPE313_0"))
  return
    $GRAPH_19
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE313_0"))),("USRPE313_0"))
