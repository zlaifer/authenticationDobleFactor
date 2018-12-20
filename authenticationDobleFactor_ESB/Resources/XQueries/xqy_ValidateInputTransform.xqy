xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://validatesmsotpcode.claro.com.co/";
(:: import schema at "../../Schemas/validateSmsOtpCode.xsd" ::)

declare variable $ValidateInput as element() (:: schema-element(ns1:validateSmsOtpCode_Request) ::) external;
declare variable $token as xs:string external;

declare function local:func($ValidateInput as element() (:: schema-element(ns1:validateSmsOtpCode_Request) ::), 
                            $token as xs:string) 
                            as element() (:: schema-element(ns1:validateSmsOtpCode_Request) ::) {
    <ns1:validateSmsOtpCode_Request>
        <ns1:processContext>
            <ns1:channelId>{fn:data($ValidateInput/ns1:processContext/ns1:channelId)}</ns1:channelId>
            <ns1:externalId>{fn:data($ValidateInput/ns1:processContext/ns1:externalId)}</ns1:externalId>
                    <ns1:alternativeSharedKey>
                        <ns1:name>{fn:data($ValidateInput/ns1:processContext/ns1:alternativeSharedKey/ns1:name)}</ns1:name>
                        <ns1:value>{fn:data($ValidateInput/ns1:processContext/ns1:alternativeSharedKey/ns1:value)}</ns1:value>
                    </ns1:alternativeSharedKey>
        </ns1:processContext>
        <ns1:canal>{fn:data($ValidateInput/ns1:canal)}</ns1:canal>
        <ns1:sharedKey>{fn:data($ValidateInput/ns1:sharedKey)}</ns1:sharedKey>
        <ns1:otpCode>{fn:data($ValidateInput/ns1:otpCode)}</ns1:otpCode>
        <ns1:contextBind>{fn:data($ValidateInput/ns1:contextBind)}</ns1:contextBind>
        <ns1:token>{fn:data($token)}</ns1:token>
    </ns1:validateSmsOtpCode_Request>
};

local:func($ValidateInput, $token)
