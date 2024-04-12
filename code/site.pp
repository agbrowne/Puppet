user { 'jane':
  ensure          => present,
  home            => '/home/jane',
  managehome      => true,
  shell           => '/bin/bash',
}
