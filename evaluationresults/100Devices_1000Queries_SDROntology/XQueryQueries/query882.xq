import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription100.owl#";
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
    for $node_IEDTrigger_0 in $doc_ObjectDescription
    let $value_IEDTrigger_0 := fn:data($node_IEDTrigger_0/@rdf:about)
    for $node_USRPN3xx_0 in $node_IEDTrigger_0/Nuvio:compositeOf
    let $value_USRPN3xx_0 := fn:data($node_USRPN3xx_0/@rdf:resource)
    where fn:exists($node_IEDTrigger_0) and fn:exists($value_USRPN3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDTrigger_0">{$value_IEDTrigger_0}</xqllib:var>
        <xqllib:var name="USRPN3xx_0">{$value_USRPN3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_IEDTrigger_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IEDTrigger"]
    let $value_IEDTrigger_0 := fn:data($node_IEDTrigger_0/@rdf:about)
    where fn:exists($node_IEDTrigger_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDTrigger_0">{$value_IEDTrigger_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_IEDTrigger_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription100.owl#XilinxZynq7020SoC_instance5"]/Nuvio:partOf
    let $value_IEDTrigger_0 := fn:data($node_IEDTrigger_0/@rdf:resource)
    where fn:exists($value_IEDTrigger_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDTrigger_0">{$value_IEDTrigger_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := ($GRAPH_3,$GRAPH_4)
  let $GRAPH_6 := xqllib:and($GRAPH_1,$GRAPH_5,("IEDTrigger_0"))
  let $GRAPH_7 := xqllib:optional($GRAPH_0,$GRAPH_6,("USRPN3xx_0"))
  return
    $GRAPH_7
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN3xx_0"))),("USRPN3xx_0"))
