# sudo cpupower -c 0 frequency-set -g performance

cd dgemm
./run_dgemm.sh
./data_dgemm.sh
cd ..

cd dotprod
./run_dotprod.sh
./data_dotprod.sh
cd ..

cd reduc
./run_reduc.sh
./data_reduc.sh
cd ..