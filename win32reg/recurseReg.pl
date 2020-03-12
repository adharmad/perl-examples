use Win32::Registry;

print("HKEY_LOCAL_MACHINE ROOT\n");
local($hkey);
$HKEY_LOCAL_MACHINE->Open($object, $hkey) || die"Can't open Root $!";
&SearchKey($hkey, '');

sub SearchKey {
        local($Instance, $object) = @_;
        local($hkey);
        local (@savedkeys,$Key);
        $Instance->Open($object, $hkey) || die "cant open $object $!";
        $keys = [];
        $hkey->GetKeys($keys)||die "Can't get keys for $object $!";
        @savedkeys=@$keys;
        foreach (@savedkeys) {
                $Key = $_;
                last if (!defined $Key );
                # print(">@$keys<\n");
                if (defined $Key ) {
                        $Subkey .= "$_\\";
                        print("Parameter   Key>$Key<  \n");
                        &SearchKey($hkey,$Key);
                        print("After call  Key>$Key<  \n"); 
                        # only needed if you want to see what's coming
                        #sleep(3); 
                }
                $hkey->Close;
        }
}
