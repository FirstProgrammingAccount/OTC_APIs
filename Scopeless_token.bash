#variables required: username, password, domain_name, iam_endpoint

curl -i -k -H 'Content-Type:application/json;charset=utf8' -H 'Accept:application/json' -d '{"auth":{"identity":{"methods":["password"],"password":{"user":{"name":"'$username'","password":"'$password'","domain":{"name":"'$domain_name'"}}}}}}' -X POST https://$iam_endpoint/v3/auth/tokens
