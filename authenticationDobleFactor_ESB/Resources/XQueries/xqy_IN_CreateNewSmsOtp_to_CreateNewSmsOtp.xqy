xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://createnewsmsotpcode.claro.com.co/";
(:: import schema at "../../../authenticationDobleFactor_ABC/Resources/Schemas/createNewSmsOtpCode.xsd" ::)

declare variable $CreateNewSmsOtpRequest as element() (:: schema-element(ns1:createNewSmsOtpCodeRQ) ::) external;
declare variable $Token as xs:string external;

declare function local:func_CreateNewSmsOtp_to_CreateNewSmsOtp($CreateNewSmsOtpRequest as element() (:: schema-element(ns1:createNewSmsOtpCodeRQ) ::), 
                                                               $Token as xs:string) 
                                                               as element() (:: schema-element(ns1:createNewSmsOtpCodeRQ) ::) {
    <ns1:createNewSmsOtpCodeRQ>
        <ns1:processContext>
            <ns1:channelId>{fn:data($CreateNewSmsOtpRequest/ns1:processContext/ns1:channelId)}</ns1:channelId>
            <ns1:externalId>{fn:data($CreateNewSmsOtpRequest/ns1:processContext/ns1:externalId)}</ns1:externalId>
        </ns1:processContext>
        <ns1:canal>{fn:data($CreateNewSmsOtpRequest/ns1:canal)}</ns1:canal>
        <ns1:sharedKey>{fn:data($CreateNewSmsOtpRequest/ns1:sharedKey)}</ns1:sharedKey>
        <ns1:purpose>{fn:data($CreateNewSmsOtpRequest/ns1:purpose)}</ns1:purpose>
        <ns1:contextBind>{fn:data($CreateNewSmsOtpRequest/ns1:contextBind)}</ns1:contextBind>
        <ns1:token>{fn:data($Token)}</ns1:token>
    </ns1:createNewSmsOtpCodeRQ>
};

local:func_CreateNewSmsOtp_to_CreateNewSmsOtp($CreateNewSmsOtpRequest, $Token)
