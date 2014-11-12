# Copyright (c) 2014 Michael Franzl
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


# use Data::Dumper; # enable this to see the entire tweet structure

$addaction = sub {
        my $command = shift;

        if ($command =~ s#^/embed ## && length($command)) {
                my $tweet = &get_tweet($command);
                # print $stdout Dumper($tweet); # enable this to see the entire tweet structure
                
                my $embedcode = "<blockquote class=\"twitter-tweet\" lang=\"en\"><p>$tweet->{'text'}</p>&mdash;$tweet->{'user'}{'screen_name'}<a href=\"//twitter.com/$tweet->{'user'}{'screen_name'}/status/$tweet->{'id_str'}\">$tweet->{'created_at'}</a></blockquote><script async src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>\n";
                
                print $stdout &descape($embedcode); 
                return 1;
        }

        return 0;
};
