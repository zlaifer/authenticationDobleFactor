xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://createnewsmsotpcode.claro.com.co/";
(:: import schema at "../Schemas/createNewSmsOtpCode.xsd" ::)
declare namespace ns1="http://soap.easysol.net/detect/smsService";
(:: import schema at "../WSDLs/WSOutOfBandSmsService.wsdl" ::)

declare variable $Output as element() (:: schema-element(ns1:createNewSmsOtpCodeResponse) ::) external;

declare function local:func_WSOutOfBandSmsService_to_CreateNewSmsOtpCode($Output as element() (:: schema-element(ns1:createNewSmsOtpCodeResponse) ::)) as element() (:: schema-element(ns2:createNewSmsOtpCodeRS) ::) {
    <ns2:createNewSmsOtpCodeRS>
        <ns2:resultCode>{fn:data($Output/ns1:createNewSmsOtpCodeResult/ns1:resultCode)}</ns2:resultCode>
        <ns2:resultDescription>{fn:data($Output/ns1:createNewSmsOtpCodeResult/ns1:resultDescription)}</ns2:resultDescription>
    </ns2:createNewSmsOtpCodeRS>
};

local:func_WSOutOfBandSmsService_to_CreateNewSmsOtpCode($Output)