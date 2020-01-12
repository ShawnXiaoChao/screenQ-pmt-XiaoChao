%computeDTDMedian function
%input variables: firmSpecfic; varCol; firmList; IndustryCode;
function [computedDTDMedian,computedvarCol]=computeDTDMedian(firmSpecific,varCol,firmList,IndustryCode)

raw_data=firmSpecific;
industry_flag=raw_data(:,varCol.Comp_Mapped_Number,:);

% extract industry
for m=1:size(raw_data,3)
    temp=industry_flag(:,1,m);
    temp=fillmissing(temp,'nearest');
    industry_flag(:,1,m)=  firmList(firmList(:,1)==temp(1),2);
end

% merge data
temp=raw_data(:,varCol.DTD,:);
temp((industry_flag(:,1,:)~=IndustryCode))=NaN;
median_temp=median(temp,'all','omitnan');
temp((industry_flag(:,1,:)==IndustryCode))=median_temp;
raw_data(:,size(raw_data,2)+1,:)=temp;

temp=raw_data(:,varCol.DTD,:);
temp((industry_flag(:,1,:)==IndustryCode))=NaN;
median_temp=median(temp,'all','omitnan');
temp((industry_flag(:,1,:)~=IndustryCode))=median_temp;
raw_data(:,size(raw_data,2)+1,:)=temp;

computedDTDMedian=raw_data;
computedvarCol=varCol;
computedvarCol.DTD_median_Fin=size(firmSpecific,2)+1;
computedvarCol.DTD_median_nonFin=size(firmSpecific,2)+1;

end

