# fix error 500
exec { 'fix-php-500':
  command     => 'sudo sed -i "s/$OLD/$NEW/" $DIR',
  path        => ['/usr/bin', '/bin'],
  returns     => [0, 1]