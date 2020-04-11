import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN310_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN310"]
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:about)
    where fn:exists($node_USRPN310_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPN310_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPN310_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RangeGatePullOffJamming_0 in $doc_ObjectDescription
    let $value_RangeGatePullOffJamming_0 := fn:data($node_RangeGatePullOffJamming_0/@rdf:about)
    for $node_Entity_0 in $node_RangeGatePullOffJamming_0/Nuvio:hasParticipant
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_RangeGatePullOffJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="RangeGatePullOffJamming_0">{$value_RangeGatePullOffJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_RangeGatePullOffJamming_0 in $node_Power_0/RFDevice:hasMaxOutputPower
    let $value_RangeGatePullOffJamming_0 := fn:data($node_RangeGatePullOffJamming_0/@rdf:resource)
    where fn:exists($node_Power_0) and fn:exists($value_RangeGatePullOffJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
        <xqllib:var name="RangeGatePullOffJamming_0">{$value_RangeGatePullOffJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("RangeGatePullOffJamming_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Entity_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Entity_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("USRPN310_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN310_0"))),("USRPN310_0"))
