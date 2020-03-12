# driver for Person class

use Person;

$person = Person->new;
$person->firstName('John');
$person->lastName('Doe');

$address = Address->new;
$address->street('100 Fillmore Street, Apt # 1');
$address->city('San Francisco');
$address->state('CA');
$address->zip('94118');

$person->address($address);

$person->print;
