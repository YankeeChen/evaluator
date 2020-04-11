import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE3xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE3xx"]
    let $value_USRPE3xx_0 := fn:data($node_USRPE3xx_0/@rdf:about)
    where fn:exists($node_USRPE3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE3xx_0">{$value_USRPE3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_XilinxZynq7020SoC_0 in $doc_ObjectDescription
    let $value_XilinxZynq7020SoC_0 := fn:data($node_XilinxZynq7020SoC_0/@rdf:about)
    for $node_USRPE3xx_0 in $node_XilinxZynq7020SoC_0/Nuvio:compositeOf
    let $value_USRPE3xx_0 := fn:data($node_USRPE3xx_0/@rdf:resource)
    where fn:exists($value_USRPE3xx_0) and fn:exists($node_XilinxZynq7020SoC_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE3xx_0">{$value_USRPE3xx_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7020SoC_0">{$value_XilinxZynq7020SoC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_XilinxZynq7020SoC_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XilinxZynq7020SoC"]
    let $value_XilinxZynq7020SoC_0 := fn:data($node_XilinxZynq7020SoC_0/@rdf:about)
    where fn:exists($node_XilinxZynq7020SoC_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxZynq7020SoC_0">{$value_XilinxZynq7020SoC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 := xqllib:and($GRAPH_1,$GRAPH_2,("XilinxZynq7020SoC_0"))
  let $GRAPH_4 := xqllib:and($GRAPH_0,$GRAPH_3,("USRPE3xx_0"))
  return
    $GRAPH_4
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE3xx_0"))),("USRPE3xx_0"))
