include(`macros.m4')dnl
dnl
<?xml version='1.0' encoding='UTF-8'?>
<a:entry xmlns:a="http://www.w3.org/2005/Atom"
         xmlns:m="http://docs.oasis-open.org/odata/ns/metadata"
	 xmlns:d="http://docs.oasis-open.org/odata/ns/data" m:context="$metadata#Users/$entity">
    <a:category scheme="http://docs.oasis-open.org/odata/ns/scheme" term="#OData.DHuS.User"/>
    <a:content type="application/xml">
        <m:properties>
ex_property( Username,  `_USERNAME')dnl
ex_property(    Email,     `_EMAIL', true)dnl
ex_property(FirstName, `_FIRSTNAME', true)dnl
ex_property( LastName,  `_LASTNAME', true)dnl
ex_property(  Country,   `_COUNTRY', true)dnl
ex_property(    Phone,     `_PHONE', true)dnl
ex_property(  Address,   `_ADDRESS', true)dnl
ex_property(   Domain,    `_DOMAIN', true)dnl
ex_property(SubDomain, `_SUBDOMAIN', true)dnl
ex_property(    Usage,     `_USAGE', true)dnl
ex_property( SubUsage,  `_SUBUSAGE', true)dnl
ex_property( Password,  `_PASSWORD', true)dnl
dnl
dnl
dnl System Roles
dnl
ifdef(`_ROLES', `dnl
            <d:SystemRoles m:type="#Collection(OData.DHuS.SystemRole)">
foreachq(`_ROLES_IT', `_ROLES', `dnl
                <m:element>_ROLES_IT</m:element>
')dnl
            </d:SystemRoles>
', `')dnl
dnl
dnl            <d:Restrictions m:type="#Collection(OData.DHuS.Restriction)">
dnl            </d:Restrictions>
        </m:properties>
    </a:content>
</a:entry>
