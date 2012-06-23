server="178.79.141.62"
vhost="alexdymo.com"
repo=`pwd`

ssh -t $server "
    cd /srv/www/$vhost;
    if git status 2> /dev/null; then
        # update repository
        git pull
    else
        # no repository yet, clone it
        git clone adymo.dyndns.org:$repo .
    fi
"
