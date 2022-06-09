# increase open files limitation

exec { 'fix-ngix':
    command => 'sudo sed -i "s/$OLD/$NEW/" $DIR; sudo service nginx restart',
    path    => ['/usr/bin', '/bin'],
}