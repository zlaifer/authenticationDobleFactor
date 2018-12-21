xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://createnewsmsotpcode.claro.com.co/";
(:: import schema at "../Schemas/createNewSmsOtpCode.xsd" ::)

declare variable $resultCode as xs:int external;
declare variable $resultDescription as xs:string external;

declare function local:func_OUT_WSOutOfBandSmsService_to_CreateNewSmsOtpCode($resultCode as xs:int, 
                                                                             $resultDescription as xs:string) 
                                                                             as element() (:: schema-element(ns1:createNewSmsOtpCodeRS) ::) {
    <ns1:createNewSmsOtpCodeRS>
        <ns1:resultCode>{fn:data($resultCode)}</ns1:resultCode>
        <ns1:resultDescription>{fn:data($resultDescription)}</ns1:resultDescription>
    </ns1:createNewSmsOtpCodeRS>
};

local:func_OUT_WSOutOfBandSmsService_to_CreateNewSmsOtpCode($resultCode, $resultDescription)