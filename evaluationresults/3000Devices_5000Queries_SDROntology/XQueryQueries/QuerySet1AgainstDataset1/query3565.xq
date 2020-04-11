import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
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
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPN210_0 in $node_Var0/Nuvio:partOf
    let $value_USRPN210_0 := fn:data($node_USRPN210_0/@rdf:resource)
    where fn:exists($value_USRPN210_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN210_0">{$value_USRPN210_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DAC"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Spartan6FPGA_0 in $doc_ObjectDescription
    let $value_Spartan6FPGA_0 := fn:data($node_Spartan6FPGA_0/@rdf:about)
    for $node_Var0 in $node_Spartan6FPGA_0/Nuvio:partOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Spartan6FPGA_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Spartan6FPGA_0">{$value_Spartan6FPGA_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Spartan6FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#Spartan6FPGA"]
    let $value_Spartan6FPGA_0 := fn:data($node_Spartan6FPGA_0/@rdf:about)
    where fn:exists($node_Spartan6FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Spartan6FPGA_0">{$value_Spartan6FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Spartan6FPGA_0 in $node_Var1/RFDevice:isProducerOf
    let $value_Spartan6FPGA_0 := fn:data($node_Spartan6FPGA_0/@rdf:resource)
    where fn:exists($value_Spartan6FPGA_0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Spartan6FPGA_0">{$value_Spartan6FPGA_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Spartan6FPGA_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Spartan6FPGA_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Var0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Var0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("USRPN210_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN210_0"))),("USRPN210_0"))
