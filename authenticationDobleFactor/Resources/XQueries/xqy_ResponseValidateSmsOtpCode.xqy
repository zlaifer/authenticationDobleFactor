xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://validatesmsotpcode.claro.com.co/";
(:: import schema at "../Schemas/validateSmsOtpCode.xsd" ::)


declare function local:func_ResponseValidateSmsOtpCode() as element() (:: schema-element(ns1:validateSmsOtpCode_Response) ::) {
    <ns1:validateSmsOtpCode_Response>
        <ns1:validateSmsOtpCodeResult>
            <ns1:resultCode>{xs:int(1)}</ns1:resultCode>
            <ns1:resultDescription>{fn:string('Datos OK')}</ns1:resultDescription>
            <ns1:remainingFailedAttempts>{xs:int(1)}</ns1:remainingFailedAttempts>
        </ns1:validateSmsOtpCodeResult>
    </ns1:validateSmsOtpCode_Response>
};

local:func_ResponseValidateSmsOtpCode()
