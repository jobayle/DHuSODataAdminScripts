include(`macros.m4')dnl
<entry xmlns:d="http://schemas.microsoft.com/ado/2007/08/dataservices"
       xmlns:m="http://schemas.microsoft.com/ado/2007/08/dataservices/metadata"
       xmlns="http://www.w3.org/2005/Atom">
    <id>http://localhost:8080/odata/v1/Scanners(_ID)</id>
    <title type="text">Scanners</title>
    <category term="DHuS.Scanner" scheme="http://schemas.microsoft.com/ado/2007/08/dataservices/scheme"/>
    <content type="application/xml">
        <m:properties>
ex_property(     Url,     `_URL')dnl
ex_property(  Active,  `_ACTIVE')dnl
ex_property(Username, `_USERNAME', true)dnl
ex_property(Password, `_PASSWORD', true)dnl
ex_property( Pattern,  `_PATTERN', true)dnl
        </m:properties>
    </content>
</entry>
