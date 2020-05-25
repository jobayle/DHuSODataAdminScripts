# Users
Read/Create/Update/Lock/Unlock users.

## HowTo use

### Set the environment variables that configure the DHuS:

+ **DHOST** DHuS Host address eg: localhost:8080, scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

### Use a command:

Parameters between angle brackets (chevrons) are mandatory.

Parameters between brackets ([]) are optional.

Create a user:
```
./createUser
    <-D_USERNAME=username>
    <-D_PASSWORD=password>
    <-D_EMAIL=email>
    [-D_FIRSTNAME=first name]
    [-D_LASTNAME=last name]
    [-D_COUNTRY=country code]
    [-D_DOMAIN=domain]
    [-D_SUBDOMAIN=subdomain]
    [-D_USAGE=usage]
    [-D_SUBUSAGE=subusage]
    [-D_PHONE=phone number]
    [-D_ADDRESS=address]
    [-D_ROLES='role1,role2,...']
```

Get users
```
./getUsers [username [extra parameters, e.g.: '$expand=SystemRoles' or '$filter=...']]
```

Update a User:
```
./updateUser <username> [any options accepted by createUser]
```

Lock a User:
```
./lockUser <username> <reason>
```

Unlock a User:
```
./unlockUser <username> <restriction UUID>
```

Set roles (Not implemented in DHuS yet, but the script exists):
```
./putRoles <username> <role1> [role2] [...]
```

Add role (Not implemented in Olingo yet, but the script exists):
```
./postRole <username> <role>
```

### Examples:

```bash
./createUser -D_USERNAME=foo -D_EMAIL='foo@bar.baz' \
    -D_FIRSTNAME=Foo -D_LASTNAME=Bar -D_COUNTRY=GB \
    -D_PASSWORD=password

./getUsers '' '$expand=Restrictions&$top=10' # no key, extra parameters

./getUsers 'foo' '$expand=SystemRoles'
```
