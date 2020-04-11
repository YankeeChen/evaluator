import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN2xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN2xx"]
    let $value_USRPN2xx_0 := fn:data($node_USRPN2xx_0/@rdf:about)
    where fn:exists($node_USRPN2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN2xx_0">{$value_USRPN2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPN2xx_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_USRPN2xx_0 := fn:data($node_USRPN2xx_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPN2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPN2xx_0">{$value_USRPN2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transmitting"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Entity_0 in $node_Attribute_0/RFDevice:hasMaxOutputPower
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Attribute_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("Entity_0"))
  let $GRAPH_11 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Angle"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_LatitudeValueInDegree_0 in $node_Entity_0/Nuvio:hasValue
    let $value_LatitudeValueInDegree_0 := fn:data($node_LatitudeValueInDegree_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_LatitudeValueInDegree_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="LatitudeValueInDegree_0">{$value_LatitudeValueInDegree_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_LatitudeValueInDegree_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#LatitudeValueInDegree"]
    let $value_LatitudeValueInDegree_0 := fn:data($node_LatitudeValueInDegree_0/@rdf:about)
    where fn:exists($node_LatitudeValueInDegree_0)
    return
      <xqllib:result>
        <xqllib:var name="LatitudeValueInDegree_0">{$value_LatitudeValueInDegree_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("LatitudeValueInDegree_0"))
  let $GRAPH_15 := ($GRAPH_11,$GRAPH_14)
  let $GRAPH_16 := ($GRAPH_9,$GRAPH_15)
  let $GRAPH_17 := ($GRAPH_3,$GRAPH_16)
  let $GRAPH_18 := xqllib:and($GRAPH_1,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_0,$GRAPH_18,("USRPN2xx_0"))
  return
    $GRAPH_19
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN2xx_0"))),("USRPN2xx_0"))
