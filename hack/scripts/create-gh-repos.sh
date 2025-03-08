#!/bin/bash

projects=( \
	virtual-secrets \
)

gsa=$(cat /Users/tamal/AppsCode/credentials/appscode-govanityurls.json)
# gh secret set FIREBASE_SERVICE_ACCOUNT_APPSCODE_GOVANIURLS -b"${gsa}" -R appscodelabs/govanityurls

for p in "${projects[@]}"; do
	# gh repo create -y --public --template=appscodelabs/govanityurls $p/govanityurls
	gh secret set FIREBASE_SERVICE_ACCOUNT_APPSCODE_GOVANIURLS -b"${gsa}" -R $p/govanityurls
done
