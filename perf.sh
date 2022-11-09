cd dgemm
sudo cpupower -c 1 frequency-set -g performance
./run_dgemm.sh
./data_dgemm.sh
cd ..

cd dotprod
sudo cpupower -c 1 frequency-set -g performance
./run_dotprod.sh
./data_dotprod.sh
cd ..

cd reduc
sudo cpupower -c 1 frequency-set -g performance
./run_reduc.sh
./data_reduc.sh
cd ..