include(`macros.m4')dnl
dnl    mandatory definition: _SYNC_TYPE
ifdef(`_SYNC_TYPE', `dnl', `fatal_error(`_SYNC_TYPE must be defined')')
dnl
<?xml version='1.0' encoding='UTF-8'?>
<a:entry xmlns:a="http://www.w3.org/2005/Atom"
         xmlns:m="http://docs.oasis-open.org/odata/ns/metadata"
         xmlns:d="http://docs.oasis-open.org/odata/ns/data" m:context="$metadata#Synchronizers/$entity">
    <a:category scheme="http://docs.oasis-open.org/odata/ns/scheme" term="`#'OData.DHuS._SYNC_TYPE"/>
    <a:content type="application/xml">
        <m:properties>
dnl
dnl    Shared Properties:
dnl
ex_property(Label, `_LABEL', true)dnl
dnl
defif_disjunc(`_HAS_CRON', `_CRON_ACTIVE', `_CRON_SCHEDULE')dnl
dnl
ifdef(`_HAS_CRON', `            <d:Cron m:type="#OData.DHuS.Cron">
ex_property(  Active,   `_CRON_ACTIVE', `', Boolean, 4)dnl
ex_property(Schedule, `_CRON_SCHEDULE', `',      `', 4)dnl
            </d:Cron>', `dnl')
dnl
dnl
dnl    Properties for Smart Syncs:
dnl
ifelse(_SYNC_TYPE, `SmartSynchronizer', `dnl
ex_property(   PageSize,    `_PAGESIZE', `', Int32)dnl
ex_property(ParamFilter, `_PARAMFILTER', true)dnl
ex_property(  GeoFilter,   `_GEOFILTER', true)dnl
ex_property(   Attempts,    `_ATTEMPTS', `', Int32)dnl
ex_property(    Timeout,     `_TIMEOUT', `', Int64)dnl
ex_property(  Threshold,   `_THRESHOLD', `', Int64)dnl
dnl
ifdef(`_SYNC_SRC_COUNT', `dnl
            <d:SynchronizerSources m:type="#Collection(OData.DHuS.SynchronizerSource)">
forloop(`_SYNC_SRC_IT', 1, _SYNC_SRC_COUNT, `dnl
                <m:element>
ex_property(        SourceId,           `_SOURCEID_'_SYNC_SRC_IT,   `', Int32, 5)dnl
ex_property(LastCreationDate,   `_LASTCREATIONDATE_'_SYNC_SRC_IT, true,  Date, 5)dnl
ex_property(SourceCollection,   `_SOURCECOLLECTION_'_SYNC_SRC_IT, true,    `', 5)dnl
                </m:element>
')dnl
            </d:SynchronizerSources>
', `')dnl
')dnl
dnl
dnl TODO: other sync types:
dnl
        </m:properties>
    </a:content>
</a:entry>