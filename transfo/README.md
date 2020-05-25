# Transformations
List Transformers and Transformations.
Submit product transformations.

## How to use

### Set the environment variables that configure the DHuS:

+ **DHOST** DHuS Host address eg: localhost:8080, scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

### Use a command:

Parameters between angle brackets (chevrons) are mandatory.

Parameters between brackets ([]) are optional.

Get transformers:
```
./getTransformers [transformer name [extra params, eg: $top $expand $filter]]
```

Get transformations:
```
./getTransformations [transformation UUID [extra params, eg: $top $expand $filter]]
```

Transform a product using a specific transformer:
```
./transformProduct <product UUID> <transformer name>
```
