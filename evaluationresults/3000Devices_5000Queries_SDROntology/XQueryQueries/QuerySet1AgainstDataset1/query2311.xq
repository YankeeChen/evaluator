import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE313_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE313"]
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:about)
    where fn:exists($node_USRPE313_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_USRPE313_0 in $node_Object_0/Nuvio:aggregateOf
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_USRPE313_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Entity_0 in $node_Object_0/Nuvio:hasObjectQuality
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_InformationEntity_0) and $node_InformationEntity_0/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SpatialLinearUnit_0 in $node_Entity_0/Nuvio:hasUnitOfMeasure
    let $value_SpatialLinearUnit_0 := fn:data($node_SpatialLinearUnit_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_SpatialLinearUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SpatialLinearUnit_0">{$value_SpatialLinearUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
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
  let $GRAPH_7 := $GRAPH_6[(data(xqllib:var[@name="DataValue0"]) != -30300443)]
  let $GRAPH_8 :=  
    for $node_SpatialLinearUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpatialLinearUnit"]
    let $value_SpatialLinearUnit_0 := fn:data($node_SpatialLinearUnit_0/@rdf:about)
    where fn:exists($node_SpatialLinearUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="SpatialLinearUnit_0">{$value_SpatialLinearUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,())
  let $GRAPH_10 := xqllib:and($GRAPH_5,$GRAPH_9,("Entity_0","SpatialLinearUnit_0"))
  let $GRAPH_11 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Frequency"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:optional($GRAPH_11,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_10,$GRAPH_13,("Entity_0"))
  let $GRAPH_16 :=  
    for $node_DirectConversionReceiver_0 in $doc_ObjectDescription
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:about)
    for $node_InformationEntity_0 in $node_DirectConversionReceiver_0/Nuvio:expresses
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:resource)
    where fn:exists($node_DirectConversionReceiver_0) and fn:exists($value_InformationEntity_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_DirectConversionReceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DirectConversionReceiver"]
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:about)
    where fn:exists($node_DirectConversionReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
    for $node_DirectConversionReceiver_0 in $doc_ObjectDescription
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:about)
    for $node_RadarFrequencyBand_0 in $node_DirectConversionReceiver_0/RFDevice:hasFrequencyRange
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:resource)
    where fn:exists($node_DirectConversionReceiver_0) and fn:exists($value_RadarFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 :=  
    for $node_RadarFrequencyBand_0 in $doc_ObjectDescription
    let $value_RadarFrequencyBand_0 := fn:data($node_RadarFrequencyBand_0/@rdf:about)
    for $node_Attribute_0 in $node_RadarFrequencyBand_0/RFDevice:hasMin
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:resource)
    where fn:exists($value_Attribute_0) and fn:exists($node_RadarFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="RadarFrequencyBand_0">{$value_RadarFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_21 := xqllib:and($GRAPH_19,$GRAPH_20,("Attribute_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_18,$GRAPH_21,("RadarFrequencyBand_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_17,$GRAPH_22,("DirectConversionReceiver_0"))
  let $GRAPH_24 := ($GRAPH_16,$GRAPH_23)
  let $GRAPH_25 := xqllib:and($GRAPH_14,$GRAPH_24,())
  let $GRAPH_26 := ($GRAPH_4,$GRAPH_25)
  let $GRAPH_27 := xqllib:and($GRAPH_2,$GRAPH_26,("Entity_0"))
  let $GRAPH_28 := xqllib:and($GRAPH_1,$GRAPH_27,("Object_0"))
  let $GRAPH_29 := xqllib:and($GRAPH_0,$GRAPH_28,("USRPE313_0"))
  return
    $GRAPH_29
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE313_0"))),("USRPE313_0"))
