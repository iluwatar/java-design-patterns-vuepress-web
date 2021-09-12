#!/bin/bash

set -x

cd docs

# setup java-design-patterns
rm -rf java-design-patterns
rm -rf patterns
git clone https://github.com/iluwatar/java-design-patterns.git -b vuepress
cd java-design-patterns
git checkout-index -a -f --prefix=../patterns/
cd ../patterns
rm -rf etc .circleci .github .mvn checkstyle-suppressions.xml CONTRIBUTING.MD LICENSE.md license-plugin-header-style.xml mvnw mvnw.cmd pom.xml PULL_REQUEST_TEMPLATE.md .all-contributorsrc .gitignore gpl-3.0.txt layers.log lgpl-3.0.txt lombok.config service-layer.log 
find . -maxdepth 2 -type d -exec bash -c 'cd "{}" && pwd && rm -rf src pom.xml *.ucls *.puml .gitignore' \;
mv -vf index.md README.md
cd ..
rm -rf java-design-patterns

# setup programming-principles
rm -rf programming-principles
rm -rf principles
git clone https://github.com/iluwatar/programming-principles.git
cd programming-principles
git checkout-index  -f --prefix=../principles/ README.md
cd ..
rm -rf programming-principles

# setup 30-seconds-of-java
rm -rf 30-seconds-of-java
rm -rf snippets
git clone https://github.com/iluwatar/30-seconds-of-java.git
cd 30-seconds-of-java
git checkout-index -f --prefix=../snippets/ README.md
cd ..
rm -rf 30-seconds-of-java

cd ..

# install dependencies
npm install

# run build
npm run build
