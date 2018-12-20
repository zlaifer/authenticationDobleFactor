xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://createnewsmsotpcode.claro.com.co/";
(:: import schema at "../Schemas/createNewSmsOtpCode.xsd" ::)
declare namespace ns2="http://soap.easysol.net/detect/smsService";
(:: import schema at "../WSDLs/WSOutOfBandSmsService.wsdl" ::)

declare variable $Input as element() (:: schema-element(ns1:createNewSmsOtpCodeRQ) ::) external;

declare function local:func_CreateNewSmsOtpCode_to_WSOutOfBandSmsService($Input as element() (:: schema-element(ns1:createNewSmsOtpCodeRQ) ::)) as element() (:: schema-element(ns2:createNewSmsOtpCode) ::) {
    <ns2:createNewSmsOtpCode>
        <processContext>
            <channelId>{fn:data($Input/ns1:processContext/ns1:channelId)}</channelId>
            <externalId>{fn:data($Input/ns1:processContext/ns1:externalId)}</externalId>
        </processContext>
        <sharedKey>{fn:data($Input/ns1:sharedKey)}</sharedKey>
        <purpose>{fn:data($Input/ns1:purpose)}</purpose>
        <contextBind>{fn:data($Input/ns1:contextBind)}</contextBind>
    </ns2:createNewSmsOtpCode>
};

local:func_CreateNewSmsOtpCode_to_WSOutOfBandSmsService($Input)