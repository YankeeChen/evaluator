import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200mini_i_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200mini-i"]
    let $value_USRPB200mini_i_0 := fn:data($node_USRPB200mini_i_0/@rdf:about)
    where fn:exists($node_USRPB200mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_i_0">{$value_USRPB200mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPB200mini_i_0 in $doc_ObjectDescription
    let $value_USRPB200mini_i_0 := fn:data($node_USRPB200mini_i_0/@rdf:about)
    for $node_XC6SLX75FPGA_0 in $node_USRPB200mini_i_0/Nuvio:partOf
    let $value_XC6SLX75FPGA_0 := fn:data($node_XC6SLX75FPGA_0/@rdf:resource)
    where fn:exists($node_USRPB200mini_i_0) and fn:exists($value_XC6SLX75FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_i_0">{$value_USRPB200mini_i_0}</xqllib:var>
        <xqllib:var name="XC6SLX75FPGA_0">{$value_XC6SLX75FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_XC6SLX75FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC6SLX75FPGA"]
    let $value_XC6SLX75FPGA_0 := fn:data($node_XC6SLX75FPGA_0/@rdf:about)
    where fn:exists($node_XC6SLX75FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC6SLX75FPGA_0">{$value_XC6SLX75FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_XC6SLX75FPGA_0 in $node_Object_0/RFDevice:hasProducer
    let $value_XC6SLX75FPGA_0 := fn:data($node_XC6SLX75FPGA_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_XC6SLX75FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="XC6SLX75FPGA_0">{$value_XC6SLX75FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Angle_0 in $doc_ObjectDescription
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_Angle_0) and fn:exists($node_Object_0) and $node_Angle_0/RFDevice:hasWeight/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Object_0"))
  let $GRAPH_7 := ($GRAPH_3,$GRAPH_6)
  let $GRAPH_8 := xqllib:and($GRAPH_1,$GRAPH_7,("XC6SLX75FPGA_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_0,$GRAPH_8,("USRPB200mini_i_0"))
  return
    $GRAPH_9
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200mini_i_0"))),("USRPB200mini_i_0"))
