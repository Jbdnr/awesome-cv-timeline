# latexmk configuration file
# This ensures fonts are found when building from subdirectories

# Get the directory where the Makefile (and this config) is located
use Cwd qw(abs_path);
my $makefile_dir = abs_path(dirname($0));

# Add font directory to OSFONTDIR so lualatex can find fonts
$ENV{OSFONTDIR} = "$makefile_dir/fonts:" . ($ENV{OSFONTDIR} // "");
