# Evictions
List/Create/Update/Remove Evictions: automatic removal of ingested data.

## How to use

### Set the environment variables that configure the DHuS:

+ **DHOST** DHuS Host address eg: localhost:8080, scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

### Commands

Parameters between angle brackets (chevrons) are mandatory.

Parameters between brackets ([]) are optional.

Create an Eviction:
```
./createEviction
    <-D_NAME=Name>
    [-D_KEEPPERIOD=keep period]
    [-D_KEEPPERIODUNIT=DAYS|HOURS|MINUTES]
    [-D_FILTER=OData $filter]
    [-D_ORDERBY=OData $orderby]
    [-D_TARGETCOLLECTION=collection name]
    [-D_SOFTEVICTION=true|false]
    [-D_CRON_ACTIVE=true|false]
    [-D_CRON_SCHEDULE=cron expression]
```

List evictions / print an evictions:
```
./getEviction [evictions name]
```

Delete an evictions:
```
./deleteEviction <evictions name>
```

Update an evictions:
```
./updateEviction <evictions nae> [any options accepted by createEviction]
```
