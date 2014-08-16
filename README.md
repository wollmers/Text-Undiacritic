# NAME

Text::Undiacritic - remove diacritics from a string

<div>

    <a href="https://travis-ci.org/wollmers/Text-Undiacritic"><img src="https://travis-ci.org/wollmers/Text-Undiacritic.png" alt="Text-Undiacritic"></a>
    <a href='https://coveralls.io/r/wollmers/Text-Undiacritic?branch=master'><img src='https://coveralls.io/repos/wollmers/Text-Undiacritic/badge.png?branch=master' alt='Coverage Status' /></a>
</div>

# VERSION

This document describes Text::Undiacritic 0.01

# SYNOPSIS

    use Text::Undiacritic qw(undiacritic);
    $ascii_string = undiacritic( $czech_string );

# DESCRIPTION

Changes characters with diacritics into their base characters.

Also changes into base character in cases where UNICODE does not provide a decomposition.

E.g. all characters '... WITH STROKE' like 'LATIN SMALL LETTER L WITH STROKE' do not have a decomposition. In the latter case the result will be 'LATIN SMALL LETTER L'.

Removing diacritics is useful for matching text independent of spelling variants.

# SUBROUTINES/METHODS

## undiacritic

    $ascii_string = undiacritic( $characters );

Removes diacritics from $characters and returns a simplified character string.

The input string must be in character modus, i.e. UNICODE code points.

# DIAGNOSTICS

# CONFIGURATION AND ENVIRONMENT

# DEPENDENCIES

- [version](https://metacpan.org/pod/version)
- [charnames](https://metacpan.org/pod/charnames)
- [Unicode::Normalize](https://metacpan.org/pod/Unicode::Normalize)

# INCOMPATIBILITIES

# BUGS AND LIMITATIONS

There is no experience if this module gives useful results for scripts other than Latin.

# AUTHOR

Helmut Wollmersdorfer `<WOLLMERS@cpan.org>`

# LICENSE AND COPYRIGHT

Copyright (c) 2007, Helmut Wollmersdorfer `<WOLLMERS@cpan.org>`.
All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.
