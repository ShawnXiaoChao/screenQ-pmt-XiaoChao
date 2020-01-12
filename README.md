# README

**XIAO CHAO**

## Description

This data processing MATLAB package is to compute DTD median for selected industry and add two new variables on the input table which means the DTD median of selected  and non-selected industry firms in this country for Q4. This package including example code and package fold.

## Direction

You should take the following steps to use this package.

1. Download the whole package and save the folder which starts with +(+DTDprocess) into your local MATLAB package scope.

2. Use import to import `computeDTDMedian` function so you do not need use class name further.

   ```matlab
   import DTDprocess.computeDTDMedian;
   ```

3. Load unprocessed `firmSpecific.mat` and `firmList.mat`

   ```matlab
   load firmSpecfic.mat;
   load firmList.mat;
   ```

4. Call computeDTDMedian function.
   The input includes firmSpecific, varCol, firmList and selected industry code. 

   ```matlab
   [firmSpecific,varCol]=computeDTDMedian(firmSpecific,varCol,firmList,10008);
   ```

5. Save processed data.

   ```matlab
   save('firmSpecific.mat','firmSpecific','varCol');
   ```



I uploaded an example code in this package and you may run this .m file first. If you have any further question about this package please feel free to contact me both by email: chaoxiao@u.nus.edu or telephone me at: +65 9174 0927

