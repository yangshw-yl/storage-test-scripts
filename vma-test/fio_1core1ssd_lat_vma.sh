mkdir -p /home/nmon/1core1ssd_lat_vma_1q/
TARGET_NAME="ceph-rep-02"

#write(512b,1k,2k,4k,8k,16k,32k,64k,128k,512k),10*60s
ssh $TARGET_NAME<<EOF
mkdir -p /home/target_nmon/1core1ssd_lat_vma_1q/
nmon -F /home/target_nmon/1core1ssd_lat_vma_1q/wirte_lat.nmon -s1 -c600
EOF
nmon -F /home/nmon/1core1ssd_lat_vma_1q/wirte_lat.nmon -s1 -c600 
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/512b-1q-write.fio| tee -a ./result-1core1ssd_lat_vma/512b-1q-write-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/1k-1q-write.fio| tee -a ./result-1core1ssd_lat_vma/1k-1q-write-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/2k-1q-write.fio| tee -a ./result-1core1ssd_lat_vma/2k-1q-write-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/4k-1q-write.fio| tee -a ./result-1core1ssd_lat_vma/4k-1q-write-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/8k-1q-write.fio| tee -a ./result-1core1ssd_lat_vma/8k-1q-write-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/16k-1q-write.fio| tee -a ./result-1core1ssd_lat_vma/16k-1q-write-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/32k-1q-write.fio| tee -a ./result-1core1ssd_lat_vma/32k-1q-write-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/64k-1q-write.fio| tee -a ./result-1core1ssd_lat_vma/64k-1q-write-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/128k-1q-write.fio| tee -a ./result-1core1ssd_lat_vma/128k-1q-write-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/512k-1q-write.fio| tee -a ./result-1core1ssd_lat_vma/512k-1q-write-1core1ssd
sleep 60


#read(512b,1k,2k,4k,8k,16k,32k,64k,128k,512k),10*60s
ssh $TARGET_NAME<<EOF
nmon -F /home/target_nmon/1core1ssd_lat_vma_1q/read_lat.nmon -s1 -c600
EOF
nmon -F /home/nmon/1core1ssd_lat_vma_1q/read_lat.nmon -s1 -c600 
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/512b-1q-read.fio| tee -a ./result-1core1ssd_lat_vma/512b-1q-read-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/1k-1q-read.fio| tee -a ./result-1core1ssd_lat_vma/1k-1q-read-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/2k-1q-read.fio| tee -a ./result-1core1ssd_lat_vma/2k-1q-read-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/4k-1q-read.fio| tee -a ./result-1core1ssd_lat_vma/4k-1q-read-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/8k-1q-read.fio| tee -a ./result-1core1ssd_lat_vma/8k-1q-read-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/16k-1q-read.fio| tee -a ./result-1core1ssd_lat_vma/16k-1q-read-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/32k-1q-read.fio| tee -a ./result-1core1ssd_lat_vma/32k-1q-read-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/64k-1q-read.fio| tee -a ./result-1core1ssd_lat_vma/64k-1q-read-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/128k-1q-read.fio| tee -a ./result-1core1ssd_lat_vma/128k-1q-read-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/512k-1q-read.fio| tee -a ./result-1core1ssd_lat_vma/512k-1q-read-1core1ssd
sleep 60

#randwrite(512b,1k,2k,4k,8k,16k,32k,64k,128k,512k),10*60s
ssh $TARGET_NAME<<EOF
nmon -F /home/target_nmon/1core1ssd_lat_vma_1q/randwrite_lat.nmon -s1 -c600
EOF
nmon -F /home/nmon/1core1ssd_lat_vma_1q/randwrite_lat.nmon -s1 -c600 
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/512b-1q-randwrite.fio| tee -a ./result-1core1ssd_lat_vma/512b-1q-randwrite-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/1k-1q-randwrite.fio| tee -a ./result-1core1ssd_lat_vma/1k-1q-randwrite-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/2k-1q-randwrite.fio| tee -a ./result-1core1ssd_lat_vma/2k-1q-randwrite-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/4k-1q-randwrite.fio| tee -a ./result-1core1ssd_lat_vma/4k-1q-randwrite-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/8k-1q-randwrite.fio| tee -a ./result-1core1ssd_lat_vma/8k-1q-randwrite-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/16k-1q-randwrite.fio| tee -a ./result-1core1ssd_lat_vma/16k-1q-randwrite-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/32k-1q-randwrite.fio| tee -a ./result-1core1ssd_lat_vma/32k-1q-randwrite-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/64k-1q-randwrite.fio| tee -a ./result-1core1ssd_lat_vma/64k-1q-randwrite-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/128k-1q-randwrite.fio| tee -a ./result-1core1ssd_lat_vma/128k-1q-randwrite-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/512k-1q-randwrite.fio| tee -a ./result-1core1ssd_lat_vma/512k-1q-randwrite-1core1ssd
sleep 60

