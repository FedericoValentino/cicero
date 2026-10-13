source /usr/local/share/pynq-venv/bin/activate
source /etc/profile.d/xrt_setup.sh

echo "Running Benchmark for cc_id_bits $1"

echo "C BUILD"

mkdir c++_benchmark/build
cd c++_benchmark/build
cmake ..
cd ../..
cmake --build c++_benchmark/build/

echo "C Host Benchmark with fast loading RE: Brill"

sudo ./c++_benchmark/build/re2_driver_xrt REs/autozoo_brill.regex INs/autozoo_brill.input ../cicero_compiler/re2compiler.py output_c_fl_brill.txt 1 $1

echo "C Host Benchmark with fast loading RE: Brill4"

sudo ./c++_benchmark/build/re2_driver_xrt REs/autozoo_brill4.regex INs/autozoo_brill.input ../cicero_compiler/re2compiler.py output_c_fl_brill4.txt 1 $1

echo "C Host Benchmark without fast loading RE: Protomata "

sudo ./c++_benchmark/build/re2_driver_xrt REs/autozoo_protomata.regex INs/autozoo_protomata.input ../cicero_compiler/re2compiler.py output_c_sl_protomata.txt 0 $1

echo "C Host Benchmark without fast loading RE: Protomata4 "

sudo ./c++_benchmark/build/re2_driver_xrt REs/autozoo_protomata4.regex INs/autozoo_protomata.input ../cicero_compiler/re2compiler.py output_c_sl_protomata4.txt 0 $1

