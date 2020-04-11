import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
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
    for $node_Receiver_0 in $doc_ObjectDescription
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:about)
    for $node_USRPB205mini_i_0 in $node_Receiver_0/Nuvio:aggregateOf
    let $value_USRPB205mini_i_0 := fn:data($node_USRPB205mini_i_0/@rdf:resource)
    where fn:exists($node_Receiver_0) and fn:exists($value_USRPB205mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="Receiver_0">{$value_Receiver_0}</xqllib:var>
        <xqllib:var name="USRPB205mini_i_0">{$value_USRPB205mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Receiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiver"]
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:about)
    where fn:exists($node_Receiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Receiver_0">{$value_Receiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_Receiver_0 in $node_Process_0/RFDevice:supportsSpectrumSensing
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:resource)
    where fn:exists($node_Process_0) and fn:exists($value_Receiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="Receiver_0">{$value_Receiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Process_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_USRPB200mini_i_0 in $doc_ObjectDescription
    let $value_USRPB200mini_i_0 := fn:data($node_USRPB200mini_i_0/@rdf:about)
    where fn:exists($node_Process_0) and fn:exists($node_USRPB200mini_i_0) and $node_USRPB200mini_i_0/Nuvio:participatesIn/@rdf:resource = $value_Process_0
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="USRPB200mini_i_0">{$value_USRPB200mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_USRPB200mini_i_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200mini-i"]
    let $value_USRPB200mini_i_0 := fn:data($node_USRPB200mini_i_0/@rdf:about)
    where fn:exists($node_USRPB200mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_i_0">{$value_USRPB200mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_SuperheterodyneReceiver_0 in $doc_ObjectDescription
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:about)
    for $node_USRPB200mini_i_0 in $node_SuperheterodyneReceiver_0/Nuvio:aggregateOf
    let $value_USRPB200mini_i_0 := fn:data($node_USRPB200mini_i_0/@rdf:resource)
    where fn:exists($node_SuperheterodyneReceiver_0) and fn:exists($value_USRPB200mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="SuperheterodyneReceiver_0">{$value_SuperheterodyneReceiver_0}</xqllib:var>
        <xqllib:var name="USRPB200mini_i_0">{$value_USRPB200mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_SuperheterodyneReceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SuperheterodyneReceiver"]
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:about)
    where fn:exists($node_SuperheterodyneReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="SuperheterodyneReceiver_0">{$value_SuperheterodyneReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_SuperheterodyneReceiver_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#Instance47"]/Nuvio:partOf
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:resource)
    where fn:exists($value_SuperheterodyneReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="SuperheterodyneReceiver_0">{$value_SuperheterodyneReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("SuperheterodyneReceiver_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_6,$GRAPH_9,("SuperheterodyneReceiver_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_5,$GRAPH_10,("USRPB200mini_i_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_4,$GRAPH_11,("USRPB200mini_i_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_3,$GRAPH_12,("Process_0"))
  let $GRAPH_14 := xqllib:optional($GRAPH_2,$GRAPH_13,("Receiver_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_1,$GRAPH_14,("Receiver_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_0,$GRAPH_15,("USRPB205mini_i_0"))
  return
    $GRAPH_16
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB205mini_i_0"))),("USRPB205mini_i_0"))
