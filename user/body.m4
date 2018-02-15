include(`macros.m4')dnl
<entry xmlns:d="http://schemas.microsoft.com/ado/2007/08/dataservices"
       xmlns:m="http://schemas.microsoft.com/ado/2007/08/dataservices/metadata"
       xmlns="http://www.w3.org/2005/Atom">
    <id>http://localhost:8080/odata/v1/Users('_KEY')</id>
    <title type="text">User</title>
    <category term="DHuS.User" scheme="http://schemas.microsoft.com/ado/2007/08/dataservices/scheme"/>
    <content type="application/xml">
        <m:properties>
ex_property( Username,  `_USERNAME')dnl
ex_property(    Email,     `_EMAIL')dnl
ex_property(FirstName, `_FIRSTNAME', true)dnl
ex_property( LastName,  `_LASTNAME', true)dnl
ex_property(  Country,   `_COUNTRY', true)dnl
ex_property(   Domain,    `_DOMAIN', true)dnl
ex_property(SubDomain, `_SUBDOMAIN', true)dnl
ex_property(    Usage,     `_USAGE', true)dnl
ex_property( SubUsage,  `_SUBUSAGE', true)dnl
ex_property(    Phone,     `_PHONE', true)dnl
ex_property(  Address,   `_ADDRESS', true)dnl
ex_property( Password,  `_PASSWORD', true)dnl
        </m:properties>
    </content>
</entry>