#randread(512b,1k,2k,4k,8k,16k,32k,64k,128k,512k),10*60s
ssh $TARGET_NAME<<EOF
nmon -F /home/target_nmon/1core1ssd_lat_vma_1q/randread_lat.nmon -s1 -c600
EOF
nmon -F /home/nmon/1core1ssd_lat_vma_1q/randread_lat.nmon -s1 -c600
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/512b-1q-randread.fio| tee -a ./result-1core1ssd_lat_vma/512b-1q-randread-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/1k-1q-randread.fio| tee -a ./result-1core1ssd_lat_vma/1k-1q-randread-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/2k-1q-randread.fio| tee -a ./result-1core1ssd_lat_vma/2k-1q-randread-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/4k-1q-randread.fio| tee -a ./result-1core1ssd_lat_vma/4k-1q-randread-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/8k-1q-randread.fio| tee -a ./result-1core1ssd_lat_vma/8k-1q-randread-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/16k-1q-randread.fio| tee -a ./result-1core1ssd_lat_vma/16k-1q-randread-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/32k-1q-randread.fio| tee -a ./result-1core1ssd_lat_vma/32k-1q-randread-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/64k-1q-randread.fio| tee -a ./result-1core1ssd_lat_vma/64k-1q-randread-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/128k-1q-randread.fio| tee -a ./result-1core1ssd_lat_vma/128k-1q-randread-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/512k-1q-randread.fio| tee -a ./result-1core1ssd_lat_vma/512k-1q-randread-1core1ssd
sleep 60

#randrw(512b,1k,2k,4k,8k,16k,32k,64k,128k,512k),10*60s
ssh $TARGET_NAME<<EOF
nmon -F /home/target_nmon/1core1ssd_lat_vma_1q/randrw_lat.nmon -s1 -c600
EOF
nmon -F /home/nmon/1core1ssd_lat_vma_1q/randrw_lat.nmon -s1 -c600
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/512b-1q-randrw.fio| tee -a ./result-1core1ssd_lat_vma/512b-1q-randrw-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/1k-1q-randrw.fio| tee -a ./result-1core1ssd_lat_vma/1k-1q-randrw-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/2k-1q-randrw.fio| tee -a ./result-1core1ssd_lat_vma/2k-1q-randrw-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/4k-1q-randrw.fio| tee -a ./result-1core1ssd_lat_vma/4k-1q-randrw-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/8k-1q-randrw.fio| tee -a ./result-1core1ssd_lat_vma/8k-1q-randrw-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/16k-1q-randrw.fio| tee -a ./result-1core1ssd_lat_vma/16k-1q-randrw-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/32k-1q-randrw.fio| tee -a ./result-1core1ssd_lat_vma/32k-1q-randrw-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/64k-1q-randrw.fio| tee -a ./result-1core1ssd_lat_vma/64k-1q-randrw-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/128k-1q-randrw.fio| tee -a ./result-1core1ssd_lat_vma/128k-1q-randrw-1core1ssd
VMA_TCP_NODELAY=1 VMA_TX_BUFS=4000000 LD_PRELOAD='/home/centos/yangl/spdk-tcp-1208/vma-install/lib/libvma.so ./fio_plugin' /home/centos/yangl/fio/fio/fio ./fio_conf_file_1core1ssd_lat_vma/512k-1q-randrw.fio| tee -a ./result-1core1ssd_lat_vma/512k-1q-randrw-1core1ssd
sleep 60
