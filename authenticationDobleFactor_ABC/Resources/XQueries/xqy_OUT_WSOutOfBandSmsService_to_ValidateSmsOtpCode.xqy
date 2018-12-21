xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://validatesmsotpcode.claro.com.co/";
(:: import schema at "../Schemas/validateSmsOtpCode.xsd" ::)

declare variable $resultCode as xs:int external;
declare variable $resultDescription as xs:string external;
declare variable $remainingFailedAttempts as xs:int external;

declare function local:func_OUT_WSOutOfBandSmsService_to_ValidateSmsOtpCode($resultCode as xs:int, 
                                                                            $resultDescription as xs:string,
                                                                            $remainingFailedAttempts as xs:int) 
                                                                            as element() (:: schema-element(ns1:validateSmsOtpCode_Response) ::) {
    <ns1:validateSmsOtpCode_Response>
        <ns1:validateSmsOtpCodeResult>
            <ns1:resultCode>{fn:data($resultCode)}</ns1:resultCode>
            <ns1:resultDescription>{fn:data($resultDescription)}</ns1:resultDescription>
            <ns1:remainingFailedAttempts>{if (fn:empty($remainingFailedAttempts)) then
                (0)
                else
                (fn:data($remainingFailedAttempts))}</ns1:remainingFailedAttempts>
        </ns1:validateSmsOtpCodeResult>
    </ns1:validateSmsOtpCode_Response>
};

local:func_OUT_WSOutOfBandSmsService_to_ValidateSmsOtpCode($resultCode, $resultDescription, $remainingFailedAttempts)