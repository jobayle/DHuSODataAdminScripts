include(`macros.m4')dnl
dnl
<?xml version='1.0' encoding='UTF-8'?>
<a:entry xmlns:a="http://www.w3.org/2005/Atom"
         xmlns:m="http://docs.oasis-open.org/odata/ns/metadata"
	 xmlns:d="http://docs.oasis-open.org/odata/ns/data" m:context="$metadata#Scanners/$entity">
    <a:category scheme="http://docs.oasis-open.org/odata/ns/scheme" term="#OData.DHuS.FileScanner"/>
    <a:content type="application/xml">
        <m:properties>
dnl            <d:Id m:type="Int64">0</d:Id>
ex_property(         Url,          `_URL')dnl
ex_property(     Pattern,      `_PATTERN', true)dnl
ex_property(SourceRemove, `_SOURCEREMOVE', `', Boolean)dnl
dnl
defif_disjunc(`_HAS_CRON', `_ACTIVE', `_SCHEDULE')dnl
ifdef(`_HAS_CRON', `            <d:Cron m:type="#OData.DHuS.Cron">
ex_property(      Active,      `_ACTIVE', `', Boolean)dnl
ex_property(    Schedule,    `_SCHEDULE', `', `', 4)dnl
            </d:Cron>', `dnl')
dnl
        </m:properties>
    </a:content>
</a:entry>
