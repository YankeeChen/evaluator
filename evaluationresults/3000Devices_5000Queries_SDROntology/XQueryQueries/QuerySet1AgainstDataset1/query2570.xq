import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
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
    for $node_Spartan6FPGA_0 in $doc_ObjectDescription
    let $value_Spartan6FPGA_0 := fn:data($node_Spartan6FPGA_0/@rdf:about)
    for $node_USRPB205mini_i_0 in $node_Spartan6FPGA_0/Nuvio:compositeOf
    let $value_USRPB205mini_i_0 := fn:data($node_USRPB205mini_i_0/@rdf:resource)
    where fn:exists($node_Spartan6FPGA_0) and fn:exists($value_USRPB205mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="Spartan6FPGA_0">{$value_Spartan6FPGA_0}</xqllib:var>
        <xqllib:var name="USRPB205mini_i_0">{$value_USRPB205mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Spartan6FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#Spartan6FPGA"]
    let $value_Spartan6FPGA_0 := fn:data($node_Spartan6FPGA_0/@rdf:about)
    where fn:exists($node_Spartan6FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Spartan6FPGA_0">{$value_Spartan6FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Spartan6FPGA_0 in $node_Object_0/RFDevice:hasProducer
    let $value_Spartan6FPGA_0 := fn:data($node_Spartan6FPGA_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_Spartan6FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Spartan6FPGA_0">{$value_Spartan6FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_ElectronicAttack_0 in $doc_ObjectDescription
    let $value_ElectronicAttack_0 := fn:data($node_ElectronicAttack_0/@rdf:about)
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_ElectronicAttack_0) and fn:exists($node_Object_0) and $node_ElectronicAttack_0/RFDevice:hasCapability/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttack_0">{$value_ElectronicAttack_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_ElectronicAttack_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicAttack"]
    let $value_ElectronicAttack_0 := fn:data($node_ElectronicAttack_0/@rdf:about)
    where fn:exists($node_ElectronicAttack_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttack_0">{$value_ElectronicAttack_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("ElectronicAttack_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Object_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Spartan6FPGA_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Spartan6FPGA_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("USRPB205mini_i_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB205mini_i_0"))),("USRPB205mini_i_0"))
