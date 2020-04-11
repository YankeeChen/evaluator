import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
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
    for $node_FPGA_0 in $doc_ObjectDescription
    let $value_FPGA_0 := fn:data($node_FPGA_0/@rdf:about)
    for $node_USRPB200_0 in $node_FPGA_0/Nuvio:partOf
    let $value_USRPB200_0 := fn:data($node_USRPB200_0/@rdf:resource)
    where fn:exists($node_FPGA_0) and fn:exists($value_USRPB200_0)
    return
      <xqllib:result>
        <xqllib:var name="FPGA_0">{$value_FPGA_0}</xqllib:var>
        <xqllib:var name="USRPB200_0">{$value_USRPB200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#FPGA"]
    let $value_FPGA_0 := fn:data($node_FPGA_0/@rdf:about)
    where fn:exists($node_FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="FPGA_0">{$value_FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_FPGA_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_FPGA_0 := fn:data($node_FPGA_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="FPGA_0">{$value_FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicAttack"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InformationUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AngleValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := ($GRAPH_7,$GRAPH_8)
  let $GRAPH_11 :=  
    for $node_Component_0 in $doc_ObjectDescription
    let $value_Component_0 := fn:data($node_Component_0/@rdf:about)
    for $node_Entity_0 in $node_Component_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_Component_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Component_0">{$value_Component_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Component_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Component"]
    let $value_Component_0 := fn:data($node_Component_0/@rdf:about)
    where fn:exists($node_Component_0)
    return
      <xqllib:result>
        <xqllib:var name="Component_0">{$value_Component_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := ($GRAPH_11,$GRAPH_12)
  let $GRAPH_14 := xqllib:and($GRAPH_9,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := ($GRAPH_5,$GRAPH_14)
  let $GRAPH_16 := xqllib:and($GRAPH_3,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_2,$GRAPH_16,("FPGA_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_1,$GRAPH_17,("FPGA_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_0,$GRAPH_18,("USRPB200_0"))
  return
    $GRAPH_19
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200_0"))),("USRPB200_0"))
