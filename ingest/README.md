# Upload and Ingest a product
The `ingest` script compares the md5sum of the uploaded file to the md5sum computed by the DHuS.

## How to use

### Set the environment variables that configure the DHuS:

+ **DHOST** DHuS Host address eg: localhost:8080, scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

### Commands

Parameters between angle brackets (chevrons) are mandatory.

Parameters between brackets ([]) are optional.

Upload / ingest a new product:  
```./ingest <path/to/data.zip>```

List ingests / print an ingest:  
```./getIngest [ingest id]```

Delete an ingest:  
```./deleteIngest <ingest id>```
