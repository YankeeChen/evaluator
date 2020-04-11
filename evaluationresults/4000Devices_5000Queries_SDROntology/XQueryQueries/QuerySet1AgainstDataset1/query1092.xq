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
    for $node_USRPB200_0 in $doc_ObjectDescription
    let $value_USRPB200_0 := fn:data($node_USRPB200_0/@rdf:about)
    for $node_XC6SLX75FPGA_0 in $node_USRPB200_0/Nuvio:compositeOf
    let $value_XC6SLX75FPGA_0 := fn:data($node_XC6SLX75FPGA_0/@rdf:resource)
    where fn:exists($node_USRPB200_0) and fn:exists($value_XC6SLX75FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200_0">{$value_USRPB200_0}</xqllib:var>
        <xqllib:var name="XC6SLX75FPGA_0">{$value_XC6SLX75FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_XC6SLX75FPGA_0 in $doc_ObjectDescription
    let $value_XC6SLX75FPGA_0 := fn:data($node_XC6SLX75FPGA_0/@rdf:about)
    for $node_Entity_0 in $node_XC6SLX75FPGA_0/RFDevice:hasProducer
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_XC6SLX75FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="XC6SLX75FPGA_0">{$value_XC6SLX75FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicSupportSystem"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InformationUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Distance"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := ($GRAPH_6,$GRAPH_7)
  let $GRAPH_9 :=  
    for $node_AngleUnit_0 in $doc_ObjectDescription
    let $value_AngleUnit_0 := fn:data($node_AngleUnit_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_AngleUnit_0) and fn:exists($node_Entity_0) and $node_AngleUnit_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="AngleUnit_0">{$value_AngleUnit_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_AngleUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AngleUnit"]
    let $value_AngleUnit_0 := fn:data($node_AngleUnit_0/@rdf:about)
    where fn:exists($node_AngleUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="AngleUnit_0">{$value_AngleUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("AngleUnit_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_8,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_4,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_3,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_2,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_1,$GRAPH_15,("XC6SLX75FPGA_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_0,$GRAPH_16,("USRPB200_0"))
  return
    $GRAPH_17
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200_0"))),("USRPB200_0"))
