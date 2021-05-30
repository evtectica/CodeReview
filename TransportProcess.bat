@echo off
cd C:\Program Files\SASHome\SASPlatformObjectFramework\9.4
ExportPackage.exe -host ip-192-168-1-100.vpc-028A1901.internal -port 8561 -user sasdemo00 -password Orion123 -objects "/GPB_Hack/prepare_data" -types "Job" -package "C:\temp\Transport\prepare_data.spk"

ImportPackage.exe -host ip-192-168-1-100.vpc-028A1901.internal -port 8562 -user sasdemo00 -password Orion123 -target "/GPB_Hack" -types "Job" -package "C:\temp\Transport\prepare_data.spk"