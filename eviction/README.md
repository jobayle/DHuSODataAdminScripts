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

Create an eviction:
```
./createEviction
    <-D_NAME=Name>
    [-D_KEEPPERIOD=keep period]
    [-D_KEEPPERIODUNIT=DAYS|HOURS|MINUTES]
    [-D_MAXEVICTEDPRODUCTS=max number of product to evict]
    [-D_FILTER=OData $filter]
    [-D_ORDERBY=OData $orderby]
    [-D_TARGETCOLLECTION=collection name]
    [-D_SOFTEVICTION=true|false]
    [-D_CRON_ACTIVE=true|false]
    [-D_CRON_SCHEDULE=cron expression]
```

List evictions / print an eviction:
```
./getEviction [eviction name [URI parameters]]
```

Delete an eviction:
```
./deleteEviction <eviction name>
```

Update an eviction:
```
./updateEviction <eviction name> [any options accepted by createEviction]
```

Queue an eviction:
```
./queueEviction
    <eviction name>
    [target datastore name, only evict in this datastore]
    [safe, to safe evict (product exists in at least one other datastore)]
```
