import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace sf = "http://www.opengis.net/ont/sf#";
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
    for $node_USRPB2xx_0 in $doc_ObjectDescription
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:about)
    for $node_SuperheterodyneReceiver_0 in $node_USRPB2xx_0/Nuvio:aggregateOf
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:resource)
    where fn:exists($value_SuperheterodyneReceiver_0) and fn:exists($node_USRPB2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="SuperheterodyneReceiver_0">{$value_SuperheterodyneReceiver_0}</xqllib:var>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SuperheterodyneReceiver_0 in $node_Entity_0/Nuvio:compositeOf
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_SuperheterodyneReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SuperheterodyneReceiver_0">{$value_SuperheterodyneReceiver_0}</xqllib:var>
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
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/sf#LineString"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicAttack"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PowerUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 := xqllib:optional($GRAPH_5,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Power_0) and $node_Power_0/RFDevice:hasNoiseFigure/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Power_0 in $node_Var0/Nuvio:hasValue
    let $value_Power_0 := fn:data($node_Power_0/@rdf:resource)
    where fn:exists($value_Power_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("Power_0"))
  let $GRAPH_13 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Entity_0 in $node_Var1/Nuvio:hasValue
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_DataValue0 in $node_Var1/RFDevice:hasFloatValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DecimalValue"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_Var1 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/RFDevice.owl#Minute"]/Nuvio:hasUnitOfMeasure
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := ($GRAPH_16,$GRAPH_17)
  let $GRAPH_19 := xqllib:and($GRAPH_14,$GRAPH_18,("Var1"))
  let $GRAPH_20 := xqllib:and($GRAPH_13,$GRAPH_19,("Var1"))
  let $GRAPH_22 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Attribute_0) and fn:exists($node_Entity_0) and $node_Attribute_0/Nuvio:hasProcessQuality/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 := ($GRAPH_22,$GRAPH_23)
  let $GRAPH_25 := xqllib:optional($GRAPH_20,$GRAPH_24,("Entity_0"))
  let $GRAPH_26 := xqllib:and($GRAPH_12,$GRAPH_25,("Entity_0"))
  let $GRAPH_27 := xqllib:and($GRAPH_9,$GRAPH_26,("Entity_0"))
  let $GRAPH_28 :=  
    for $node_DirectConversionReceiver_0 in $doc_ObjectDescription
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_DirectConversionReceiver_0) and fn:exists($node_Entity_0) and $node_DirectConversionReceiver_0/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_29 :=  
    for $node_DirectConversionReceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DirectConversionReceiver"]
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:about)
    where fn:exists($node_DirectConversionReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_30 :=  
    for $node_DirectConversionReceiver_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#Producer_instance69"]/RFDevice:isProducerOf
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:resource)
    where fn:exists($value_DirectConversionReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_31 :=  
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    for $node_DirectConversionReceiver_0 in $node_Entity_1/RFDevice:isProducerOf
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:resource)
    where fn:exists($value_DirectConversionReceiver_0) and fn:exists($node_Entity_1)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_32 := xqllib:and($GRAPH_30,$GRAPH_31,("DirectConversionReceiver_0"))
  let $GRAPH_33 := xqllib:and($GRAPH_29,$GRAPH_32,("DirectConversionReceiver_0"))
  let $GRAPH_34 := xqllib:and($GRAPH_28,$GRAPH_33,("DirectConversionReceiver_0"))
  let $GRAPH_35 := ($GRAPH_27,$GRAPH_34)
  let $GRAPH_36 := xqllib:and($GRAPH_3,$GRAPH_35,("Entity_0"))
  let $GRAPH_37 := xqllib:and($GRAPH_2,$GRAPH_36,("Entity_0"))
  let $GRAPH_38 := xqllib:and($GRAPH_1,$GRAPH_37,("SuperheterodyneReceiver_0"))
  let $GRAPH_39 := xqllib:optional($GRAPH_0,$GRAPH_38,("USRPB2xx_0"))
  return
    $GRAPH_39
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB2xx_0"))),("USRPB2xx_0"))
