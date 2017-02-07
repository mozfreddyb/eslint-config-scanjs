# ScanJS Rules through ESLint.

If you want to get something like ScanJS using ESLint. This is the config 
file.

## Install
```sh
npm -g install
* cp -v .eslintrc ~/.scanjs-eslintrc
```

<!--
Note that a globally installed eslint can see only globally installed plugins.

So you either have to install eslint itself and then required packages locally
Or everything globally.
-->


## Running
```sh
cd project-to-scan/
eslint --no-eslintrc -c ~/.scanjs-eslintrc .
```

### Usage within IntelliJ IDEs (WebStorm, PyCharm etc.)
1. Open the Settings dialog and navigate to **Languages & Frameworks → JavaScript → Code Quality Tools → ESLint**.
2. **Enable ESLint** and make sure your settings match your installation:  Use a globally installed eslint package, the installer will place this in `/usr/lib/node_modules/eslint` or `usr/local/lib/node_modules/eslint`.
3. **Supply the config path `~/.scanjs-eslintrc`**
4. Reset the default rules, by providing **extra eslint options**, so we only use the provided config. This disables the default eslint rules, which check for coding style, not security: `--no-eslintrc -c ~/.scanjs-eslintrc .`


