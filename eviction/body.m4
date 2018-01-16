include(`macros.m4')dnl
<?xml version='1.0' encoding='UTF-8'?>
<a:entry xmlns:a="http://www.w3.org/2005/Atom"
         xmlns:m="http://docs.oasis-open.org/odata/ns/metadata"
         xmlns:d="http://docs.oasis-open.org/odata/ns/data" m:context="$metadata#Evictions/$entity">
    <a:category scheme="http://docs.oasis-open.org/odata/ns/scheme" term="`#'OData.DHuS.Eviction"/>
    <a:content type="application/xml">
        <m:properties>
ex_property(            Name,             `_NAME')dnl
ex_property(      KeepPeriod,       `_KEEPPERIOD')dnl
ex_property(  KeepPeriodUnit,   `_KEEPPERIODUNIT')dnl
ex_property(          Filter,           `_FILTER', `true')dnl
ex_property(         OrderBy,          `_ORDERBY', `true')dnl
ex_property(TargetCollection, `_TARGETCOLLECTION', `true')dnl
ex_property(    SoftEviction,     `_SOFTEVICTION')dnl
ex_property(          Status,           `_STATUS')dnl
dnl
dnl  Cron config
dnl
defif_disjunc(`_HAS_CRON', `_CRON_ACTIVE', `_CRON_SCHEDULE')dnl
ifdef(`_HAS_CRON', `            <d:Cron>
ex_property(  Active,   `_CRON_ACTIVE', `', Boolean, 4)dnl
ex_property(Schedule, `_CRON_SCHEDULE', `',        , 4)dnl
            </d:Cron>', `dnl')
dnl
        </m:properties>
    </a:content>
</a:entry>
