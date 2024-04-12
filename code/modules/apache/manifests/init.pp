class apache {
    package { 'httpd':
    ensure => 'present',
    }

    file { '/var/www':
    ensure => directory,
    require => Package['httpd'],
    }

    file { '/var/www/html/index.html':
    ensure => file,
    require => Package['httpd'],
    source => 'puppet:///modules/apache/index.html',
    }

    service { 'httpd':
    ensure => running,
    }
}
