import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
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
    for $node_XC7K325TFPGA_0 in $doc_ObjectDescription
    let $value_XC7K325TFPGA_0 := fn:data($node_XC7K325TFPGA_0/@rdf:about)
    for $node_USRPX300_0 in $node_XC7K325TFPGA_0/Nuvio:partOf
    let $value_USRPX300_0 := fn:data($node_USRPX300_0/@rdf:resource)
    where fn:exists($value_USRPX300_0) and fn:exists($node_XC7K325TFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX300_0">{$value_USRPX300_0}</xqllib:var>
        <xqllib:var name="XC7K325TFPGA_0">{$value_XC7K325TFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_XC7K325TFPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC7K325TFPGA"]
    let $value_XC7K325TFPGA_0 := fn:data($node_XC7K325TFPGA_0/@rdf:about)
    where fn:exists($node_XC7K325TFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC7K325TFPGA_0">{$value_XC7K325TFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 := xqllib:and($GRAPH_1,$GRAPH_2,("XC7K325TFPGA_0"))
  let $GRAPH_4 := xqllib:and($GRAPH_0,$GRAPH_3,("USRPX300_0"))
  return
    $GRAPH_4
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPX300_0"))),("USRPX300_0"))
