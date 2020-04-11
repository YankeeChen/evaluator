import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB205mini_i_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB205mini-i"]
    let $value_USRPB205mini_i_0 := fn:data($node_USRPB205mini_i_0/@rdf:about)
    where fn:exists($node_USRPB205mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB205mini_i_0">{$value_USRPB205mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_XC6SLX150FPGA_0 in $doc_ObjectDescription
    let $value_XC6SLX150FPGA_0 := fn:data($node_XC6SLX150FPGA_0/@rdf:about)
    for $node_USRPB205mini_i_0 in $node_XC6SLX150FPGA_0/Nuvio:compositeOf
    let $value_USRPB205mini_i_0 := fn:data($node_USRPB205mini_i_0/@rdf:resource)
    where fn:exists($value_USRPB205mini_i_0) and fn:exists($node_XC6SLX150FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB205mini_i_0">{$value_USRPB205mini_i_0}</xqllib:var>
        <xqllib:var name="XC6SLX150FPGA_0">{$value_XC6SLX150FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_XC6SLX150FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC6SLX150FPGA"]
    let $value_XC6SLX150FPGA_0 := fn:data($node_XC6SLX150FPGA_0/@rdf:about)
    where fn:exists($node_XC6SLX150FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC6SLX150FPGA_0">{$value_XC6SLX150FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 := xqllib:and($GRAPH_1,$GRAPH_2,("XC6SLX150FPGA_0"))
  let $GRAPH_4 := xqllib:and($GRAPH_0,$GRAPH_3,("USRPB205mini_i_0"))
  return
    $GRAPH_4
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB205mini_i_0"))),("USRPB205mini_i_0"))
