xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://errorHandler.com.co";
(:: import schema at "../Schemas/errorHandler.xsd" ::)

declare variable $errorCode as xs:string external;
declare variable $errorDescription as xs:string external;
declare variable $operation as xs:string external;

declare function local:errorHandler($errorCode as xs:string, 
                            $errorDescription as xs:string, 
                            $operation as xs:string) 
                            as element() (:: schema-element(ns1:exampleElement) ::) {
    <ns1:exampleElement>
        <ns1:errorCode>{fn:data($errorCode)}</ns1:errorCode>
        <ns1:errorDescripcion>{fn:data($errorDescription)}</ns1:errorDescripcion>
        <ns1:operation>{fn:data($operation)}</ns1:operation>
    </ns1:exampleElement>
};

local:errorHandler($errorCode, $errorDescription, $operation)
