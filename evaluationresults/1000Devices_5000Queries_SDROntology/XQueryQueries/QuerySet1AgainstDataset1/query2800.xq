import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200_210_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200-210"]
    let $value_USRPB200_210_0 := fn:data($node_USRPB200_210_0/@rdf:about)
    where fn:exists($node_USRPB200_210_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200_210_0">{$value_USRPB200_210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPB200_210_0 in $doc_ObjectDescription
    let $value_USRPB200_210_0 := fn:data($node_USRPB200_210_0/@rdf:about)
    for $node_Var0 in $node_USRPB200_210_0/RFDevice:supportsTransmitting
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_USRPB200_210_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200_210_0">{$value_USRPB200_210_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_RadarFrequencyBand_0 in $node_Var0/RFDevice:hasBandwidthRange
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:resource)
    where fn:exists($value_RadarFrequencyBand_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RadarFrequencyBand_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarFrequencyBand"]
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:about)
    where fn:exists($node_RadarFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_RadarFrequencyBand_0 in $node_Entity_0/RFDevice:hasMin
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_RadarFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Satellite"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_4,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_3,$GRAPH_10,("RadarFrequencyBand_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_2,$GRAPH_11,("RadarFrequencyBand_0"))
  let $GRAPH_13 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CommunicationsJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("Var0"))
  let $GRAPH_15 := xqllib:and($GRAPH_1,$GRAPH_14,("Var0"))
  let $GRAPH_16 := xqllib:and($GRAPH_0,$GRAPH_15,("USRPB200_210_0"))
  return
    $GRAPH_16
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200_210_0"))),("USRPB200_210_0"))
