# Collections
List/Create/Update/Delete Collections.

## How to use

### Set the environment variables that configure the DHuS:

+ **DHOST** DHuS Host address eg: localhost:8080, scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

### Use a command:

Parameters between angle brackets (chevrons) are mandatory.

Parameters between brackets ([]) are optional.

Create a collection:
```
./createCollection
    <-D_NAME=collection name>
    [-D_DESCRIPTION=collection description]
```

Get collections:
```
./getCollections [collection name [extra parameters: $top $filter $expand ...]]
```

Update a collection:
```
./updateCollection <collection name> [any options accepted by createCollection]
```

Delete a collection:
```
./deleteCollection <collection name>
```
