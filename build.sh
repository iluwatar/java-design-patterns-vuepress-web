#!/bin/bash

set -x

cd docs

# Setup java-design-patterns - English
rm -rf java-design-patterns
rm -rf patterns
rm -rf zh/patterns
git clone https://github.com/iluwatar/java-design-patterns.git -b vuepress
cd java-design-patterns
git checkout-index -a -f --prefix=../patterns/
cd ../patterns
rm -rf etc .circleci .github .mvn checkstyle-suppressions.xml CONTRIBUTING.MD LICENSE.md license-plugin-header-style.xml mvnw mvnw.cmd pom.xml PULL_REQUEST_TEMPLATE.md .all-contributorsrc .gitignore gpl-3.0.txt layers.log lgpl-3.0.txt lombok.config service-layer.log 
find . -maxdepth 2 -type d -exec bash -c 'cd "{}" && pwd && rm -rf src pom.xml *.ucls *.puml .gitignore' \;
mv -vf index.md README.md
# Setup java-design-patterns - Chinese
cd localization/zh
mkdir ../../../zh/patterns
cp -vrf * ../../../zh/patterns
cd ../../../zh/patterns
mv -vf index.md README.md
cd ../..
rm -rf java-design-patterns
rm -rf patterns/localization

# setup programming-principles - English
rm -rf programming-principles
rm -rf principles
rm -rf zh/principles
git clone https://github.com/iluwatar/programming-principles.git
cd programming-principles
git checkout-index  -f --prefix=../principles/ README.md
# setup programming-principles - Chinese
mkdir ../zh/principles
cp -vf README.md ../zh/principles/
cd ..
rm -rf programming-principles

# setup 30-seconds-of-java - English
rm -rf 30-seconds-of-java
rm -rf snippets
rm -rf zh/snippets
git clone https://github.com/iluwatar/30-seconds-of-java.git
cd 30-seconds-of-java
git checkout-index -f --prefix=../snippets/ README.md
# setup 30-seconds-of-java - Chinese
mkdir ../zh/snippets
cp -vf README.md ../zh/snippets/
cd ..
rm -rf 30-seconds-of-java

cd ..

# install dependencies
npm install

# run build
npm run build
