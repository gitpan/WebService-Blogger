#!/usr/bin/perl

use strict;
use warnings;

use utf8;
use Encode;
use WebService::Blogger;


my $blogger = WebService::Blogger->new(
    login_id => 'kogdaugodno@gmail.com',
    password => 'asdvt78$Th8t5OK',
);
 
my @blogs = $blogger->blogs;
my $blog = $blogs[0];
my @entries = $blog->entries;

foreach my $entry (@entries) {
    if ($entry->title eq encode_utf8('Новый заголовок')) {
        $entry->title('test');
        $entry->save;
    }
}
