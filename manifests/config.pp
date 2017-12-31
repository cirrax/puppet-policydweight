# This class installs and cofigures policyd-weight
# daemon.
#
# General info:
# to see all available configuration options, you can
# run
#    policyd-weight defaults
# on the destination host.
#
# only values that differ from the default value need
# to be configured.
#
# Parameters:
#    the parameters are ordered according the default values.
# $general_settings = {},
#   Example in hiera: 
#    policydweight::general_settings:
#       DEBUG:  1    # set debuging on
#
# $dnsbl_score      = [],
#   Scores for dnsbl (remember to list either all dnsbl to use or
#   none for the defaults sugessted by policyd-weight.)
#
#   Example in hiera:
#    policydweight::config::dnsbl_score:
#       - host: 'pbl.spamhaus.org'
#         hit_score: 3.25
#         miss_score: 0
#         logname: 'DYN_PBL_SPAMHAUS'
# $dnsbl_settings   = {},
#   see $general_settings for an example
# $rhsbl_score      = [],
#   see $dnsbl_score for an example.
# $rhsbl_settings   = {}.
#   see $general_settings for an example
# $cache_settings   = {},
#   see $general_settings for an example
# $dns_settings     = {},
#   see $general_settings for an example
# $scores           = {},
#   scores for checks, WARNING: they may manipulate eachother
#   or be factors for other scores.
#   Example in hiera:
#     policydweight::config::scores:
#       client_ip_eq_helo_score:
#          hit_score: 1.5
#          miss_score: -1.25
# $syslog_settings  = {},
#   see $general_settings for an example
# $process_settings = {},
#   see $general_settings for an example
#
class policydweight::config (
  $general_settings = {},
  $dnsbl_score      = [],
  $dnsbl_settings   = {},
  $rhsbl_score      = [],
  $rhsbl_settings   = {},
  $cache_settings   = {},
  $dns_settings     = {},
  $scores           = {},
  $syslog_settings  = {},
  $process_settings = {},
) inherits policydweight::params {


  file { '/etc/policyd-weight.conf':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('policydweight/policyd-weight.conf.erb'),
    notify  => Service['policyd-weight'],
  }
}
