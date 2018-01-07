# This class installs and cofigures policyd-weight
# daemon.
#
# Parameters:
# $package
#   package to install, defaults to
#   $policydweight::params::package
# $package_ensure
#   defaults to 'installed'
# $create_resources
#   a Hash of Hashes to create additional resources eg. to 
#   create a postfix whitelist.
#   Defaults to {} (do not create any additional resources)
#   Example (hiera):
# 
#   policyweight::create_resources:
#       postfix::map:
#           mymap:
#             source: '/tmp/test'
#
#    Will result in  executing:
#
#    postfix::map{'mymap':
#      source => '/tmp/test',
#    }
#
class policydweight (
  $package          = $policydweight::params::package,
  $package_ensure   = 'installed',
  $create_resources = {},
) inherits policydweight::params {


  package { 'policyd-weight':
    ensure => $package_ensure,
    name   => $package,
  }

  include ::policydweight::service
  include ::policydweight::config

  $create_resources.each | $res, $vals | {
    create_resources($res, $vals)
  }
}
