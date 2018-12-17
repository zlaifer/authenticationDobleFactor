xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://createnewsmsotpcode.claro.com.co/";
(:: import schema at "../Schemas/createNewSmsOtpCode.xsd" ::)


declare function local:func_ResponseCreateNewSmsOtpCode() as element() (:: schema-element(ns1:createNewSmsOtpCodeRS) ::) {
    <ns1:createNewSmsOtpCodeRS>
        <ns1:resultCode>{xs:int(1)}</ns1:resultCode>
        <ns1:resultDescription>{fn:string('Datos OK')}</ns1:resultDescription>
    </ns1:createNewSmsOtpCodeRS>
};

local:func_ResponseCreateNewSmsOtpCode()
