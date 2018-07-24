@echo off

REM Windows script for running e2e tests REM You have to run server first REM REM Requirements:
REM - NodeJS (http://nodejs.org/)
REM - Protractor (npm install -g protractor)

call set HTTPS_PROXY=http://webproxy.wlb.nsroot.net:8080
call set HTTP_PROXY=http://webproxy.wlb.nsroot.net:8080
REM call webdriver-manager --proxy http://euwebgate.eu.ssmb.com update 
REM call npm run webdriver-manager -- update --ie32 --versions.standalone=2.53.1 --gecko=false --proxy="http://webproxy.wlb.nsroot.net:8080" --ignore_ssl
REM REM Config file must be passed in
REM webdriver-manager update --ie32 --versions.standalone=2.53.1 --gecko=false --proxy="http://webproxy.wlb.nsroot.net:8080" --ignore_ssl
REM webdriver-manager update -g --proxy="http://webproxy.wlb.nsroot.net:8080" --ignore_ssl
REM webdriver-manager update -g --proxy="http://euAppWebProxy.wlb.eur.nsroot.net:7777" --ignore_ssl
REM webdriver-manager update --ie32 --proxy="http://euAppWebProxy.wlb.eur.nsroot.net:7777" --ignore_ssl
REM webdriver-manager update --versions.standalone=2.53.1 --gecko=false --proxy="http://euAppWebProxy.wlb.eur.nsroot.net:7777" --ignore_ssl
REM webdriver-manager update-config --proxy="http://euAppWebProxy.wlb.eur.nsroot.net:7777" --ignore_ssl
webdriver-manager update -g --ie32 --versions.chrome=2.40 --versions.standalone=3.4.0 --gecko=false --proxy="http://euAppWebProxy.wlb.eur.nsroot.net:7777" --ignore_ssl
