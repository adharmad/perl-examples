# create a tree using array references of hashes

use Data::Dumper;

my $tree = [
    {
        val => 2,
        children => [
            {
                val => 7,
                children => [
                    {
                        val =>2,
                        children => []
                    },
                    {
                        val => 6,
                        children => [
                            {
                                val => 5,
                                children => []
                            },
                            {
                                val => 11,
                                children => []
                            }
                        ]
                    }
                ]
            },
            {
                val => 5,
                children => [
                    {
                        val => 9,
                        children => [
                            {
                                val => 4,
                                children => []
                            }
                        ]
                    }
                ]
            }
        ]
    }
];


print Dumper($tree);
