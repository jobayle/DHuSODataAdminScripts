# DHuS OData Admin Scripts

This repo contains various scripts to administrate a DHuS instance using its
OData API.

## Deprecation notice

The very bright people of the OData OASIS committee decided that the Atom+XML format
should be removed from the OData standard.

See: http://docs.oasis-open.org/odata/new-in-odata/v4.01/cn02/new-in-odata-v4.01-cn02.html#_Toc495652542

Therefore this repo is deprecated. Go make your own tools now.

### Dependencies

* bash
* m4
* curl
* xmllint

### Functionalities

* cart — Manage the download Cart of a User (deprecated once the Cart is ported to OData4)
* collection — Manage Collections (*deprecated*, use V2collection instead)
* datastore — Manage DataStores
* eviction — Manage Evictions
* ingest — Upload and Ingest a product
* order — Submit and Manage Orders
* product — Fetch, Count, Search and Manage products (*deprecated*, use V2product instead)
* product_sync — Manage OData Product Synchronisers (classic sync, deprecated once all syncs are ported to OData4)
* repair — Repair products Action
* scanner — Manage FileScanners (*deprecated*, use V2scanner instead)
* source — Manage Sources (Smart Sync)
* sync — Manage Synchronisers
* transfo — Submit and Manage Transformations
* user — Manage Users (*deprecated*, use V2user instead)
* user_sync — Manage OData User Synchronisers (deprecated once all syncs are ported to OData4)
* V2collection — Manage Collections
* V2product — Fetch, Count, Search and Manage products
* V2scanner — Manage FileScanners
* V2user — Manage Users

### Note

All these scripts use the same configuration, three environment variables, to
manage a specific instance of the DHuS:

+ **DHOST** DHuS Host address eg: http://localhost:8080, https://scihub.copernicus.eu/dhus/
+ **DLOGIN** DHuS login username to connect to the $DHOST DHuS
+ **DPASS** DHuS login password to connect to the $DHOST DHuS

Script `./print_env` displays the content of these three variables.

Script `setenv_localhost` may be sourced to manage a local DHuS instance.

### Contributing

Most scripts do 3 things:

1. invoke m4 on body.m4 to generate the payload document
2. invoke curl to submit the payload generated at step 1 to the OData Service
3. invoke xmllint to format the response returned by the OData Service (for readability)

#### Architecture

##### Shell scripts

Each scripts use a library: see file `functions.sh.inc` in the root folder.

##### M4 payload templates

Most folders contain a `body.m4` file, this file is a template to generate the payload document (usually XML) sent to
the OData service.

This file is easy to read, it consists of invocations of the `ex_property` macro that expands the property in an
XML element.

That macro (along with many other utility macros) is defined and documented in file `m4/macros.m4`.

The signature of the `ex_property` macro is:

```m4
ex_property(
    XML_element_property_name,
    macro_name,
    nullable=false,
    property_type=String,
    indentation_level=3
)
```

* `XML_element_property_name`: name of the XML element, eg: `Description`.
* `macro_name`: name of the macro containing the value, eg: `_DESCRIPTION`, if not defined, the macro does not expand.
* `nullable`: if true, the macro_name with a `_NULL` suffix is used to nullify the property, eg: `_DESCRIPTION_NULL`.
  Defaults to `false`.
* `property_type`: the Edm type of the property (attribute m:type), eg: Int32, Int64, Boolean, Double, ...
  Defaults to `String`.
* `indentation_level`: to properly indent the produced document and increase readability. Defaults to `3`.

### Licence

BSD, see COPYING.
