# Data Stores
List/Create/Update/Remove DataStores.

## How to use

### Set the environment variables that configure the DHuS:

+ **DHOST** DHuS Host address eg: localhost:8080, scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

### Commands

Parameters between angle brackets (chevrons) are mandatory.

Parameters between brackets ([]) are optional.

List DataStores / print a DataStore:
```
./getDataStores [DataStore id]
```

Create a DataStore:
```
./createDataStore
    <-D_DATASTORE_TYPE=DataStore_Type>
    <-D_NAME=name> <-D_READONLY=true|false>
    <-D_PRIORITY=>
    [-D_MAXIMUM_SIZE=]
    [-D_CURRENT_SIZE=]
    [-D_AUTO_EVICTION=true|false]
    [Options for choosen datastore type...]
```

Update a DataStore:
```
./updateDataStore <name> <-D_DATASTORE_TYPE=DataStore_Type> [Options...]
```

Delete a DataStore:
```
./deleteDataStore <name>
```

### Examples

```bash
./createDataStore -D_DATASTORE_TYPE=GMPDataStore -D_NAME=local_gmp -D_READONLY=true -D_PRIORITY=10\
      -D_GMP_REPOLOC=/var/gmp/tmp -D_HFS_LOCATION=/var/gmp\
      -D_MAX_QUEUED_RQ=4 -D_IS_MASTER=true -D_DB_URL='jdbc:mysql://localhost/gmp?serverTimezone=Europe/Paris' -D_DB_USER=gmp -D_DB_PASS=gmp
```