import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
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
    for $node_IEDJammer_0 in $doc_ObjectDescription
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:about)
    for $node_USRPN310_0 in $node_IEDJammer_0/Nuvio:aggregateOf
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:resource)
    where fn:exists($node_IEDJammer_0) and fn:exists($value_USRPN310_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_IEDJammer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IEDJammer"]
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:about)
    where fn:exists($node_IEDJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    for $node_IEDJammer_0 in $node_RadioFrequencyBand_0/RFDevice:hasFrequencyAccuracy
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:resource)
    where fn:exists($value_IEDJammer_0) and fn:exists($node_RadioFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    for $node_Entity_0 in $node_RadioFrequencyBand_0/RFDevice:hasMax
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_RadioFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Processor_0 in $node_Entity_0/Nuvio:isExpressedBy
    let $value_Processor_0 := fn:data($node_Processor_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Processor_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Processor_0">{$value_Processor_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Processor_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Processor"]
    let $value_Processor_0 := fn:data($node_Processor_0/@rdf:about)
    where fn:exists($node_Processor_0)
    return
      <xqllib:result>
        <xqllib:var name="Processor_0">{$value_Processor_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_PhasedArrayAntenna_0 in $doc_ObjectDescription
    let $value_PhasedArrayAntenna_0 := fn:data($node_PhasedArrayAntenna_0/@rdf:about)
    for $node_Processor_0 in $node_PhasedArrayAntenna_0/Nuvio:compositeOf
    let $value_Processor_0 := fn:data($node_Processor_0/@rdf:resource)
    where fn:exists($node_PhasedArrayAntenna_0) and fn:exists($value_Processor_0)
    return
      <xqllib:result>
        <xqllib:var name="PhasedArrayAntenna_0">{$value_PhasedArrayAntenna_0}</xqllib:var>
        <xqllib:var name="Processor_0">{$value_Processor_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_PhasedArrayAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PhasedArrayAntenna"]
    let $value_PhasedArrayAntenna_0 := fn:data($node_PhasedArrayAntenna_0/@rdf:about)
    where fn:exists($node_PhasedArrayAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="PhasedArrayAntenna_0">{$value_PhasedArrayAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_PhasedArrayAntenna_0 in $doc_ObjectDescription[RFDevice:hasBeamwidth/@rdf:resource = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Gain_instance12"]
    let $value_PhasedArrayAntenna_0 := fn:data($node_PhasedArrayAntenna_0/@rdf:about)
    where fn:exists($node_PhasedArrayAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="PhasedArrayAntenna_0">{$value_PhasedArrayAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_PhasedArrayAntenna_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Gain_instance4"]/RFDevice:hasChargingTime
    let $value_PhasedArrayAntenna_0 := fn:data($node_PhasedArrayAntenna_0/@rdf:resource)
    where fn:exists($value_PhasedArrayAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="PhasedArrayAntenna_0">{$value_PhasedArrayAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:and($GRAPH_11,$GRAPH_12,("PhasedArrayAntenna_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_10,$GRAPH_13,("PhasedArrayAntenna_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_9,$GRAPH_14,("PhasedArrayAntenna_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_8,$GRAPH_15,("Processor_0"))
  let $GRAPH_17 := ($GRAPH_7,$GRAPH_16)
  let $GRAPH_18 := xqllib:and($GRAPH_5,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_4,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_3,$GRAPH_19,("RadioFrequencyBand_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_2,$GRAPH_20,("IEDJammer_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_1,$GRAPH_21,("IEDJammer_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_0,$GRAPH_22,("USRPN310_0"))
  return
    $GRAPH_23
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN310_0"))),("USRPN310_0"))
