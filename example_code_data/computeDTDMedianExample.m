clc;
clear all;
import DTDprocess.computeDTDMedian;
%load data
load firmSpecific.mat;
load firmList.mat;

%call computeDTDMedian function
[firmSpecific,varCol]=computeDTDMedian(firmSpecific,varCol,firmList,10008);

save('firmSpecific.mat','firmSpecific','varCol');
