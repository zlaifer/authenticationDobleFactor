xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://validatesmsotpcode.claro.com.co/";
(:: import schema at "../../../authenticationDobleFactor_ABC/Resources/Schemas/validateSmsOtpCode.xsd" ::)

declare variable $Token as xs:string external;
declare variable $ValidateSmsOtpRequest as element() (:: schema-element(ns1:validateSmsOtpCode_Request) ::) external;

declare function local:func_ValidateSmsOtp_to_ValidateSmsOtp($Token as xs:string, 
                                                             $ValidateSmsOtpRequest as element() (:: schema-element(ns1:validateSmsOtpCode_Request) ::)) 
                                                             as element() (:: schema-element(ns1:validateSmsOtpCode_Request) ::) {
    <ns1:validateSmsOtpCode_Request>
        <ns1:processContext>
            <ns1:channelId>{fn:data($ValidateSmsOtpRequest/ns1:processContext/ns1:channelId)}</ns1:channelId>
            <ns1:externalId>{fn:data($ValidateSmsOtpRequest/ns1:processContext/ns1:externalId)}</ns1:externalId>
            <ns1:alternativeSharedKey>
                <ns1:name>{fn:data($ValidateSmsOtpRequest/ns1:processContext/ns1:alternativeSharedKey/ns1:name)}</ns1:name>
                <ns1:value>{fn:data($ValidateSmsOtpRequest/ns1:processContext/ns1:alternativeSharedKey/ns1:value)}</ns1:value>
            </ns1:alternativeSharedKey>
        </ns1:processContext>
        <ns1:canal>{fn:data($ValidateSmsOtpRequest/ns1:canal)}</ns1:canal>
        <ns1:sharedKey>{fn:data($ValidateSmsOtpRequest/ns1:sharedKey)}</ns1:sharedKey>
        <ns1:otpCode>{fn:data($ValidateSmsOtpRequest/ns1:otpCode)}</ns1:otpCode>
        <ns1:contextBind>{fn:data($ValidateSmsOtpRequest/ns1:contextBind)}</ns1:contextBind>
        <ns1:token>{fn:data($Token)}</ns1:token>
    </ns1:validateSmsOtpCode_Request>
};

local:func_ValidateSmsOtp_to_ValidateSmsOtp($Token, $ValidateSmsOtpRequest)
