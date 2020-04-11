import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ElectronicAttackSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicAttackSystem"]
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:about)
    where fn:exists($node_ElectronicAttackSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadioComponent_0 in $doc_ObjectDescription
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:about)
    for $node_ElectronicAttackSystem_0 in $node_RadioComponent_0/Nuvio:aggregateOf
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:resource)
    where fn:exists($value_ElectronicAttackSystem_0) and fn:exists($node_RadioComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Spartan3ADSPFPGA_0 in $doc_ObjectDescription
    let $value_Spartan3ADSPFPGA_0 := fn:data($node_Spartan3ADSPFPGA_0/@rdf:about)
    for $node_RadioComponent_0 in $node_Spartan3ADSPFPGA_0/Nuvio:compositeOf
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:resource)
    where fn:exists($value_RadioComponent_0) and fn:exists($node_Spartan3ADSPFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
        <xqllib:var name="Spartan3ADSPFPGA_0">{$value_Spartan3ADSPFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Spartan3ADSPFPGA_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#Spartan6FPGA_instance0"]/Nuvio:aggregateOf
    let $value_Spartan3ADSPFPGA_0 := fn:data($node_Spartan3ADSPFPGA_0/@rdf:resource)
    where fn:exists($value_Spartan3ADSPFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Spartan3ADSPFPGA_0">{$value_Spartan3ADSPFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("Spartan3ADSPFPGA_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("RadioComponent_0"))
  let $GRAPH_6 := xqllib:optional($GRAPH_0,$GRAPH_5,("ElectronicAttackSystem_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicAttackSystem_0"))),("ElectronicAttackSystem_0"))
