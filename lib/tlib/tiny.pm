package tlib::tiny;

use 5.008004;

# ABSTRACT: Like blib but for t/lib and lighter
# VERSION

=head1 SYNOPSIS

From your .t file

 use Test::More;
 use tlib::tiny;
 ...

From the command line

 perl -Mtlib::tiny t/foo.t

=head1 DESCRIPTION

This pragma is just a short cut for C<use lib 't/lib'>.
Avoids using any modules so as to reduce the change of
introducing side effects.

=head1 CAVEATS

This module avoids using any other modules (in-core or otherwise) so as
not to pollute %INC for tests or command lines, so it doesn't
even try to use native directory specifications with L<File::Spec> etc,
and may not work on platforms other than Windows and Unix.

=head1 SEE ALSO

=over 4

=item L<Test::Lib>

Similar in principal, but more full featured, and pulls on several
modules that wouldn't otherwise be imported.

=item L<blib>

=item L<blib::tiny>

=back

=cut

sub import
{
  my $class = shift;
  unshift @INC, 't/lib';
}

1;
