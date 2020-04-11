import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200mini_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200mini"]
    let $value_USRPB200mini_0 := fn:data($node_USRPB200mini_0/@rdf:about)
    where fn:exists($node_USRPB200mini_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_0">{$value_USRPB200mini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_XC6SLX75FPGA_0 in $doc_ObjectDescription
    let $value_XC6SLX75FPGA_0 := fn:data($node_XC6SLX75FPGA_0/@rdf:about)
    for $node_USRPB200mini_0 in $node_XC6SLX75FPGA_0/Nuvio:partOf
    let $value_USRPB200mini_0 := fn:data($node_USRPB200mini_0/@rdf:resource)
    where fn:exists($value_USRPB200mini_0) and fn:exists($node_XC6SLX75FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_0">{$value_USRPB200mini_0}</xqllib:var>
        <xqllib:var name="XC6SLX75FPGA_0">{$value_XC6SLX75FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_XC6SLX75FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC6SLX75FPGA"]
    let $value_XC6SLX75FPGA_0 := fn:data($node_XC6SLX75FPGA_0/@rdf:about)
    where fn:exists($node_XC6SLX75FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC6SLX75FPGA_0">{$value_XC6SLX75FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_XC6SLX75FPGA_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_XC6SLX75FPGA_0 := fn:data($node_XC6SLX75FPGA_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_XC6SLX75FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="XC6SLX75FPGA_0">{$value_XC6SLX75FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_ContinuousWaveRadarModulation_0 in $node_Entity_0/Nuvio:relevantIndividual
    let $value_ContinuousWaveRadarModulation_0 := fn:data($node_ContinuousWaveRadarModulation_0/@rdf:resource)
    where fn:exists($value_ContinuousWaveRadarModulation_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadarModulation_0">{$value_ContinuousWaveRadarModulation_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_ContinuousWaveRadarModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ContinuousWaveRadarModulation"]
    let $value_ContinuousWaveRadarModulation_0 := fn:data($node_ContinuousWaveRadarModulation_0/@rdf:about)
    where fn:exists($node_ContinuousWaveRadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadarModulation_0">{$value_ContinuousWaveRadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("ContinuousWaveRadarModulation_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Entity_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("XC6SLX75FPGA_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("XC6SLX75FPGA_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("USRPB200mini_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200mini_0"))),("USRPB200mini_0"))
