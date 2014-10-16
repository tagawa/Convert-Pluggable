use Test::More tests => 62;
use Math::Round qw/nearest/;

BEGIN { use_ok('Convert::Pluggable') };

my $c = new Convert::Pluggable();
isa_ok($c, 'Convert::Pluggable');

my $result;

# fix precision and rounding:
my $precision = 3;

$result = $c->convert( { 'factor' => '1', 'from_unit' => 'year', 'to_unit' => 'months', 'precision' => $precision, } );
is($result->{'result'}, '12', 'OK');

$result = $c->convert( { 'factor' => '1', 'from_unit' => 'year', 'to_unit' => 'wk', 'precision' => $precision, } );
is($result->{'result'}, '52.1428571428571', 'OK');

$result = $c->convert( { 'factor' => '16', 'from_unit' => 'years', 'to_unit' => 'months', 'precision' => $precision, } );
is($result->{'result'}, '192', 'OK');

$result = $c->convert( { 'factor' => '1', 'from_unit' => 'day', 'to_unit' => 'yr', 'precision' => $precision, } );
is($result->{'result'}, '0.00273972602739726', 'OK');

$result = $c->convert( { 'factor' => '5', 'from_unit' => 'oz', 'to_unit' => 'g', 'precision' => $precision, } );
is($result->{'result'}, '141.747462720417', 'OK');

$result = $c->convert( { 'factor' => '1', 'from_unit' => 'ton', 'to_unit' => 'long ton', 'precision' => $precision, } );
is($result->{'result'}, '0.892858633233845', 'OK');

$result = $c->convert( { 'factor' => '158', 'from_unit' => 'ounce', 'to_unit' => 'lbm', 'precision' => $precision, } );
is($result->{'result'}, '9.87497760390089', 'OK');

$result = $c->convert( { 'factor' => '0.111', 'from_unit' => 'stone', 'to_unit' => 'pound', 'precision' => $precision, } );
is($result->{'result'}, '1.55399859023452', 'OK');

$result = $c->convert( { 'factor' => '3', 'from_unit' => 'kilogramme', 'to_unit' => 'pound', 'precision' => $precision, } );
is($result->{'result'}, '6.61386', 'OK');

$result = $c->convert( { 'factor' => '1.3', 'from_unit' => 'tonnes', 'to_unit' => 'ton', 'precision' => $precision, } );
is($result->{'result'}, '1.433003', 'OK');

$result = $c->convert( { 'factor' => '2', 'from_unit' => 'tons', 'to_unit' => 'kg', 'precision' => $precision, } );
is($result->{'result'}, '1814.37163774256', 'OK');

$result = $c->convert( { 'factor' => '1', 'from_unit' => 'ton', 'to_unit' => 'kilos', 'precision' => $precision, } );
is($result->{'result'}, '907.185818871279', 'OK');

$result = $c->convert( { 'factor' => '3.9', 'from_unit' => 'oz', 'to_unit' => 'grams', 'precision' => $precision, } );
is($result->{'result'}, '110.563020921925', 'OK');

$result = $c->convert( { 'factor' => '2', 'from_unit' => 'miles', 'to_unit' => 'km', 'precision' => $precision, } );
is($result->{'result'}, '3.21868899578513', 'OK');

$result = $c->convert( { 'factor' => '5', 'from_unit' => 'feet', 'to_unit' => 'in', 'precision' => $precision, } );
is($result->{'result'}, '60.000030479999', 'OK');

$result = $c->convert( { 'factor' => '0.5', 'from_unit' => 'nautical mile', 'to_unit' => 'klick', 'precision' => $precision, } );
is($result->{'result'}, '0.925999662936123', 'OK');

$result = $c->convert( { 'factor' => '500', 'from_unit' => 'miles', 'to_unit' => 'metres', 'precision' => $precision, } );
is($result->{'result'}, '804672.248946282', 'OK');

$result = $c->convert( { 'factor' => '25', 'from_unit' => 'cm', 'to_unit' => 'inches', 'precision' => $precision, } );
is($result->{'result'}, '9.842525', 'OK');

$result = $c->convert( { 'factor' => '1760', 'from_unit' => 'yards', 'to_unit' => 'miles', 'precision' => $precision, } );
is($result->{'result'}, '1.00000270663216', 'OK');

