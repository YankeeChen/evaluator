import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ElectronicSupportSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicSupportSystem"]
    let $value_ElectronicSupportSystem_0 := fn:data($node_ElectronicSupportSystem_0/@rdf:about)
    where fn:exists($node_ElectronicSupportSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicSupportSystem_0">{$value_ElectronicSupportSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_ElectronicSupportSystem_0 in $doc_ObjectDescription
    let $value_ElectronicSupportSystem_0 := fn:data($node_ElectronicSupportSystem_0/@rdf:about)
    for $node_EmitterIdentification_0 in $node_ElectronicSupportSystem_0/RFDevice:hasCapability
    let $value_EmitterIdentification_0 := fn:data($node_EmitterIdentification_0/@rdf:resource)
    where fn:exists($node_ElectronicSupportSystem_0) and fn:exists($value_EmitterIdentification_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicSupportSystem_0">{$value_ElectronicSupportSystem_0}</xqllib:var>
        <xqllib:var name="EmitterIdentification_0">{$value_EmitterIdentification_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_EmitterIdentification_0 in $doc_ObjectDescription
    let $value_EmitterIdentification_0 := fn:data($node_EmitterIdentification_0/@rdf:about)
    for $node_Var0 in $node_EmitterIdentification_0/Nuvio:hasParticipant
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_EmitterIdentification_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="EmitterIdentification_0">{$value_EmitterIdentification_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200mini-i"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("Var0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("EmitterIdentification_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("ElectronicSupportSystem_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicSupportSystem_0"))),("ElectronicSupportSystem_0"))
