import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN300_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN300"]
    let $value_USRPN300_0 := fn:data($node_USRPN300_0/@rdf:about)
    where fn:exists($node_USRPN300_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN300_0">{$value_USRPN300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadioComponent_0 in $doc_ObjectDescription
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:about)
    for $node_USRPN300_0 in $node_RadioComponent_0/Nuvio:compositeOf
    let $value_USRPN300_0 := fn:data($node_USRPN300_0/@rdf:resource)
    where fn:exists($node_RadioComponent_0) and fn:exists($value_USRPN300_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
        <xqllib:var name="USRPN300_0">{$value_USRPN300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_XC6SLX75FPGA_0 in $doc_ObjectDescription
    let $value_XC6SLX75FPGA_0 := fn:data($node_XC6SLX75FPGA_0/@rdf:about)
    for $node_RadioComponent_0 in $node_XC6SLX75FPGA_0/Nuvio:partOf
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:resource)
    where fn:exists($value_RadioComponent_0) and fn:exists($node_XC6SLX75FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
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
    for $node_XC6SLX75FPGA_0 in $node_Object_0/RFDevice:isProducerOf
    let $value_XC6SLX75FPGA_0 := fn:data($node_XC6SLX75FPGA_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_XC6SLX75FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="XC6SLX75FPGA_0">{$value_XC6SLX75FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Quality_0 in $doc_ObjectDescription
    let $value_Quality_0 := fn:data($node_Quality_0/@rdf:about)
    for $node_Object_0 in $node_Quality_0/Nuvio:hasObjectQuality
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_Quality_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Quality_0">{$value_Quality_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Object_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("XC6SLX75FPGA_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("XC6SLX75FPGA_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("RadioComponent_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("USRPN300_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN300_0"))),("USRPN300_0"))
