# tlib::tiny ![static](https://github.com/uperl/tlib-tiny/workflows/static/badge.svg) ![linux](https://github.com/uperl/tlib-tiny/workflows/linux/badge.svg)

Like blib but for t/lib and lighter

# SYNOPSIS

From your .t file

```perl
use Test::More;
use tlib::tiny;
...
```

From the command line

```
perl -Mtlib::tiny t/foo.t
```

# DESCRIPTION

This pragma is just a short cut for `use lib 't/lib'`.
Avoids using any modules so as to reduce the change of
introducing side effects.

# CAVEATS

This module avoids using any other modules (in-core or otherwise) so as
not to pollute %INC for tests or command lines, so it doesn't
even try to use native directory specifications with [File::Spec](https://metacpan.org/pod/File::Spec) etc,
and may not work on platforms other than Windows and Unix.

# SEE ALSO

- [Test::Lib](https://metacpan.org/pod/Test::Lib)

    Similar in principal, but more full featured, and pulls on several
    modules that wouldn't otherwise be imported.

- [blib](https://metacpan.org/pod/blib)
- [blib::tiny](https://metacpan.org/pod/blib::tiny)

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2022 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
