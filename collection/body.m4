include(`macros.m4')dnl
<entry xmlns:d="http://schemas.microsoft.com/ado/2007/08/dataservices"
       xmlns:m="http://schemas.microsoft.com/ado/2007/08/dataservices/metadata"
       xmlns="http://www.w3.org/2005/Atom">
    <id>http://localhost:8080/odata/v1/Collections(_NAME)</id>
    <title type="text">Collections</title>
    <category term="DHuS.Collection" scheme="http://schemas.microsoft.com/ado/2007/08/dataservices/scheme"/>
    <content type="application/xml">
        <m:properties>
ex_property(       Name,        `_NAME')dnl
ex_property(Description, `_DESCRIPTION', true)dnl
        </m:properties>
    </content>
</entry>
