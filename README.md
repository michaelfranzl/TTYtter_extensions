# TTYtter_extensions

This is a repository holding some extensions to the excellent [TTYtter](http://www.floodgap.com/software/ttytter) Twitter client.

You can include the following extensions following the instructions on the TTYtter documentation page, then restart TTYtter.


## ttytter_embedcode

File Name in this repository: `embedcode.pl`

This extension can output the HTML embed code of a particular tweet, otherwise available only through a button click on Twitter.com, to be used on websites.


### Usage

Given the following twit:

    h9> <RT_com> PHOTO of @Philae2014 on way to #67P, #COMETLANDING expected in 30 mins https://pbs.twimg.com/media/B2P8HgTCQAAuIbB.jpg http://on.rt.com/tpz9ir
    
Type:

    /embed h9
    
Output:

    <blockquote class="twitter-tweet" lang="en"><p>PHOTO of @Philae2014 on way to #67P, #COMETLANDING expected in 30 mins https://pbs.twimg.com/media/B2P8HgTCQAAuIbB.jpg http://on.rt.com/tpz9ir</p>&mdash;RT_com<a href="//twitter.com/RT_com/status/532550384284602368">Wed Nov 12 15:08:00 +0000 2014</a></blockquote><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
    

## ttytter_mysql

This extension was originally hosted at https://code.google.com/p/pwntter. It would not call the default handlers of TTYtter, and so the interactive mode of TTYtter would not print any output. I wanted to use TTYtter in a normal way AND dump all tweets into the database. In addition, I added UTF8 support for the database. This is the reason why I modified the program and re-publish it here.

### Usage

Create a new MySQL database with the following command (note the UTF8 settings):

    CREATE DATABASE ttytter DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
    
Next create the tables:

    mysql -u username -ppassword ttytter < ttytter_mysql_create_tables.sql

Edit `ttytter_mysql.pl` with hostname, database, userid and password for your MySQL database:

    # mysql database config.
    my $host     = "localhost";
    my $db       = "ttytter";
    my $user_id  = "mysqluserid";
    my $password = "mysqlpassword";`

If they are not already installed, install Perl modules DB, Date::Manip and HTML::Entities.

Add ttytter_mysql to your `.ttytterrc` and restart.
