#!/bin/bash

set -x

cd src

# setup java-design-patterns
rm -rf java-design-patterns
rm -rf patterns
git clone https://github.com/iluwatar/java-design-patterns.git
cd java-design-patterns
git checkout-index -a -f --prefix=../patterns/
cd ../patterns
rm -rf ar assets etc fr ko tr zh .circleci .github .mvn checkstyle-suppressions.xml CONTRIBUTING.MD LICENSE.md license-plugin-header-style.xml mvnw mvnw.cmd pom.xml PULL_REQUEST_TEMPLATE.md .all-contributorsrc .gitignore README .gitattributes serverless.yml
find . -maxdepth 2 -type d -exec bash -c 'cd "{}" && pwd && rm -rf src pom.xml .gitignore' \;
printf "# Design Patterns\n\n<ChildTableOfContents />" > README.md
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

# run build
npm run build
