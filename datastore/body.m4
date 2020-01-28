include(`macros.m4')dnl
dnl    mandatory definition: _DATASTORE_TYPE
ifdef(`_DATASTORE_TYPE', `dnl', `fatal_error(`_DATASTORE_TYPE must be defined')')
dnl
<?xml version='1.0' encoding='UTF-8'?>
<a:entry xmlns:a="http://www.w3.org/2005/Atom"
         xmlns:m="http://docs.oasis-open.org/odata/ns/metadata"
         xmlns:d="http://docs.oasis-open.org/odata/ns/data" m:context="$metadata#DataStores/$entity">
    <a:category scheme="http://docs.oasis-open.org/odata/ns/scheme" term="`#'OData.DHuS._DATASTORE_TYPE"/>
    <a:content type="application/xml">
        <m:properties>
dnl
dnl    Shared Properties:
dnl
ex_property(        Name,          `_NAME')dnl
ex_property( Restriction,   `_RESTRICTION')dnl
ex_property(    Priority,      `_PRIORITY', `',   Int32)dnl
ex_property( MaximumSize,  `_MAXIMUM_SIZE', `',   Int64)dnl
ex_property( CurrentSize,  `_CURRENT_SIZE', `',   Int64)dnl
ex_property(AutoEviction, `_AUTO_EVICTION', `', Boolean)dnl
ex_property(      Filter,        `_FILTER')dnl
dnl
dnl
dnl    Async Shared Properties:
dnl
defif_disjunc(`_HAS_PATTERN_REP_IN', `_PR_IN_PAT', `_PR_IN_REP')dnl
ifdef(`_HAS_PATTERN_REP_IN', `            <d:PatternReplaceIn m:type="#OData.DHuS.PatternReplace">
ex_property(    Pattern, `_PR_IN_PAT', `', `', 4)dnl
ex_property(Replacement, `_PR_IN_REP', `', `', 4)dnl
            </d:PatternReplaceIn>', `dnl')
dnl
defif_disjunc(`_HAS_PATTERN_REP_OUT', `_PR_OUT_PAT', `_PR_OUT_REP')dnl
ifdef(`_HAS_PATTERN_REP_OUT', `            <d:PatternReplaceOut m:type="#OData.DHuS.PatternReplace">
ex_property(    Pattern, `_PR_OUT_PAT', `', `', 4)dnl
ex_property(Replacement, `_PR_OUT_REP', `', `', 4)dnl
            </d:PatternReplaceOut>', `dnl')
dnl
dnl
dnl    Properties for HFS data stores:
dnl
ifelse(_DATASTORE_TYPE, `HFSDataStore', `dnl
ex_property(        Path,         `_PATH')dnl
ex_property(MaxFileDepth, `_MAXFILEDEPTH', `', Int32)dnl
ex_property(    MaxItems,     `_MAXITEMS', `', Int32)dnl
')dnl
dnl
dnl
dnl    Properties for OpenStack data stores:
dnl
ifelse(_DATASTORE_TYPE, `OpenStackDataStore', `dnl
ex_property(  Provider,   `_PROVIDER')dnl
ex_property(  Identity,   `_IDENTITY')dnl
ex_property(Credential, `_CREDENTIAL')dnl
ex_property(       Url,        `_URL')dnl
ex_property(    Region,     `_REGION')dnl
ex_property( Container,  `_CONTAINER')dnl
')dnl
dnl
dnl
dnl    Properties for GMP data stores:
dnl
ifelse(_DATASTORE_TYPE, `GMPDataStore', `dnl
ex_property(    RepoLocation,   `_GMP_REPOLOC')dnl
ex_property(     HFSLocation,  `_HFS_LOCATION')dnl
ex_property(MaxParallelFetchRequestsPerUser, `_MAX_PFRPU', `',   Int32)dnl
ex_property(        IsMaster,     `_IS_MASTER', `', Boolean)dnl
dnl
defif_disjunc(`_HAS_GMPCONF', `_AGENT_ID', `_TARGET_ID')dnl
ifdef(`_HAS_GMPCONF', `            <d:Configuration m:type="#OData.DHuS.GMPConfiguration">
ex_property(         AgentId,      `_AGENT_ID', `', `', 4)dnl
ex_property(        TargetId,     `_TARGET_ID', `', `', 4)dnl
            </d:Configuration>', `dnl')
dnl
defif_disjunc(`_HAS_MYSQL', `_DB_URL', `_DB_USER', `_DB_PASS')dnl
dnl
ifdef(`_HAS_MYSQL', `            <d:MySQLConnectionInfo m:type="#OData.DHuS.MySQLConnectionInfo">
ex_property(DatabaseUrl,  `_DB_URL', `', `', 4)dnl
ex_property(       User, `_DB_USER', `', `', 4)dnl
ex_property(   Password, `_DB_PASS', `', `', 4)dnl
            </d:MySQLConnectionInfo>', `dnl')
dnl
defif_disjunc(`_HAS_QUOTAS', `_QUOTA_MAX_QPU', `_QUOTA_TIMESPAN')dnl
dnl
ifdef(`_HAS_QUOTAS', `            <d:Quotas m:type="#OData.DHuS.Quotas">
ex_property(MaxQueryPerUser,  `_QUOTA_MAX_QPU', `', `Int32', 4)dnl
ex_property(       Timespan, `_QUOTA_TIMESPAN', `', `Int64', 4)dnl
            </d:Quotas>', `dnl')
')dnl
dnl
dnl
dnl    Properties for RemoteDHuS data stores:
dnl
ifelse(_DATASTORE_TYPE, `RemoteDHuSDataStore', `dnl
ex_property(   ServiceUrl,    `_SERVICEURL')dnl
ex_property(        Login,         `_LOGIN')dnl
ex_property(     Password,      `_PASSWORD')dnl
ex_property(AliveInterval, `_ALIVEINTERVAL', `true', `Int64')dnl
')dnl
dnl
dnl
dnl    Properties for PDGS and ParamPDGS data stores:
dnl
ifany(_DATASTORE_TYPE, `PDGSDataStore', `ParamPDGSDataStore', `dnl
ex_property(             ServiceUrl, `_SERVICEURL')dnl
ex_property(                  Login,      `_LOGIN')dnl
ex_property(               Password,   `_PASSWORD')dnl
ex_property(MaxConcurrentsDownloads,    `_MAXCCDL', `true', `Int32')dnl
ex_property(               Interval,   `_INTERVAL', `true', `Int64')dnl
')dnl
ifelse(_DATASTORE_TYPE, `ParamPDGSDataStore', `dnl
ex_property(   UrlParamPattern, `_URLPARAMPATTERN')dnl
ex_property(ProductNamePattern, `_PRODNAMEPATTERN')dnl
')dnl
dnl
dnl
dnl TODO: other datastores:
dnl
        </m:properties>
    </a:content>
</a:entry>
