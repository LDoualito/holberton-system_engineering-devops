# increase open files limitation

exec { 'fix-ngix':
environment => ['DIR=/etc/default/nginx',
                  'OLD=ULIMIT="-n 10"',
                  'NEW=ULIMIT="-n 20000"'],
    command => 'sudo sed -i "s/$OLD/$NEW/" $DIR; sudo service nginx restart',
    path    => ['/usr/bin', '/bin'],
    returns => [0, 1]
}
