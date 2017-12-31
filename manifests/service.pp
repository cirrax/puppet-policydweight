# manage policyd-weigt service
#
class policydweight::service (
  $ensure       = 'running',
  $enable       = true,
  $service_name = $policydweight::params::service_name,
) inherits policydweight::params {

  service { 'policyd-weight':
    ensure  => $ensure,
    enable  => $enable,
    name    => $service_name,
    require => Package['policyd-weight'],
  }
}