$result = $c->convert( { 'factor' => '3520', 'from_unit' => 'yards', 'to_unit' => 'miles', 'precision' => $precision, } );
is($result->{'result'}, '2.00000541326433', 'OK');

$result = $c->convert( { 'factor' => '1', 'from_unit' => 'stone', 'to_unit' => 'lbs', 'precision' => $precision, } );
is($result->{'result'}, '13.9999872994101', 'OK');

$result = $c->convert( { 'factor' => '30', 'from_unit' => 'cm', 'to_unit' => 'in', 'precision' => $precision, } );
is($result->{'result'}, '11.81103', 'OK');

$result = $c->convert( { 'factor' => '36', 'from_unit' => 'months', 'to_unit' => 'years', 'precision' => $precision, } );
is($result->{'result'}, '3', 'OK');

$result = $c->convert( { 'factor' => '43200', 'from_unit' => 'seconds', 'to_unit' => 'hours', 'precision' => $precision, } );
is($result->{'result'}, '12', 'OK');

$result = $c->convert( { 'factor' => '4', 'from_unit' => 'hours', 'to_unit' => 'minutes', 'precision' => $precision, } );
is($result->{'result'}, '240', 'OK');

$result = $c->convert( { 'factor' => '5', 'from_unit' => 'kelvin', 'to_unit' => 'fahrenheit', 'precision' => $precision, } );
is($result->{'result'}, '-450.67', 'OK');

$result = $c->convert( { 'factor' => '1', 'from_unit' => 'bar', 'to_unit' => 'pascal', 'precision' => $precision, } );
is($result->{'result'}, '100000', 'OK');

$result = $c->convert( { 'factor' => '1', 'from_unit' => 'kilopascal', 'to_unit' => 'psi', 'precision' => $precision, } );
is($result->{'result'}, '0.145036839357197', 'OK');

$result = $c->convert( { 'factor' => '1', 'from_unit' => 'atm', 'to_unit' => 'kpa', 'precision' => $precision, } );
is($result->{'result'}, '101.325', 'OK');

$result = $c->convert( { 'factor' => '5', 'from_unit' => 'yrds', 'to_unit' => 'km', 'precision' => $precision, } );
is($result->{'result'}, '0.00457201378919359', 'OK');

$result = $c->convert( { 'factor' => '12', 'from_unit' => '"', 'to_unit' => 'cm', 'precision' => $precision, } );
is($result->{'result'}, '30.4799835408089', 'OK');

$result = $c->convert( { 'factor' => '25', 'from_unit' => 'inches', 'to_unit' => 'feet', 'precision' => $precision, } );
is($result->{'result'}, '2.08333227500057', 'OK');

$result = $c->convert( { 'factor' => '42', 'from_unit' => 'kilowatt hours', 'to_unit' => 'joules', 'precision' => $precision, } );
is($result->{'result'}, '151200000', 'OK');

$result = $c->convert( { 'factor' => '2500', 'from_unit' => 'kcal', 'to_unit' => 'tons of tnt', 'precision' => $precision, } );
is($result->{'result'}, '0.0025', 'OK');

$result = $c->convert( { 'factor' => '90', 'from_unit' => 'ps', 'to_unit' => 'watts', 'precision' => $precision, } );
is($result->{'result'}, '66194.8875', 'OK');

$result = $c->convert( { 'factor' => '1', 'from_unit' => 'gigawatt', 'to_unit' => 'horsepower', 'precision' => $precision, } );
is($result->{'result'}, '1341022.08959503', 'OK');

$result = $c->convert( { 'factor' => '180', 'from_unit' => 'degrees', 'to_unit' => 'radians', 'precision' => $precision, } );
is($result->{'result'}, '3.14159265358979', 'OK');

$result = $c->convert( { 'factor' => '270', 'from_unit' => 'degrees', 'to_unit' => 'quadrants', 'precision' => $precision, } );
is($result->{'result'}, '3', 'OK');

$result = $c->convert( { 'factor' => '180', 'from_unit' => 'degrees', 'to_unit' => 'grads', 'precision' => $precision, } );
is($result->{'result'}, '200', 'OK');

$result = $c->convert( { 'factor' => '45', 'from_unit' => 'newtons', 'to_unit' => 'pounds force', 'precision' => $precision, } );
is($result->{'result'}, '10.116402439487', 'OK');

