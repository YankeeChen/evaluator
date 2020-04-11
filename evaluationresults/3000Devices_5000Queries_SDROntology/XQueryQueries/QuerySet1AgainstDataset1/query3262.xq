import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200"]
    let $value_USRPB200_0 := fn:data($node_USRPB200_0/@rdf:about)
    where fn:exists($node_USRPB200_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200_0">{$value_USRPB200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_USRPB200_0 in $node_Object_0/RFDevice:hasProducer
    let $value_USRPB200_0 := fn:data($node_USRPB200_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_USRPB200_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="USRPB200_0">{$value_USRPB200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_CrossEyeJamming_0 in $doc_ObjectDescription
    let $value_CrossEyeJamming_0 := fn:data($node_CrossEyeJamming_0/@rdf:about)
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_CrossEyeJamming_0) and fn:exists($node_Object_0) and $node_CrossEyeJamming_0/RFDevice:hasCapability/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="CrossEyeJamming_0">{$value_CrossEyeJamming_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_CrossEyeJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CrossEyeJamming"]
    let $value_CrossEyeJamming_0 := fn:data($node_CrossEyeJamming_0/@rdf:about)
    where fn:exists($node_CrossEyeJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="CrossEyeJamming_0">{$value_CrossEyeJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_CrossEyeJamming_0 in $node_Attribute_0/Nuvio:hasProcessQuantity
    let $value_CrossEyeJamming_0 := fn:data($node_CrossEyeJamming_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_CrossEyeJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="CrossEyeJamming_0">{$value_CrossEyeJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("CrossEyeJamming_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("CrossEyeJamming_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Object_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("USRPB200_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200_0"))),("USRPB200_0"))
