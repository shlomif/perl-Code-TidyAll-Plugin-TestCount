package Code::TidyAll::Plugin::TestCount;

use Moo;

extends 'Code::TidyAll::Plugin';

use Test::Count::FileMutator::ByFileType::Lib ();

sub transform_file
{
    my ( $self, $fn ) = @_;

    my $obj = Test::Count::FileMutator::ByFileType::Lib->new(
        {
            filename => $fn,
        }
    );

    $obj->run;

    return;
}

1;

=encoding utf8

=head1 NAME

Code::TidyAll::Plugin::TestCount - ascertain that the test plan agrees with the Test::Count annotations

=head1 SYNOPSIS

In your C<.tidyallrc>:

    [TestCount]
    select = t/**/*.t

=head1 DESCRIPTION

See L<Test::Count> .

=cut
