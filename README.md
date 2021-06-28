# lineage-os-18.1-ims_build

This is the right way to install and build Lineage OS 18.1 for the Sony Xperia Z5 Premium (satsuki)

STEPS
1. Create a directory where you want to make your builds
2. Clone this repository

THEN:
1. Run: bash install.sh #This will install the correct packages for builds
2. Run: bash setup-env.sh #This will setup in the current terminal the cache size and compression for this terminal session only
3. Run: bash download.sh #This will download the repositories for the Xperia Z5 Premium (satsuki)

THEN: 
1. Run: breakfast
2. Choose the correct target build type
3. Run: croot && brunch
4. Choose the same target build as 2.
5. Wait until the end of build. It can take time depending on your computer specs.
