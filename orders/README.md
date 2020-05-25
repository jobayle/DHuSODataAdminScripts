# Orders
List/Remove existing Orders, submit new orders.

## How to use

### Set the environment variables that configure the DHuS:

+ **DHOST** DHuS Host address eg: localhost:8080, scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

### Use a command:

Parameters between angle brackets (chevrons) are mandatory.

Parameters between brackets ([]) are optional.

List orders:
```
./getOrders [Order ID] [Parameters]
```

List orders with extra parameters:
```
./getOrders '' '$top=3'
```

Get a specific order by its ID:
```
./getOrders <Order ID>
```

Delete a specific order:
```
./deleteOrder <Order ID>
```

Order an offline product:
```
./orderProduct <Product UUID>
```
