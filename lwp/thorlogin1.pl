# Login to Xellerate webapp

# Loads all important LWP classes, and makes
#  sure your version is reasonably recent.
use LWP 5.64; 

my $browser = LWP::UserAgent->new;
my $url = 'http://localhost:8080/xlWebApp';
  
$response = $browser->get($url,
    'User-Agent' => 'Mozilla/4.76 [en] (Win98; U)',
    'Accept' => 'image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, image/png, */*',
    'Accept-Charset' => 'iso-8859-1,*,utf-8',
    'Accept-Language' => 'en-US',
);

die "Can't get $url -- ", $response->status_line
    unless $response->is_success;

print $response->status_line;
print $response->is_success;

if ($response->is_success) {
    #print $response->content;
}

# post the logon credentials
my $url1 = 'http://localhost:8080/xlWebApp/Logon.do';
my $response1 = $browser->post($url1,
	['username' => 'xelsysadm', 'password' => 'xelsysadm']
);

die "$url1 error: ", $response1->status_line
   unless $response1->is_success;

if ($response1->is_success) {
	#print $response1->content;
}

# "get" the the create user page
my $url2 = 'http://localhost:8080/xlWebApp/manageUser.do?method=New%20User';
my $response2 = $browser->get($url2);

die "$url2 error: ", $response2->status_line
   unless $response2->is_success;

if ($response2->is_success) {
    print $response2->content;
}


