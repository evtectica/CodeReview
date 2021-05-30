@echo off
cd C:\temp
git clone https://github.com/evtectica/SAS.git

cd C:\Program Files\SASHome\SASPlatformObjectFramework\9.4
ExportPackage.exe -host ip-192-168-1-100.vpc-028A1901.internal -port 8561 -user sasdemo00 -password Orion123 -objects "/GPB_Hack/prepare_data" -types "Job" -package "C:\temp\SAS\prepare_data.spk"