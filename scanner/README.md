# File Scanners
List/Create/Update/Remove/Start/Stop FileScanners.

## How to use

### Set the environment variables that configure the DHuS:

+ **DHOST** DHuS Host address eg: localhost:8080, scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

### Use a command:

Parameters between angle brackets (chevrons) are mandatory.

Parameters between brackets ([]) are optional.

Create a scanner:
```
./createScanner
    <-D_URL=URL_to_resource_to_scan>
    [-D_USERNAME=username]
    [-D_PASSWORD=password]
    [-D_ACTIVE=true|false]
    [-D_PATTERN=...]
```

List scanners / print a scanner:
```
./getScanner [scanner id [URI parameters]]
```

Delete a scanner:
```
./deleteScanner <scanner id>
```

Update a scanner:
```
./updateScanner <scanner id> [any options accepted by createScanner]
```

Start a scanner:
```
./startScanner <scanner id>
```

Stop a scanner:
```
./stopScanner <scanner id>
```

Add a target Collection:
```
./addTargetCollection <scanner id> <collection name>
```

Remove a target Collection:
```
./deleteTargetCollection <scanner id> <collection name>
```

There are options to nullify nullable properties: -D_USERNAME_NULL, -D_PASSWORD_NULL, -D_PATTERN_NULL
