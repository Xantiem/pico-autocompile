#!/bin/bash   

# fetch and initialise sdk

if [ -d "sdk" ]; then
    echo "sdk folder found"
else
    mkdir sdk
fi

cd sdk/
if [ -d "pico-sdk" ]; then
    echo "pico-sdk found"
else
    git clone https://github.com/raspberrypi/pico-sdk/
fi
cd pico-sdk/
git submodule update --init
git init
export PICO_SDK_PATH=$(pwd)
echo "PICO_SDK_PATH path at $PICO_SDK_PATH"
cd ../../
git init

# now compile

cmake -B build && \
make -j $(getconf _NPROCESSORS_ONLN) -C build 

# -B build means cmake creates the build folder if needed
# && means make is only run if cmake was successful
# -j tells make how many cpu threads to use
# $(getconf _NPROCESSORS_ONLN) is the number of threads yout pc has
# -j $(getconf _NPROCESSORS_ONLN) tells make to use all your cores
# -C build tells make what folder to build from/in

# -DPICO_BOARD=pico_w builds for pico w, not pico
#!/bin/bash   

# fetch and initialise sdk

cd sdk/
if [ -d "pico-sdk" ]; then
    echo "pico-sdk found"
else
    git clone https://github.com/raspberrypi/pico-sdk/
fi
cd pico-sdk/
git init
export PICO_SDK_PATH=$(pwd)
echo "PICO_SDK_PATH path at $PICO_SDK_PATH"
cd ../../
git init

# now compile

cmake -B build && \
make -j $(getconf _NPROCESSORS_ONLN) -C build 

# -B build means cmake creates the build folder if needed
# && means make is only run if cmake was successful
# -j tells make how many cpu threads to use
# $(getconf _NPROCESSORS_ONLN) is the number of threads yout pc has
# -j $(getconf _NPROCESSORS_ONLN) tells make to use all your cores
# -C build tells make what folder to build from/in

# -DPICO_BOARD=pico_w builds for pico w, not pico
