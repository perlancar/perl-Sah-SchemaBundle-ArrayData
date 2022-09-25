package Sah::Schema::perl::arraydata::modnames;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [array => {
    summary => 'Array of Perl ArrayData::* module names without the prefix, e.g. ["Lingua::Word::ID::KBBI", "Number::Prime::First1000"]',
    description => <<'_',

Array of Perl ArrayData::* module names, where each element is of
`perl::arraydata::modname` schema, e.g. `Word::ID::KBBI`,
`Number::Prime::First1000`.

Contains coercion rule that expands wildcard, so you can specify:

    Word::ID::*

and it will be expanded to e.g.:

    ["Word::ID::KBBI", "Word::ID::PERLANCAR"]

The wildcard syntax supports jokers (`?`, `*`, `**`), brackets (`[abc]`), and
braces (`{one,two}`). See <pm:Module::List::Wildcard> for more details.

_
    of => ["perl::arraydata::modname", {req=>1}, {}],

    'x.perl.coerce_rules' => [
        ['From_str_or_array::expand_perl_modname_wildcard', {ns_prefix=>'ArrayData'}],
    ],

    # provide a default completion which is from list of installed perl modules
    'x.element_completion' => ['perl_modname', {ns_prefix=>'ArrayData'}],

}];

1;
# ABSTRACT:
