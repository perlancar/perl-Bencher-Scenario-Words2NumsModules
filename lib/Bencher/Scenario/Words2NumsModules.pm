package Bencher::Scenario::Words2NumsModules;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark various words-to-numbers modules '.
        'of different languages against one another',
    participants => [
        {
            fcall_template => 'Lingua::ID::Words2Nums::words2nums(<word>)',
            tags => ["id"],
        },
        {
            fcall_template => 'Lingua::EN::Words2Nums::words2nums(<word>)',
            tags => ["en"],
        },
    ],
    datasets => [
        {name=>"en_1"        , args=>{word=>"one"}, include_participant_tags => ["en"]},
        {name=>"en_123"      , args=>{word=>"one hundred and twenty three"}, include_participant_tags => ["en"]},
        {name=>"en_123456789", args=>{word=>"one hundred and twenty three million, four hundred and fifty six thousand, seven hundred and eighty nine"}, include_participant_tags => ["en"]},

        {name=>"id_1"        , args=>{word=>"satu"}, include_participant_tags => ["id"]},
        {name=>"id_123"      , args=>{word=>"seratus dua puluh tiga"}, include_participant_tags => ["id"]},
        {name=>"id_123456789", args=>{word=>"seratus dua puluh tiga juta empat ratus lima puluh enam ribu tujuh ratus delapan puluh sembilan"}, include_participant_tags => ["id"]},
    ],
};

1;
# ABSTRACT:
