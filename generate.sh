#!/bin/bash

set -x

ROOT_DIR=$(pwd)
DOCS_DIR=$ROOT_DIR/src
cd $DOCS_DIR

# Setup java-design-patterns - English
rm -rf java-design-patterns
rm -rf patterns
rm -rf zh/patterns
git clone https://github.com/iluwatar/java-design-patterns.git
cd java-design-patterns
git checkout-index -a -f --prefix=../patterns/
cd ../patterns
rm -rf etc .circleci .editorconfig .github .mvn checkstyle-suppressions.xml CONTRIBUTING.MD LICENSE.md license-plugin-header-style.xml mvnw mvnw.cmd pom.xml PULL_REQUEST_TEMPLATE.md .all-contributorsrc .gitignore gpl-3.0.txt layers.log lgpl-3.0.txt lombok.config service-layer.log
find . -maxdepth 2 -type d -exec bash -c 'cd "{}" && pwd && rm -rf src pom.xml *.ucls *.puml .gitignore' \;

rm -vf README.md
$ROOT_DIR/index.sh "en" "Design Pattern Catalog" "Catalog of Java Design Patterns for Developers" "Discover the full list of Java design patterns. This comprehensive guide provides you with all the information you need to master pattern implementation in your Java applications."

# Setup java-design-patterns - localizations
languages=( zh ko es )
catalogs=( "设计模式目录" "디자인 패턴 카탈로그" "Catalogo de patrones de diseño" )

iter=0
for lan in "${languages[@]}"
do
  cd localization/$lan
  mkdir -p ../../../$lan/patterns
  cp -vrf * ../../../$lan/patterns
  cd ../../../$lan/patterns
  rm -vf README.md
  $ROOT_DIR/index.sh "$lan" "${catalogs[$iter]}"
  cd ../../patterns
  iter=$((iter+1))
done

cd $DOCS_DIR
rm -rf java-design-patterns
rm -rf patterns/localization

# setup programming-principles - English
rm -rf programming-principles
rm -rf principles
rm -rf zh/principles
git clone https://github.com/iluwatar/programming-principles.git
cd programming-principles
git checkout-index  -f --prefix=../principles/ README.md

# setup programming-principles - localizations
languages=( zh ko es )
for lan in "${languages[@]}"
do
  mkdir ../$lan/principles
  cp -vf README.md ../$lan/principles/
done
cd ..
rm -rf programming-principles

# setup 30-seconds-of-java - English
rm -rf 30-seconds-of-java
rm -rf snippets
rm -rf zh/snippets
git clone https://github.com/iluwatar/30-seconds-of-java.git
cd 30-seconds-of-java
git checkout-index -f --prefix=../snippets/ README.md

# setup 30-seconds-of-java - localizations
languages=( zh ko es )
for lan in "${languages[@]}"
do
  mkdir ../$lan/snippets
  cp -vf localization/$lan/README.md ../$lan/snippets/
done
cd ..
rm -rf 30-seconds-of-java
