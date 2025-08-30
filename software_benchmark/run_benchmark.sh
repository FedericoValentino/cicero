source /usr/local/share/pynq-venv/bin/activate
source /etc/profile.d/xrt_setup.sh

echo "C BUILD"
cmake --build c++_benchmark/build/
echo "C Host Benchmark with fast loading "

sudo ./c++_benchmark/build/re2_driver_xrt REs/c++_compare.regex INs/c++_compare.input ../cicero_compiler/re2compiler.py output_c_fl.txt 1

echo "C Host Benchmark without fast loading "

sudo ./c++_benchmark/build/re2_driver_xrt REs/c++_compare.regex INs/c++_compare.input ../cicero_compiler/re2compiler.py output_c_sl.txt 0

echo "Python Host Benchmark"

sudo -E python python_benchmark/measure.py ../PerfCounterAxiMasterBitstreams/NEW_8x1.bit INs/c++_compare.input REs/c++_compare.regex output_py.txt ../cicero_compiler 10 10