# k9copy
Mirror of k9copy-reloaded patched to enable compilation with latest qt, ffmpeg and gcc

REQUIRED

kdesu  
hicolor-icon-theme  
kio  
libmpeg2  
xine-lib  
dvd+rw-tools  
dvdauthor  
libdvdnav  
kdelibs4support  
libdvdcss  
cmake  
extra-cmake-modules  
kdoctools

TO BUILD

mkdir build  
cd build  
cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DQT5_BUILD=ON -Wno-dev  
make  
sudo make install  

OLD README BELOW (preserved for archival purposes)

K9Copy is now available in two versions, built from the same source.  
1. Qt4 + KDE4  
2. Qt5 + KF5  
To choose between these two pass into CMake the -DQT5_BUILD=ON/OFF option.   
Passing in ON will build the KF5 Version, whereas OFF will build the KDE4 version.  


!!!!!ATTENTION!!!!!

Before starting the build you may need to setup the KDE4 environment variables.
To do this open Project->Project Options and then look at the "Run" and the "Make" 
pages. Each of these two has an environment variables widget in which you have
to fill in the right values for the variables already listed.

After setting up the variables you'll also need to run cmake inside the build
directory. This can not be done by kdevelop as a KDE4 environment is needed
when running cmake to find KDE4. Open the integrated konsole and change to the build
subdirectory. Then setup a KDE4 environment and run "cmake ../".

More information how to setup a KDE4 development environment can be found on
http://techbase.kde.org/Getting_Started/Increased_Productivity_in_KDE4_with_Scripts
