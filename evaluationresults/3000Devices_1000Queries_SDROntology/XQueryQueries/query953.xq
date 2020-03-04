import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
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
    for $node_IEDTrigger_0 in $doc_ObjectDescription
    let $value_IEDTrigger_0 := fn:data($node_IEDTrigger_0/@rdf:about)
    for $node_USRPN310_0 in $node_IEDTrigger_0/Nuvio:partOf
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:resource)
    where fn:exists($node_IEDTrigger_0) and fn:exists($value_USRPN310_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDTrigger_0">{$value_IEDTrigger_0}</xqllib:var>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_IEDTrigger_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IEDTrigger"]
    let $value_IEDTrigger_0 := fn:data($node_IEDTrigger_0/@rdf:about)
    where fn:exists($node_IEDTrigger_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDTrigger_0">{$value_IEDTrigger_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_FreqencyRange_0 in $doc_ObjectDescription
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:about)
    for $node_IEDTrigger_0 in $node_FreqencyRange_0/RFDevice:hasFrequencyAccuracy
    let $value_IEDTrigger_0 := fn:data($node_IEDTrigger_0/@rdf:resource)
    where fn:exists($node_FreqencyRange_0) and fn:exists($value_IEDTrigger_0)
    return
      <xqllib:result>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
        <xqllib:var name="IEDTrigger_0">{$value_IEDTrigger_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_FreqencyRange_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FreqencyRange"]
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:about)
    where fn:exists($node_FreqencyRange_0)
    return
      <xqllib:result>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Velocity_0 in $doc_ObjectDescription
    let $value_Velocity_0 := fn:data($node_Velocity_0/@rdf:about)
    for $node_FreqencyRange_0 in $node_Velocity_0/RFDevice:hasMax
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:resource)
    where fn:exists($value_FreqencyRange_0) and fn:exists($node_Velocity_0)
    return
      <xqllib:result>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
        <xqllib:var name="Velocity_0">{$value_Velocity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("FreqencyRange_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("FreqencyRange_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("IEDTrigger_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("IEDTrigger_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("USRPN310_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN310_0"))),("USRPN310_0"))
