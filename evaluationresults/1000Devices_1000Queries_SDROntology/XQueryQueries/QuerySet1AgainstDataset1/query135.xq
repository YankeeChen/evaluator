import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPX3xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPX3xx"]
    let $value_USRPX3xx_0 := fn:data($node_USRPX3xx_0/@rdf:about)
    where fn:exists($node_USRPX3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX3xx_0">{$value_USRPX3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPX3xx_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_USRPX3xx_0 := fn:data($node_USRPX3xx_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPX3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPX3xx_0">{$value_USRPX3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Situation_0 in $node_Entity_0/Nuvio:isExpressedBy
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PowerUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPB200mini_i_0 in $node_Entity_0/Nuvio:hasParticipant
    let $value_USRPB200mini_i_0 := fn:data($node_USRPB200mini_i_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPB200mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
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
    for $node_USRPB200mini_i_0 in $doc_ObjectDescription[RFDevice:isProducerOf/@rdf:resource = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#Producer_instance61"]
    let $value_USRPB200mini_i_0 := fn:data($node_USRPB200mini_i_0/@rdf:about)
    where fn:exists($node_USRPB200mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_i_0">{$value_USRPB200mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:optional($GRAPH_5,$GRAPH_6,("USRPB200mini_i_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("USRPB200mini_i_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 := xqllib:optional($GRAPH_2,$GRAPH_9,("Entity_0"))
  let $GRAPH_12 :=  
    for $node_AngleValue_0 in $doc_ObjectDescription
    let $value_AngleValue_0 := fn:data($node_AngleValue_0/@rdf:about)
    for $node_Situation_0 in $node_AngleValue_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_AngleValue_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="AngleValue_0">{$value_AngleValue_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_Role_0 in $node_Situation_0/Nuvio:relevantIndividual
    let $value_Role_0 := fn:data($node_Role_0/@rdf:resource)
    where fn:exists($value_Role_0) and fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Role_0">{$value_Role_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("Situation_0"))
  let $GRAPH_15 :=  
    for $node_AngleValue_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AngleValue"]
    let $value_AngleValue_0 := fn:data($node_AngleValue_0/@rdf:about)
    where fn:exists($node_AngleValue_0)
    return
      <xqllib:result>
        <xqllib:var name="AngleValue_0">{$value_AngleValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_AngleValue_0 in $doc_ObjectDescription
    let $value_AngleValue_0 := fn:data($node_AngleValue_0/@rdf:about)
    for $node_DataValue0 in $node_AngleValue_0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($node_AngleValue_0) and fn:exists($value_DataValue0)
    return
      <xqllib:result>
        <xqllib:var name="AngleValue_0">{$value_AngleValue_0}</xqllib:var>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := $GRAPH_16[(data(xqllib:var[@name="DataValue0"]) > -758109570)]
  let $GRAPH_18 := xqllib:optional($GRAPH_15,$GRAPH_17,("AngleValue_0"))
  let $GRAPH_19 := ($GRAPH_14,$GRAPH_18)
  let $GRAPH_20 := xqllib:optional($GRAPH_10,$GRAPH_19,("Situation_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_1,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_0,$GRAPH_21,("USRPX3xx_0"))
  return
    $GRAPH_22
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPX3xx_0"))),("USRPX3xx_0"))
