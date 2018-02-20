include(`macros.m4')dnl
<?xml version='1.0' encoding='UTF-8'?>
<a:entry xmlns:a="http://www.w3.org/2005/Atom"
         xmlns:m="http://docs.oasis-open.org/odata/ns/metadata"
         xmlns:d="http://docs.oasis-open.org/odata/ns/data" m:context="$metadata#Sources/$entity">
    <a:category scheme="http://docs.oasis-open.org/odata/ns/scheme" term="`#'OData.DHuS.Source"/>
    <a:content type="application/xml">
        <m:properties>
ex_property(                  Url,                   `_URL')dnl
ex_property(             Username,              `_USERNAME', true)dnl
ex_property(             Password,              `_PASSWORD', true)dnl
ex_property(MaxConcurrentDownload, `_MAXCONCURRENTDOWNLOAD',   `', Int32)dnl
        </m:properties>
    </a:content>
</a:entry>
