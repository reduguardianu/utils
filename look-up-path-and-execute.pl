#!/usr/bin/perl
use Cwd;
sub get_path
{
    do
    {
        my $path = getcwd();

        if (-e $ARGV[0])
        {
            return $path;
        }
        chdir("../");
    } while($path ne "/");

    die "no file in uptree";
}

my $path = get_path();

chdir($path);

system($ARGV[1]);
