package Sah::Schema::perl::arraydata::modname_with_optional_args;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

use Sah::PSchema::perl::modname_with_optional_args;

our $schema = Sah::PSchema::perl::modname_with_optional_args->get_schema({
    ns_prefix => "ArrayData",
});

$schema->[1]{summary} = 'Perl ArrayData::* module name without the prefix (e.g. Lingua::Word::ID::KBBI) with optional args (e.g. Foo::Bar=arg1,arg2)';

1;
# ABSTRACT:
