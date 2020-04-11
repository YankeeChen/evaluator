import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SDR_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#SDR"]
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:about)
    where fn:exists($node_SDR_0)
    return
      <xqllib:result>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadioComponent_0 in $doc_ObjectDescription
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:about)
    for $node_SDR_0 in $node_RadioComponent_0/Nuvio:partOf
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:resource)
    where fn:exists($node_RadioComponent_0) and fn:exists($value_SDR_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RadioComponent_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioComponent"]
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:about)
    where fn:exists($node_RadioComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_XC7K325TFPGA_0 in $doc_ObjectDescription
    let $value_XC7K325TFPGA_0 := fn:data($node_XC7K325TFPGA_0/@rdf:about)
    for $node_RadioComponent_0 in $node_XC7K325TFPGA_0/Nuvio:partOf
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:resource)
    where fn:exists($value_RadioComponent_0) and fn:exists($node_XC7K325TFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
        <xqllib:var name="XC7K325TFPGA_0">{$value_XC7K325TFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_XC7K325TFPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC7K325TFPGA"]
    let $value_XC7K325TFPGA_0 := fn:data($node_XC7K325TFPGA_0/@rdf:about)
    where fn:exists($node_XC7K325TFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC7K325TFPGA_0">{$value_XC7K325TFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_XC7K325TFPGA_0 in $doc_ObjectDescription
    let $value_XC7K325TFPGA_0 := fn:data($node_XC7K325TFPGA_0/@rdf:about)
    for $node_XC3SD3400AFPGA_0 in $node_XC7K325TFPGA_0/Nuvio:partOf
    let $value_XC3SD3400AFPGA_0 := fn:data($node_XC3SD3400AFPGA_0/@rdf:resource)
    where fn:exists($value_XC3SD3400AFPGA_0) and fn:exists($node_XC7K325TFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC3SD3400AFPGA_0">{$value_XC3SD3400AFPGA_0}</xqllib:var>
        <xqllib:var name="XC7K325TFPGA_0">{$value_XC7K325TFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("XC7K325TFPGA_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("XC7K325TFPGA_0"))
  let $GRAPH_9 := ($GRAPH_3,$GRAPH_8)
  let $GRAPH_10 := xqllib:and($GRAPH_1,$GRAPH_9,("RadioComponent_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_0,$GRAPH_10,("SDR_0"))
  return
    $GRAPH_11
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SDR_0"))),("SDR_0"))
