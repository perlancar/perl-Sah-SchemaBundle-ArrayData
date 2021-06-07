package Sah::Schema::perl::arraydata::modname_with_optional_args;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'Perl ArrayData::* module name without the prefix (e.g. Word::ID::KBBI) with optional arguments (e.g. WordList=wordlist,EN::Enable)',
    description => <<'_',

Perl ArrayData::* module name without the prefix, with optional arguments which
will be used as instantiation arguments, just like the `-MMODULE=ARGS` shortcut
that `perl` provides. Examples:

    Word::ID::KBBI
    WordList=wordlist,EN::Enable

See also: `perl::arraydata::modname`.

_
    match => '\A[A-Za-z_][A-Za-z_0-9]*(::[A-Za-z_0-9]+)*(?:=.*)?\z',

    'x.perl.coerce_rules' => [
        ['From_str::normalize_perl_modname', {ns_prefix=>'ArrayData'}],
    ],

    # XXX also provide completion for arguments
    'x.completion' => ['perl_modname', {ns_prefix=>'ArrayData'}],


    examples => [
        {value=>'', valid=>0},
        {value=>'Foo/Bar', valid=>1, validated_value=>'Foo::Bar'},
        {value=>'Foo/Bar=a,1,b,2', valid=>1, validated_value=>'Foo::Bar=a,1,b,2'},
        {value=>'Foo bar', valid=>0},
    ],

}, {}];

1;
# ABSTRACT:
