# This class installs and cofigures policyd-weight
# daemon.
#
class policydweight (
  $package          = $policydweight::params::package,
  $package_ensure   = 'installed',
) inherits policydweight::params {


  package { 'policyd-weight':
    ensure => $package_ensure,
    name   => $package,
  }

  include ::policydweight::service
  include ::policydweight::config
}
