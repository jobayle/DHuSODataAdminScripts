divert(`-1')
    Macro definitions:
    ------------------

    ifndef: if not defined, ifndef(MacroName, ToExpand)

define(`ifndef', `ifdef(`$1', `', `$2')')
-----

    ifnempty: expands $2 if $1 is defined and is not empty, expands $3 otherwise

define(`ifnempty', `ifdef(`$1', `ifelse($1, `', `$3', `$2')', `$3')')
-----

    defif_disjunc: defines `$1' if at least one of the remaining parameters is defined (at least 2 parameters required)

define(`defif_disjunc', `ifdef(`$2', `define(`$1')', `ifelse(`$#', `2', , `defif_disjunc(`$1', shift(shift($@)))')')')
-----

    ifany: if `$1' is defined to any of the passed values, then expands the last arg, expects least 3 args

define(`expand_last', `ifelse(`$#', `1', `$1', `expand_last(shift($@))')')
define(`ifany', `ifelse(`$1', `$2', `expand_last($@)', `ifelse(`$#', `2', `', `ifany(`$1', shift(shift($@)))')')')
-----

    fatal_error: prints message then exits

define(`fatal_error', `errprint(__program__:__file__:__line__`: fatal error: $*
')m4exit(`1')')
-----

    forloop(iter, start, end, text): from example forloop2.m4, variable start/end params must not be quoted

define(`forloop', `ifelse(eval(`($2) <= ($3)'), `1', `pushdef(`$1')_$0(`$1', eval(`$2'), eval(`$3'), `$4')popdef(`$1')')')
define(`_forloop', `define(`$1', `$2')$4`'ifelse(`$2', `$3', `', `$0(`$1', incr(`$2'), `$3', `$4')')')
-----

    ex_property: expands property, ex_property(PropName, MacroName, Nullable=false, PropType=String, Indent=3)
        Property is expanded if MacroName is defined.

define(`ex_property', `dnl
dnl
dnl ### Sets _Indent macro to contain the amount of indentation
define(`_Indent', `ifelse(`$5', `', `3', `$5')')dnl
dnl
dnl ### If MacroName is defined, expands indentation and property, adds {PropType} if set
ifdef(`$2', `forloop(`_Iter', `1', _Indent, `    ')`<d:$1'ifelse(`$4', `', `', ` m:type="$4"')>$2</d:$1>
')dnl
dnl
dnl ### If MacroName_NULL is defined, expands indentation and property nulled
ifelse(`$3', `true', `ifdef(`$2'`_NULL', `forloop(`_Iter', `1', _Indent, `    ')<d:$1 m:null="true" />
')')dnl
')
-----
divert(`0')