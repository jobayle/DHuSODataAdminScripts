include(`macros.m4')dnl
dnl
<?xml version='1.0' encoding='UTF-8'?>
<a:entry xmlns:a="http://www.w3.org/2005/Atom"
         xmlns:m="http://docs.oasis-open.org/odata/ns/metadata"
	 xmlns:d="http://docs.oasis-open.org/odata/ns/data" m:context="$metadata#Collections/$entity">
    <a:category scheme="http://docs.oasis-open.org/odata/ns/scheme" term="#OData.DHuS.Collection"/>
    <a:content type="application/xml">
        <m:properties>
ex_property(       Name,        `_NAME')dnl
ex_property(Description, `_DESCRIPTION', true)dnl
        </m:properties>
     </a:content>
</a:entry>
