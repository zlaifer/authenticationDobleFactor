xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://createnewsmsotpcode.claro.com.co/";
(:: import schema at "../../../authenticationDobleFactor_ABC/Resources/Schemas/createNewSmsOtpCode.xsd" ::)

declare variable $CreateNewSmsOtp as element() (:: schema-element(ns1:createNewSmsOtpCodeRS) ::) external;

declare function local:func_CreateNewSmsOtp_to_CreateNewSmsOtp($CreateNewSmsOtp as element() (:: schema-element(ns1:createNewSmsOtpCodeRS) ::)) as element() (:: schema-element(ns1:createNewSmsOtpCodeRS) ::) {
    <ns1:createNewSmsOtpCodeRS>
       <ns1:resultCode>{fn:data($CreateNewSmsOtp/ns1:resultCode)}</ns1:resultCode>
       <ns1:resultDescription>{fn:data($CreateNewSmsOtp/ns1:resultDescription)}</ns1:resultDescription>
    </ns1:createNewSmsOtpCodeRS>
};

local:func_CreateNewSmsOtp_to_CreateNewSmsOtp($CreateNewSmsOtp)
