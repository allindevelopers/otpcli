
#!/bin/bash

echo '{ "main": "otpcli.js", "output": "sea-prep.blob" }' > sea-config.json

node --experimental-sea-config sea-config.json

cp $(command -v node) otpcli

chmod 755 otpcli

codesign --remove-signature otpcli

npx postject otpcli NODE_SEA_BLOB sea-prep.blob \
    --sentinel-fuse NODE_SEA_FUSE_fce680ab2cc467b6e072b8b5df1996b2 \
    --macho-segment-name NODE_SEA

codesign --sign - otpcli