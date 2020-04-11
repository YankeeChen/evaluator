import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE310_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE310"]
    let $value_USRPE310_0 := fn:data($node_USRPE310_0/@rdf:about)
    where fn:exists($node_USRPE310_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE310_0">{$value_USRPE310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPE310_0 in $node_Entity_0/Nuvio:aggregateOf
    let $value_USRPE310_0 := fn:data($node_USRPE310_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPE310_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPE310_0">{$value_USRPE310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Value_0 in $doc_ObjectDescription
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    for $node_Entity_0 in $node_Value_0/Nuvio:isExpressedBy
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Value_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_DataValue0 in $node_Entity_0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := $GRAPH_3[(data(xqllib:var[@name="DataValue0"]) = 1034262791)]
  let $GRAPH_5 :=  
    for $node_DimensionlessUnit_0 in $doc_ObjectDescription
    let $value_DimensionlessUnit_0 := fn:data($node_DimensionlessUnit_0/@rdf:about)
    for $node_Value_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    where fn:exists($node_DimensionlessUnit_0) and fn:exists($node_Value_0) and $node_DimensionlessUnit_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Value_0
    return
      <xqllib:result>
        <xqllib:var name="DimensionlessUnit_0">{$value_DimensionlessUnit_0}</xqllib:var>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,())
  let $GRAPH_7 := xqllib:and($GRAPH_2,$GRAPH_6,("Entity_0","Value_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_1,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_0,$GRAPH_8,("USRPE310_0"))
  return
    $GRAPH_9
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE310_0"))),("USRPE310_0"))
