import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPX300_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPX300"]
    let $value_USRPX300_0 := fn:data($node_USRPX300_0/@rdf:about)
    where fn:exists($node_USRPX300_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX300_0">{$value_USRPX300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Series7FPGA_0 in $doc_ObjectDescription
    let $value_Series7FPGA_0 := fn:data($node_Series7FPGA_0/@rdf:about)
    for $node_USRPX300_0 in $node_Series7FPGA_0/Nuvio:compositeOf
    let $value_USRPX300_0 := fn:data($node_USRPX300_0/@rdf:resource)
    where fn:exists($node_Series7FPGA_0) and fn:exists($value_USRPX300_0)
    return
      <xqllib:result>
        <xqllib:var name="Series7FPGA_0">{$value_Series7FPGA_0}</xqllib:var>
        <xqllib:var name="USRPX300_0">{$value_USRPX300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Series7FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#Series7FPGA"]
    let $value_Series7FPGA_0 := fn:data($node_Series7FPGA_0/@rdf:about)
    where fn:exists($node_Series7FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Series7FPGA_0">{$value_Series7FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Series7FPGA_0 in $node_Var0/RFDevice:hasProducer
    let $value_Series7FPGA_0 := fn:data($node_Series7FPGA_0/@rdf:resource)
    where fn:exists($value_Series7FPGA_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Series7FPGA_0">{$value_Series7FPGA_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("Series7FPGA_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("Series7FPGA_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("USRPX300_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPX300_0"))),("USRPX300_0"))
