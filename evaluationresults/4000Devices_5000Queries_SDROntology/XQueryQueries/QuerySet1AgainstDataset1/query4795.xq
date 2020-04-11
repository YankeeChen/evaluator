import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
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
    for $node_FPGA_0 in $doc_ObjectDescription
    let $value_FPGA_0 := fn:data($node_FPGA_0/@rdf:about)
    for $node_USRPB200_210_0 in $node_FPGA_0/Nuvio:partOf
    let $value_USRPB200_210_0 := fn:data($node_USRPB200_210_0/@rdf:resource)
    where fn:exists($node_FPGA_0) and fn:exists($value_USRPB200_210_0)
    return
      <xqllib:result>
        <xqllib:var name="FPGA_0">{$value_FPGA_0}</xqllib:var>
        <xqllib:var name="USRPB200_210_0">{$value_USRPB200_210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Spartan3ADSPFPGA_0 in $doc_ObjectDescription
    let $value_Spartan3ADSPFPGA_0 := fn:data($node_Spartan3ADSPFPGA_0/@rdf:about)
    for $node_FPGA_0 in $node_Spartan3ADSPFPGA_0/Nuvio:compositeOf
    let $value_FPGA_0 := fn:data($node_FPGA_0/@rdf:resource)
    where fn:exists($value_FPGA_0) and fn:exists($node_Spartan3ADSPFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="FPGA_0">{$value_FPGA_0}</xqllib:var>
        <xqllib:var name="Spartan3ADSPFPGA_0">{$value_Spartan3ADSPFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Spartan3ADSPFPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#Spartan3ADSPFPGA"]
    let $value_Spartan3ADSPFPGA_0 := fn:data($node_Spartan3ADSPFPGA_0/@rdf:about)
    where fn:exists($node_Spartan3ADSPFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Spartan3ADSPFPGA_0">{$value_Spartan3ADSPFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_XC3SD1800AFPGA_0 in $doc_ObjectDescription
    let $value_XC3SD1800AFPGA_0 := fn:data($node_XC3SD1800AFPGA_0/@rdf:about)
    for $node_Spartan3ADSPFPGA_0 in $node_XC3SD1800AFPGA_0/Nuvio:compositeOf
    let $value_Spartan3ADSPFPGA_0 := fn:data($node_Spartan3ADSPFPGA_0/@rdf:resource)
    where fn:exists($value_Spartan3ADSPFPGA_0) and fn:exists($node_XC3SD1800AFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Spartan3ADSPFPGA_0">{$value_Spartan3ADSPFPGA_0}</xqllib:var>
        <xqllib:var name="XC3SD1800AFPGA_0">{$value_XC3SD1800AFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_XC3SD1800AFPGA_0 in $node_Var0/RFDevice:isProducerOf
    let $value_XC3SD1800AFPGA_0 := fn:data($node_XC3SD1800AFPGA_0/@rdf:resource)
    where fn:exists($node_Var0) and fn:exists($value_XC3SD1800AFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="XC3SD1800AFPGA_0">{$value_XC3SD1800AFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("XC3SD1800AFPGA_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Spartan3ADSPFPGA_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Spartan3ADSPFPGA_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("FPGA_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("USRPB200_210_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200_210_0"))),("USRPB200_210_0"))
