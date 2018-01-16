# DHuS OData Admin Scripts

This repo contains various scripts to administrate a DHuS instance using its
OData API.

### Dependencies

* bash
* m4
* curl
* xmllint

### Functionalities

* cart — List,Add,Remove products from/to the download cart of a User
* datastore — List,Create,Update,Remove DataStores
* eviction — List,Create,Update,Remove Evictions
* ingest — Upload and Ingest products
* product_sync — Manage OData Product Synchronisers
* scanner — List,Create,Update,Remove FileScanners
* user_sync — Manage OData User Synchronisers

### Note

All these scripts use the same configuration, three environment variables, to
manage a specific instance of the DHuS:

+ **DHOST** DHuS Host address eg: localhost:8080, scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

The script print_env displays the content of these three variables.

The script setenv_localhost may be sourced to manage a local DHuS instance.

### Licence

BSD, see COPYING.
