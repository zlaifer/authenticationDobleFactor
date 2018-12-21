xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://validatesmsotpcode.claro.com.co/";
(:: import schema at "../../../authenticationDobleFactor_ABC/Resources/Schemas/validateSmsOtpCode.xsd" ::)

declare variable $ValidateSmsOtp as element() (:: schema-element(ns1:validateSmsOtpCode_Response) ::) external;

declare function local:func_ValidateSmsOtp_to_ValidateSmsOtp($ValidateSmsOtp as element() (:: schema-element(ns1:validateSmsOtpCode_Response) ::)) as element() (:: schema-element(ns1:validateSmsOtpCode_Response) ::) {
    <ns1:validateSmsOtpCode_Response>
        <ns1:validateSmsOtpCodeResult>
          <ns1:resultCode>{fn:data($ValidateSmsOtp/ns1:validateSmsOtpCodeResult/ns1:resultCode)}</ns1:resultCode>
          <ns1:resultDescription>{fn:data($ValidateSmsOtp/ns1:validateSmsOtpCodeResult/ns1:resultDescription)}</ns1:resultDescription>
          <ns1:remainingFailedAttempts>{fn:data($ValidateSmsOtp/ns1:validateSmsOtpCodeResult/ns1:remainingFailedAttempts)}</ns1:remainingFailedAttempts>
        </ns1:validateSmsOtpCodeResult>
    </ns1:validateSmsOtpCode_Response>
};

local:func_ValidateSmsOtp_to_ValidateSmsOtp($ValidateSmsOtp)
