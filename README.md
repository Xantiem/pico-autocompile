# pico-autocompile
A project to serve as a baseline to easily compile pico projects on Linux systems (based on the work by [Tom Flaherty](https://github.com/tom-flaherty/pico-blank-cpp))

Source files in `source/`

# Compilation:
    chmod +x compile.sh
    ./compile.sh

Will automatically fetch the pico-sdk in `sdk/` if it is not already downloaded

`ls /dev/ttyACM*` Find which device the pico is connected to
`minicom -D /dev/ttyACM0 -b 115200` Read output

# Installation of arm compilers: 

    wget https://raw.githubusercontent.com/raspberrypi/pico-setup/master/pico_setup.sh
    
    sudo chmod +x pico_setup.sh
    
    ./pico_setup.h

[source reference](https://learn.arm.com/learning-paths/embedded-and-microcontrollers/rpi_pico/sdk/)

Todo: add automated arm compiler installation steps
