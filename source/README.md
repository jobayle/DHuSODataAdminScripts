# Sources
List/Create/Update/Remove Sources: data sources for the smart sync™.

## How to use

### Set the environment variables that configure the DHuS:

+ **DHOST** DHuS Host address eg: localhost:8080, scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

### Commands

Parameters between angle brackets (chevrons) are mandatory.

Parameters between brackets ([]) are optional.

Create a source:
```
./createSource
    <-D_URL=Url to remove service>
    [-D_USERNAME=credentials on remote service]
    [-D_PASSWORD=credentials on remote service]
    [-D_MAXCONCURRENTDOWNLOAD=maximum number of concurrent downloads]
```

List sources / print a source:
```
./getSource [source id [URI parameters]]
```

Delete a source:
```
./deleteSource <source id>
```

Update a source:
```
./updateSource <source id> [any options accepted by createSource]
```

