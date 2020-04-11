import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN200_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN200"]
    let $value_USRPN200_0 := fn:data($node_USRPN200_0/@rdf:about)
    where fn:exists($node_USRPN200_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN200_0">{$value_USRPN200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadioComponent_0 in $doc_ObjectDescription
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:about)
    for $node_USRPN200_0 in $node_RadioComponent_0/Nuvio:partOf
    let $value_USRPN200_0 := fn:data($node_USRPN200_0/@rdf:resource)
    where fn:exists($node_RadioComponent_0) and fn:exists($value_USRPN200_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
        <xqllib:var name="USRPN200_0">{$value_USRPN200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_DipoleAntenna_0 in $doc_ObjectDescription
    let $value_DipoleAntenna_0 := fn:data($node_DipoleAntenna_0/@rdf:about)
    for $node_RadioComponent_0 in $node_DipoleAntenna_0/Nuvio:partOf
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:resource)
    where fn:exists($node_DipoleAntenna_0) and fn:exists($value_RadioComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="DipoleAntenna_0">{$value_DipoleAntenna_0}</xqllib:var>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_DipoleAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DipoleAntenna"]
    let $value_DipoleAntenna_0 := fn:data($node_DipoleAntenna_0/@rdf:about)
    where fn:exists($node_DipoleAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="DipoleAntenna_0">{$value_DipoleAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_DipoleAntenna_0 in $node_Attribute_0/RFDevice:hasNoiseFigure
    let $value_DipoleAntenna_0 := fn:data($node_DipoleAntenna_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_DipoleAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="DipoleAntenna_0">{$value_DipoleAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := ($GRAPH_4,$GRAPH_5)
  let $GRAPH_7 := xqllib:and($GRAPH_2,$GRAPH_6,("DipoleAntenna_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_1,$GRAPH_7,("RadioComponent_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_0,$GRAPH_8,("USRPN200_0"))
  return
    $GRAPH_9
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN200_0"))),("USRPN200_0"))
