include(`macros.m4')dnl
<entry xmlns:d="http://schemas.microsoft.com/ado/2007/08/dataservices"
       xmlns:m="http://schemas.microsoft.com/ado/2007/08/dataservices/metadata"
       xmlns="http://www.w3.org/2005/Atom">
    <id>http://localhost:8080/odata/v1/Synchronizers(_ID)</id>
    <title type="text">Synchronizer</title>
    <category term="DHuS.Synchronizer" scheme="http://schemas.microsoft.com/ado/2007/08/dataservices/scheme"/>
ifdef(`_TARGETCOLLECTION', `    <link rel="http://schemas.microsoft.com/ado/2007/08/dataservices/related/TargetCollection"', `dnl')
ifdef(`_TARGETCOLLECTION', `         type="application/atom+xml;type=entry" title="TargetCollection" href="_TARGETCOLLECTION" />', `dnl')
    <content type="application/xml">
        <m:properties>
ex_property(        Schedule,         `_SCHEDULE')dnl
ex_property(         Request,          `_REQUEST')dnl
ex_property(      ServiceUrl,       `_SERVICEURL')dnl
ex_property(           Label,            `_LABEL', true)dnl
ex_property(    ServiceLogin,     `_SERVICELOGIN')dnl
ex_property( ServicePassword,  `_SERVICEPASSWORD')dnl
ex_property(        PageSize,         `_PAGESIZE')dnl
ex_property(LastCreationDate, `_LASTCREATIONDATE', true)dnl
ex_property(     CopyProduct,      `_COPYPRODUCT')dnl
ex_property(     FilterParam,      `_FILTERPARAM', true)dnl
ex_property(SourceCollection, `_SOURCECOLLECTION', true)dnl
ex_property(       GeoFilter,        `_GEOFILTER', true)dnl
ex_property(  RemoteIncoming,   `_REMOTEINCOMING', true)dnl
ex_property(     SkipOnError,      `_SKIPONERROR')dnl
        </m:properties>
    </content>
</entry>
