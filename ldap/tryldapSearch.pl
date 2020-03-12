#!/usr/bin/perl -w

use Net::LDAP;

$ldap = Net::LDAP->new("<HOSTNAME>") or die "$@";
$ldap->bind("cn=Directory Manager",
        password => "password");

$res = $ldap->search( base => "dc=company,dc=com",
                      scope => "sub",
                      filter => "(objectClass=*)",
              );

$href = $res->as_struct;
@dns = keys %$href;

print "dns = @dns\n";

foreach (@dns) {
    print $_, "\n";
}

exit;
