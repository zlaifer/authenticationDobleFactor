xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://soap.easysol.net/detect/smsService";
(:: import schema at "../WSDLs/WSOutOfBandSmsService.wsdl" ::)
declare namespace ns1="http://validatesmsotpcode.claro.com.co/";
(:: import schema at "../Schemas/validateSmsOtpCode.xsd" ::)

declare variable $Input as element() (:: schema-element(ns1:validateSmsOtpCode_Request) ::) external;

declare function local:func_ValidateSmsOtpCode_to_WSOutOfBandSmsService($Input as element() (:: schema-element(ns1:validateSmsOtpCode_Request) ::)) as element() (:: schema-element(ns2:validateSmsOtpCode) ::) {
    <ns2:validateSmsOtpCode>
        <processContext>
           <channelId>{fn:data($Input/ns1:processContext/ns1:channelId)}</channelId>
            <externalId>{fn:data($Input/ns1:processContext/ns1:externalId)}</externalId>
            <alternativeSharedKey>
                <name>{fn:data($Input/ns1:processContext/ns1:alternativeSharedKey/ns1:name)}</name>
                <value>{fn:data($Input/ns1:processContext/ns1:alternativeSharedKey/ns1:value)}</value>
            </alternativeSharedKey>
        </processContext>
        <sharedKey>{fn:data($Input/ns1:sharedKey)}</sharedKey>
        <otpCode>{fn:data($Input/ns1:otpCode)}</otpCode>
        <contextBind></contextBind>
    </ns2:validateSmsOtpCode>
};

local:func_ValidateSmsOtpCode_to_WSOutOfBandSmsService($Input)