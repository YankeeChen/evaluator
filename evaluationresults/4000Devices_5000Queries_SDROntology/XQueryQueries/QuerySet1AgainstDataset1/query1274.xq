import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_GNURadio_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#GNURadio"]
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:about)
    where fn:exists($node_GNURadio_0)
    return
      <xqllib:result>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_GNURadio_0 in $doc_ObjectDescription
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:about)
    for $node_DirectConversionReceiver_0 in $node_GNURadio_0/Nuvio:partOf
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:resource)
    where fn:exists($value_DirectConversionReceiver_0) and fn:exists($node_GNURadio_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_QuantityRange_0 in $doc_ObjectDescription
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:about)
    for $node_DirectConversionReceiver_0 in $node_QuantityRange_0/RFDevice:hasFrequencyRange
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:resource)
    where fn:exists($value_DirectConversionReceiver_0) and fn:exists($node_QuantityRange_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_QuantityRange_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#QuantityRange"]
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:about)
    where fn:exists($node_QuantityRange_0)
    return
      <xqllib:result>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("QuantityRange_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("DirectConversionReceiver_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("GNURadio_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("GNURadio_0"))),("GNURadio_0"))