$result = $c->convert( { 'factor' => '8', 'from_unit' => 'poundal', 'to_unit' => 'newtons', 'precision' => $precision, } );
is($result->{'result'}, '1.106039635008', 'OK');

$result = $c->convert( { 'factor' => '5', 'from_unit' => 'f', 'to_unit' => 'celsius', 'precision' => $precision, } );
is($result->{'result'}, '-15', 'OK');

$result = $c->convert( { 'factor' => '6^2', 'from_unit' => 'oz', 'to_unit' => 'grams', 'precision' => $precision, } );
is($result->{'result'}, undef, 'OK');

$result = $c->convert( { 'factor' => 'NaN', 'from_unit' => 'oz', 'to_unit' => 'stones', 'precision' => $precision, } );
is($result->{'result'}, undef, 'OK');

$result = $c->convert( { 'factor' => '45x10', 'from_unit' => 'oz', 'to_unit' => 'stones', 'precision' => $precision, } );
is($result->{'result'}, undef, 'OK');

$result = $c->convert( { 'factor' => '-9', 'from_unit' => 'g', 'to_unit' => 'ozs', 'precision' => $precision, } );
is($result->{'result'}, undef, 'OK');

$result = $c->convert( { 'factor' => '5', 'from_unit' => 'oz', 'to_unit' => 'yards', 'precision' => $precision, } );
is($result->{'result'}, undef, 'OK');

$result = $c->convert( { 'factor' => 'Inf', 'from_unit' => 'oz', 'to_unit' => 'stones', 'precision' => $precision, } );
is($result->{'result'}, undef, 'OK');

$result = $c->convert( { 'factor' => '-5', 'from_unit' => 'kelvin', 'to_unit' => 'fahrenheit', 'precision' => $precision, } );
is($result->{'result'}, undef, 'OK');

$result = $c->convert( { 'factor' => 'use', 'from_unit' => 'ton', 'to_unit' => 'stones', 'precision' => $precision, } );
is($result->{'result'}, undef, 'OK');

$result = $c->convert( { 'factor' => 'shoot', 'from_unit' => 'oneself', 'to_unit' => 'foot', 'precision' => $precision, } );
is($result->{'result'}, undef, 'OK');

$result = $c->convert( { 'factor' => 'foot', 'from_unit' => 'both', 'to_unit' => 'camps', 'precision' => $precision, } );
is($result->{'result'}, undef, 'OK');

$result = $c->convert( { 'factor' => 'puff', 'from_unit' => 'toke', 'to_unit' => 'kludge', 'precision' => $precision, } );
is($result->{'result'}, undef, 'OK');
    
$result = $c->convert( { 'factor' => '10', 'from_unit' => 'milligrams', 'to_unit' => 'tons', 'precision' => $precision, } );
is($result->{'result'}, '0.000', '10 milligrams is 1.1e-08 tons');

$result = $c->convert( { 'factor' => '10000', 'from_unit' => 'minutes', 'to_unit' => 'microseconds', 'precision' => $precision, } );
is($result->{'result'}, '600000000000.000', '10000 minutes is 6e+11 microseconds');

$result = $c->convert( { 'factor' => '5', 'from_unit' => 'bytes', 'to_unit' => 'bit', 'precision' => $precision, } );
is($result->{'result'}, '40.000', '5 bytes is 40.000 bits');

$result = $c->convert( { 'factor' => '5', 'from_unit' => 'GB', 'to_unit' => 'megabyte', 'precision' => $precision, } );
is($result->{'result'}, '5000.000', '5 gigabytes is 5000.000 megabytes');

$result = $c->convert( { 'factor' => '0.013', 'from_unit' => 'mb', 'to_unit' => 'bits', 'precision' => $precision, } );
is($result->{'result'}, '104000.000', '0.013 megabytes is 104000.000 bits');

$result = $c->convert( { 'factor' => '1', 'from_unit' => 'exabyte', 'to_unit' => 'pib', 'precision' => $precision, } );
is($result->{'result'}, '888.178', '1 exabyte is 888.178 pebibytes');

$result = $c->convert( { 'factor' => '1', 'from_unit' => 'yb', 'to_unit' => 'yib', 'precision' => $precision, } );
is($result->{'result'}, '0.827', '1 yottabyte is 0.827 yobibytes');
