xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://soap.easysol.net/detect/smsService";
(:: import schema at "../WSDLs/WSOutOfBandSmsService.wsdl" ::)
declare namespace ns2="http://validatesmsotpcode.claro.com.co/";
(:: import schema at "../Schemas/validateSmsOtpCode.xsd" ::)

declare variable $Output as element() (:: schema-element(ns1:validateSmsOtpCodeResponse) ::) external;

declare function local:func_WSOutOfBandSmsService_to_ValidateSmsOtpCode($Output as element() (:: schema-element(ns1:validateSmsOtpCodeResponse) ::)) as element() (:: schema-element(ns2:validateSmsOtpCode_Response) ::) {
    <ns2:validateSmsOtpCode_Response>
        <ns2:validateSmsOtpCodeResult>
            <ns2:resultCode>{fn:data($Output/ns1:validateSmsOtpCodeResult/ns1:resultCode)}</ns2:resultCode>
            <ns2:resultDescription>{fn:data($Output/ns1:validateSmsOtpCodeResult/ns1:resultDescription)}</ns2:resultDescription>
            <ns2:remainingFailedAttempts>{fn:data($Output/ns1:validateSmsOtpCodeResult/ns1:remainingFailedAttempts)}</ns2:remainingFailedAttempts>
        </ns2:validateSmsOtpCodeResult>
    </ns2:validateSmsOtpCode_Response>
};

local:func_WSOutOfBandSmsService_to_ValidateSmsOtpCode($Output)
