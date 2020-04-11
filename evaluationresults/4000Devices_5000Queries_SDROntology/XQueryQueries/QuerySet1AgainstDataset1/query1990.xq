import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE313_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE313"]
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:about)
    where fn:exists($node_USRPE313_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPE313_0 in $doc_ObjectDescription
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:about)
    for $node_Transmitter_0 in $node_USRPE313_0/Nuvio:partOf
    let $value_Transmitter_0 := fn:data($node_Transmitter_0/@rdf:resource)
    where fn:exists($value_Transmitter_0) and fn:exists($node_USRPE313_0)
    return
      <xqllib:result>
        <xqllib:var name="Transmitter_0">{$value_Transmitter_0}</xqllib:var>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    for $node_Transmitter_0 in $node_RadioFrequencyBand_0/RFDevice:hasFrequencyAccuracy
    let $value_Transmitter_0 := fn:data($node_Transmitter_0/@rdf:resource)
    where fn:exists($node_RadioFrequencyBand_0) and fn:exists($value_Transmitter_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
        <xqllib:var name="Transmitter_0">{$value_Transmitter_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioFrequencyBand"]
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    where fn:exists($node_RadioFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Quantity_0 in $doc_ObjectDescription
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    for $node_RadioFrequencyBand_0 in $node_Quantity_0/RFDevice:hasMin
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:resource)
    where fn:exists($node_Quantity_0) and fn:exists($value_RadioFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Quantity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Quantity"]
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    where fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Quantity_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("RadioFrequencyBand_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("RadioFrequencyBand_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Transmitter_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("USRPE313_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE313_0"))),("USRPE313_0"))
