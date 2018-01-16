include(`macros.m4')dnl
<entry xmlns:d="http://schemas.microsoft.com/ado/2007/08/dataservices"
       xmlns:m="http://schemas.microsoft.com/ado/2007/08/dataservices/metadata"
       xmlns="http://www.w3.org/2005/Atom">
    <id>http://localhost:8080/odata/v1/UserSynchronizers(_ID)</id>
    <title type="text">UserSynchronizer</title>
    <category term="DHuS.UserSynchronizer" scheme="http://schemas.microsoft.com/ado/2007/08/dataservices/scheme"/>
    <content type="application/xml">
        <m:properties>
ex_property(       Schedule,        `_SCHEDULE')dnl
ex_property(        Request,         `_REQUEST')dnl
ex_property(     ServiceUrl,      `_SERVICEURL')dnl
ex_property(          Label,           `_LABEL', true)dnl
ex_property(   ServiceLogin,    `_SERVICELOGIN')dnl
ex_property(ServicePassword, `_SERVICEPASSWORD')dnl
ex_property(         Cursor,          `_CURSOR')dnl
ex_property(       PageSize,        `_PAGESIZE')dnl
ex_property(          Force,           `_FORCE')dnl
        </m:properties>
    </content>
</entry>
