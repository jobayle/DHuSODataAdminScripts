# Products
List/Count/Delete/Search/Fetch Products.

## How to use

### Set the environment variables that configure the DHuS:

+ **DHOST** DHuS Host address eg: localhost:8080, scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

### Use a command:

Parameters between angle brackets (chevrons) are mandatory.

Parameters between brackets ([]) are optional.

Get products:
```
./getProduct [product UUID [extra parameters, eg: $top, $filter, $expand]]
```

Head a product: (HTTP HEAD request to the media stream of the product entity ($value))
```
./headProduct <product UUID>
```

Fetch (download) a product:
```
./fetchProduct <product UUID>
```

Delete a product:
```
./deleteProduct <product UUID>
```

Search products (using the OpenSearch (/search) API):
```
./openSearch <full text search query>
```

Count products:
```
./countProducts
```

Count deleted products:
```
./countDeletedProducts
```
