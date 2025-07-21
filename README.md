# simple-pico-project
A simple library to compile pico w projects

Files go in `source/`

# To compile simply 
    chmod +x compile.sh
    ./compile.sh

Will automatically fetch the pico-sdk in `sdk/` if it is not already downloaded

`ls /dev/ttyACM*` Find which device the pico is connected to
`minicom -D /dev/ttyACM0 -b 115200` Read output

# Installation of arm compilers: 

    wget https://raw.githubusercontent.com/raspberrypi/pico-setup/master/pico_setup.sh
    
    sudo chmod +x pico_setup.sh
    
    ./pico_setup.h
