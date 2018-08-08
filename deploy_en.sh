#!/bin/bash

#rm -r build;
lektor build --output-path ./build;
cp -r build/* /home/iv/doc/mskzc.github.io/;
(cd /home/iv/doc/mskzc.github.io/ && git add .);
(cd /home/iv/doc/mskzc.github.io/ && git commit -m"$1" );
(cd /home/iv/doc/mskzc.github.io/ && git push && echo mskcd);
