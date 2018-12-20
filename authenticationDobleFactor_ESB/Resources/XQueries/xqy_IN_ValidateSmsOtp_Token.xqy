xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://validateSmsOtpCode.claro.com.co";
(:: import schema at "../Schemas/validateSmsOtpCode_Token.xsd" ::)

declare namespace ns2 = "http://validatesmsotpcode.claro.com.co/";

declare variable $channelId as xs:string external;
declare variable $externalId as xs:string external;
declare variable $name as xs:string external;
declare variable $value as xs:string external;
declare variable $canal as xs:string external;
declare variable $sharedKey as xs:string external;
declare variable $token as xs:string external;
declare variable $contextBind as xs:string external;
declare variable $otpCode as xs:string external;

declare function local:func_ValidateSmsOtp_Token($channelId as xs:string, 
                                                 $externalId as xs:string, 
                                                 $name as xs:string, 
                                                 $value as xs:string, 
                                                 $canal as xs:string, 
                                                 $sharedKey as xs:string, 
                                                 $contextBind as xs:string, 
                                                 $token as xs:string,
                                                 $otpCode as xs:string) 
                                                 as element() (:: schema-element(ns1:validateSmsOtpCode_Token_RQ) ::) {
    <ns1:validateSmsOtpCode_Token_RQ>
        <ns2:processContext>
            <ns2:channelId>{fn:data($channelId)}</ns2:channelId>
            <ns2:externalId>{fn:data($externalId)}</ns2:externalId>
            <ns2:alternativeSharedKey>
                <ns2:name>{fn:data($name)}</ns2:name>
                <ns2:value>{fn:data($value)}</ns2:value>
            </ns2:alternativeSharedKey>
        </ns2:processContext>
        <ns2:canal></ns2:canal>
        <ns2:sharedKey>{fn:data($sharedKey)}</ns2:sharedKey>
        <ns2:otpCode>{fn:data($otpCode)}</ns2:otpCode>
        <ns2:contextBind>{fn:data($contextBind)}</ns2:contextBind>
        <ns2:token>{fn:data($token)}</ns2:token>
    </ns1:validateSmsOtpCode_Token_RQ>
};

local:func_ValidateSmsOtp_Token($channelId, $externalId, $name, $value, $canal, $sharedKey, $contextBind, $token, $otpCode)
