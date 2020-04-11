import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200"]
    let $value_USRPB200_0 := fn:data($node_USRPB200_0/@rdf:about)
    where fn:exists($node_USRPB200_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200_0">{$value_USRPB200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_XilinxFPGA_0 in $doc_ObjectDescription
    let $value_XilinxFPGA_0 := fn:data($node_XilinxFPGA_0/@rdf:about)
    for $node_USRPB200_0 in $node_XilinxFPGA_0/Nuvio:compositeOf
    let $value_USRPB200_0 := fn:data($node_USRPB200_0/@rdf:resource)
    where fn:exists($value_USRPB200_0) and fn:exists($node_XilinxFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200_0">{$value_USRPB200_0}</xqllib:var>
        <xqllib:var name="XilinxFPGA_0">{$value_XilinxFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_XilinxFPGA_0 in $doc_ObjectDescription[RFDevice:isProducerOf/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#Xilinx"]
    let $value_XilinxFPGA_0 := fn:data($node_XilinxFPGA_0/@rdf:about)
    where fn:exists($node_XilinxFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxFPGA_0">{$value_XilinxFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 := xqllib:and($GRAPH_1,$GRAPH_2,("XilinxFPGA_0"))
  let $GRAPH_4 := xqllib:and($GRAPH_0,$GRAPH_3,("USRPB200_0"))
  return
    $GRAPH_4
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200_0"))),("USRPB200_0"))
