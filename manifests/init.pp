# == Class: subversion
#
# Installs Subversion.
#
# === Examples
#
# include subversion
#
# === Authors
#
# Sergey Stankevich
#
class subversion {

  # Compatibility check
  $compatible = [ 'Debian', 'Ubuntu' ]
  if ! ($::operatingsystem in $compatible) {
    fail("Module is not compatible with ${::operatingsystem}")
  }

  include subversion::install

}
