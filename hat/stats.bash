for ((i = 0 ; i < 5; i+= 1 ));
do
    java="$(bash hatrun.bash headless java mandel | tail -n 1)";
    opencl="$(bash hatrun.bash headless opencl mandel | tail -n 1)";
#    cuda="$(bash hatrun.bash headless cuda mandel | tail -3 | head -1)";
#    ptx="$(bash hatrun.bash ptx squares Squares $i | tail -4 | head -1)";
    echo $i,$java,$opencl >> squares.csv;
done