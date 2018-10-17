composer-rest-server -c admin@tutorial-network -n "never"

Usage: composer-rest-server [options]

Options:
  -c, --card            The name of the business network card to use  [string]
  -n, --namespaces      Use namespaces if conflicting types exist  [string] [choices: "always", "required", "never"] [default: "always"]
  -p, --port            The port to serve the REST API on  [number]
  -y, --apikey          The API key to get access to the REST API  [string]
  -a, --authentication  Enable authentication for the REST API using Passport  [boolean] [default: false]
  -m, --multiuser       Enable multiple user and identity management using wallets (implies -a)  [boolean] [default: false]
  -w, --websockets      Enable event publication over WebSockets  [boolean] [default: true]
  -t, --tls             Enable TLS security for the REST API  [boolean] [default: false]
  -e, --tlscert         File containing the TLS certificate  [string] [default: "/Users/heraclea/.nvm/versions/node/v8.12.0/lib/node_modules/composer-rest-server/cert.pem"]
  -k, --tlskey          File containing the TLS private key  [string] [default: "/Users/heraclea/.nvm/versions/node/v8.12.0/lib/node_modules/composer-rest-server/key.pem"]
  -u, --explorer        Enable the test explorer web interface  [boolean] [default: true]
  -d, --loggingkey      Specify the key to enable dynamic logging for the rest server (just pressing enter will not enable this feature)  [string]
  -h, --help            Show help  [boolean]
  -v, --version         Show version number  [boolean]
