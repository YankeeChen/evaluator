import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB2xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB2xx"]
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:about)
    where fn:exists($node_USRPB2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_MobilePlatform_0 in $doc_ObjectDescription
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:about)
    for $node_USRPB2xx_0 in $node_MobilePlatform_0/RFDevice:isDeployedOn
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:resource)
    where fn:exists($node_MobilePlatform_0) and fn:exists($value_USRPB2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_MobilePlatform_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#MobilePlatform"]
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:about)
    where fn:exists($node_MobilePlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_MobilePlatform_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#Moving_instance4"]/RFDevice:supportsJamming
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:resource)
    where fn:exists($value_MobilePlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("MobilePlatform_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("MobilePlatform_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("USRPB2xx_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB2xx_0"))),("USRPB2xx_0"))
