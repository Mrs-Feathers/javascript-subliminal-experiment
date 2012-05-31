#!/bin/bash

cp development.html tmp.1.html
sed 's/console.log(.*)\;//g' < tmp.1.html > tmp.2.html
./jsmin < tmp.2.html > tmp.3.html
cp tmp.3.html index.html
rm tmp.?.html
