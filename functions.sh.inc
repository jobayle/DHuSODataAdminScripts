# Checks if environment variables DHOST, DLOGIN and DPASS are set
function check_envvars {
  if [ -z "${DHOST+x}" -o -z "${DLOGIN+x}" -o -z "${DPASS+x}" ]; then
    echo 'Error: environment variables are not set'
    exit 1
  fi
}

# Checks that command($1) exists
function check_command {
  hash $1
  if [ $? -ne 0 ]; then
    echo 'Error: command $1 not found (not in $PATH)'
    exit 1
  fi
}

# Checks that envvars are set and m4, curl and xmllint commands exist
function check_basic {
  check_envvars
  check_command m4
  check_command curl
  check_command xmllint
}

# Checks if xmllint was built with XPath support
function check_xmllint_xpath {
  xmllint --version 2>&1 | grep -E 'compiled with: (\w+ ?)+ XPath' > /dev/null
  if [ $? -ne 0 ]; then
    echo 'Warning: xmllint was not built with XPath support enabled'
  fi
}

# if the length of $1 is greater that 0, return "($1)"
function make_key {
  if [ -n "$1" ]; then
    echo "($1)"
  fi
}

# if the length of $1 is greater that 0, return "('$1')"
function make_key_string {
  if [ -n "$1" ]; then
    echo "('$1')"
  fi
}

# if the length of $1 is greater that 0, return "?$1"
function make_uri_params {
  if [ -n "$1" ]; then
    echo "?$1"
  fi
}

# Curl invocation options with ATOM format headers
CURL_OPTS=(-Ss --basic -u ${DLOGIN}:${DPASS} -H 'Accept:application/atom+xml' -H 'Content-Type:application/atom+xml')
# Curl invocation options with XML format headers
CURL_OPTS_XML=(-Ss --basic -u ${DLOGIN}:${DPASS} -H 'Accept:application/xml' -H 'Content-Type:application/xml')

# Displays "Success!" if the response($1) is a zero-length string, formats the response($1) as XML otherwise
function format_response {
  if [ -z "$1"  ]; then
    echo 'Success!'
  else
    echo "$1" | xmllint --format -
  fi
}

# Exits if $1 != 0
function exit_if_nzero {
  if [ $1 -ne 0 ]; then exit 1; fi
}

# To include macros.m4
export M4PATH="${BASH_SOURCE%/*}/m4:$M4PATH"

# Empty action document
ACTION_NO_PARAMS='<parameters></parameters>'
