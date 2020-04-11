import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN3xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN3xx"]
    let $value_USRPN3xx_0 := fn:data($node_USRPN3xx_0/@rdf:about)
    where fn:exists($node_USRPN3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN3xx_0">{$value_USRPN3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPN3xx_0 in $node_Entity_0/Nuvio:compositeOf
    let $value_USRPN3xx_0 := fn:data($node_USRPN3xx_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPN3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPN3xx_0">{$value_USRPN3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Entity_0 in $node_InformationEntity_0/Nuvio:isExpressedBy
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_InformationEntity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_DRFMJamming_0 in $doc_ObjectDescription
    let $value_DRFMJamming_0 := fn:data($node_DRFMJamming_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_DRFMJamming_0) and fn:exists($node_Entity_0) and $node_DRFMJamming_0/Nuvio:hasParticipant/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="DRFMJamming_0">{$value_DRFMJamming_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_DRFMJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DRFMJamming"]
    let $value_DRFMJamming_0 := fn:data($node_DRFMJamming_0/@rdf:about)
    where fn:exists($node_DRFMJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="DRFMJamming_0">{$value_DRFMJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:optional($GRAPH_3,$GRAPH_4,("DRFMJamming_0"))
  let $GRAPH_6 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Component_0 in $node_InformationEntity_0/Nuvio:isExpressedBy
    let $value_Component_0 := fn:data($node_Component_0/@rdf:resource)
    where fn:exists($value_Component_0) and fn:exists($node_InformationEntity_0)
    return
      <xqllib:result>
        <xqllib:var name="Component_0">{$value_Component_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,())
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Entity_0","InformationEntity_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("USRPN3xx_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN3xx_0"))),("USRPN3xx_0"))
