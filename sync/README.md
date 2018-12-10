# Synchronisers
Scripts to manage synchronisers.

## How to use

### Set the environment variables that configure the DHuS:

+ **DHOST** DHuS Host address eg: localhost:8080, scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

### Commands

Parameters between angle brackets (chevrons) are mandatory.

Parameters between brackets ([]) are optional.

Create a Synchroniser:
```
./createSynchronizer
    <Synchroniser type>
    <-D_CRON_SCHEDULE=cron_expression>
    [-D_CRON_ACTIVE=true|false]
    [-D_LABEL=my_sync]
    [Special options supported by specified synchroniser type...]
```

Supported synchroniser types: `SmartSynchronizer`

Options of SmartSynchronizers:
```
    [-D_PAGESIZE=page size]
    [-D_FILTERPARAM=$filter expression]
    [-D_GEOFILTER=geofilter]
    [-D_ATTEMPTS=attempts]
    [-D_TIMEOUT=timeout]
    [-D_THRESHOLD=threshold]
    [-D_SYNC_SRC_COUNT=number of sources in argument list
        <for # in range [1..SYNC_SRC_COUNT] {
            <-D_SOURCEID_#=source ID>
            [-D_LASTCREATIONDATE_#=last creation date]
            [-D_SOURCECOLLECTION_#=source collection]
        }>
    ]
```

List synchronisers / print a synchroniser:
```
./getSynchronizer [synchroniser id [URI parameters]]
```

Delete a synchroniser:
```
./deleteSynchronizer <synchroniser id>
```

Update a synchroniser:
```
./updateSynchronizer <Synchroniser type> <synchroniser id> [any options accepted by createSynchronizer]
```

There are options to nullify nullable properties, just add `_NULL', e.g.: -D_LABEL_NULL, -D_GEOFILTER_NULL, ...

Start a synchroniser:
```
./startSync <synchroniser id>
```

Stop a synchroniser:
```
./stopSync <synchroniser id>
```

### Examples:

```bash
./createSynchronizer SmartSynchronizer -D_LABEL=my_smart_sync \
    -D_CRON_SCHEDULE='0 */3 * * * ?' -D_CRON_ACTIVE=false -D_PAGESIZE=20 \
    -D_SYNC_SRC_COUNT=2 -D_SOURCEID_1=0 -D_SOURCEID_2=1

# -D_GEOFILTER='intersects POLYGON((-24.61903123097289 63.345943833554685,-13.125342536439836 63.345943833554685,-13.125342536439836 66.61007811487349,-24.61903123097289 66.61007811487349,-24.61903123097289 63.345943833554685))'
```