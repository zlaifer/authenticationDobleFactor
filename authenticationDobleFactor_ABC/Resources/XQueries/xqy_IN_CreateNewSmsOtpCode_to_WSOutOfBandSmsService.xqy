xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://createnewsmsotpcode.claro.com.co/";
(:: import schema at "../Schemas/createNewSmsOtpCode.xsd" ::)
declare namespace ns2="http://soap.easysol.net/detect/smsService";
(:: import schema at "../WSDLs/WSOutOfBandSmsService.wsdl" ::)

declare variable $Input as element() (:: schema-element(ns1:createNewSmsOtpCodeRQ) ::) external;

declare function local:func_CreateNewSmsOtpCode_to_WSOutOfBandSmsService($Input as element() (:: schema-element(ns1:createNewSmsOtpCodeRQ) ::)) as element() (:: schema-element(ns2:createNewSmsOtpCode) ::) {
    <ns2:createNewSmsOtpCode>
        <ns2:processContext>
            <ns2:channelId>{fn:data($Input/ns1:processContext/ns1:channelId)}</ns2:channelId>
            <ns2:externalId></ns2:externalId>
        </ns2:processContext>
        <ns2:sharedKey>{fn:data($Input/ns1:sharedKey)}</ns2:sharedKey>
        <ns2:purpose>{fn:data($Input/ns1:purpose)}</ns2:purpose>
        <ns2:contextBind>{fn:data($Input/ns1:contextBind)}</ns2:contextBind>
    </ns2:createNewSmsOtpCode>
};

local:func_CreateNewSmsOtpCode_to_WSOutOfBandSmsService($Input)
