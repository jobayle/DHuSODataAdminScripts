# User Download Cart
Add/Remove products to/from a user's cart.

## How to use

### Set the environment variables that configure the DHuS:

+ **DHOST** DHuS Host address eg: localhost:8080, scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

### Commands

Parameters between angle brackets (chevrons) are mandatory.

Parameters between brackets ([]) are optional.

Add a product to cart:  
```./addProductToCart <username> <product UUID>```

List contents of a cart:  
```./listCart <username>```

Cart as Metalink4:  
```./cartAsMetalink <username>```

Remove a product from cart:  
```./removeProductFromCart <username> <product UUID>```
