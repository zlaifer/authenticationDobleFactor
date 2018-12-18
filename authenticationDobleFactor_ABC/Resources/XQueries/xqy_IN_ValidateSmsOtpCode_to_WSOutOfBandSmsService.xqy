xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://soap.easysol.net/detect/smsService";
(:: import schema at "../WSDLs/WSOutOfBandSmsService.wsdl" ::)
declare namespace ns1="http://validatesmsotpcode.claro.com.co/";
(:: import schema at "../Schemas/validateSmsOtpCode.xsd" ::)

declare variable $Input as element() (:: schema-element(ns1:validateSmsOtpCode_Request) ::) external;

declare function local:func_ValidateSmsOtpCode_to_WSOutOfBandSmsService($Input as element() (:: schema-element(ns1:validateSmsOtpCode_Request) ::)) as element() (:: schema-element(ns2:validateSmsOtpCode) ::) {
    <ns2:validateSmsOtpCode>
        <ns2:processContext>
           <ns2:channelId>{fn:data($Input/ns1:processContext/ns1:channelId)}</ns2:channelId>
           <ns2:externalId></ns2:externalId>
            <ns2:alternativeSharedKey>
               <ns2:name>{fn:data($Input/ns1:processContext/ns1:alternativeSharedKey/ns1:name)}</ns2:name>
               <ns2:value>{fn:data($Input/ns1:processContext/ns1:alternativeSharedKey/ns1:value)}</ns2:value>
            </ns2:alternativeSharedKey>
        </ns2:processContext>
        <ns2:sharedKey>{fn:data($Input/ns1:sharedKey)}</ns2:sharedKey>
        <ns2:otpCode>{fn:data($Input/ns1:otpCode)}</ns2:otpCode>
        <ns2:contextBind>{fn:data($Input/ns1:contextBind)}</ns2:contextBind>
    </ns2:validateSmsOtpCode>
};

local:func_ValidateSmsOtpCode_to_WSOutOfBandSmsService($Input)
