#! /bin/sh

if [ ! -d Reference ]
then 
    mkdir Reference
fi
cd Reference
cp ../*.gz .
gunzip *.gz
cp ../*dat .
cp ../*.set .

tonyplot3d vpex02_1.str    -set vpex02_6.set      -png vpex02_1_ref.png
tonyplot3d vpex02_2.str    -set vpex02_6.set      -png vpex02_2_ref.png
tonyplot3d vpex02_3.str    -set vpex02_6.set      -png vpex02_3_ref.png
tonyplot3d vpex02_4.str    -set vpex02_6.set      -png vpex02_4_ref.png
tonyplot3d vpex02_5.str    -set vpex02_6.set      -png vpex02_5_ref.png
tonyplot3d vpex02_6.str    -set vpex02_6.set      -png vpex02_6_ref.png
tonyplot3d vpex02_7.str    -set vpex02_10.set     -png vpex02_7_ref.png
tonyplot3d vpex02_8.str    -set vpex02_10.set     -png vpex02_8_ref.png
tonyplot3d vpex02_9.str    -set vpex02_10.set     -png vpex02_9_ref.png
tonyplot3d vpex02_10.str   -set vpex02_10.set     -png vpex02_10_ref.png
tonyplot3d vpex02_11.str   -set vpex02_14.set     -png vpex02_11_ref.png
tonyplot3d vpex02_12.str   -set vpex02_14.set     -png vpex02_12_ref.png
tonyplot3d vpex02_13.str   -set vpex02_14.set     -png vpex02_13_ref.png
tonyplot3d vpex02_14.str   -set vpex02_14.set     -png vpex02_14_ref.png
tonyplot3d vpex02_15.str   -set vpex02_17.set     -png vpex02_15_ref.png
tonyplot3d vpex02_16.str   -set vpex02_17.set     -png vpex02_16_ref.png
tonyplot3d vpex02_17.str   -set vpex02_17.set     -png vpex02_17_ref.png
tonyplot3d vpex02_18.str   -set vpex02_18.set     -png vpex02_18_ref.png
tonyplot aeimage.dat                              -png aeimage_ref.png
  
cd ..
tonyplot3d vpex02_1.str    -set vpex02_6.set      -png vpex02_1_new.png
tonyplot3d vpex02_2.str    -set vpex02_6.set      -png vpex02_2_new.png
tonyplot3d vpex02_3.str    -set vpex02_6.set      -png vpex02_3_new.png
tonyplot3d vpex02_4.str    -set vpex02_6.set      -png vpex02_4_new.png
tonyplot3d vpex02_5.str    -set vpex02_6.set      -png vpex02_5_new.png
tonyplot3d vpex02_6.str    -set vpex02_6.set      -png vpex02_6_new.png
tonyplot3d vpex02_7.str    -set vpex02_10.set     -png vpex02_7_new.png
tonyplot3d vpex02_8.str    -set vpex02_10.set     -png vpex02_8_new.png
tonyplot3d vpex02_9.str    -set vpex02_10.set     -png vpex02_9_new.png
tonyplot3d vpex02_10.str   -set vpex02_10.set     -png vpex02_10_new.png
tonyplot3d vpex02_11.str   -set vpex02_14.set     -png vpex02_11_new.png
tonyplot3d vpex02_12.str   -set vpex02_14.set     -png vpex02_12_new.png
tonyplot3d vpex02_13.str   -set vpex02_14.set     -png vpex02_13_new.png
tonyplot3d vpex02_14.str   -set vpex02_14.set     -png vpex02_14_new.png
tonyplot3d vpex02_15.str   -set vpex02_17.set     -png vpex02_15_new.png
tonyplot3d vpex02_16.str   -set vpex02_17.set     -png vpex02_16_new.png
tonyplot3d vpex02_17.str   -set vpex02_17.set     -png vpex02_17_new.png
tonyplot3d vpex02_18.str   -set vpex02_18.set     -png vpex02_18_new.png
tonyplot aeimage.dat                              -png aeimage_new.png  

WEBFOLDER="/main/stage/wiki/regressiontests/victoryprocess/StandardExamples/vpex02/"

cp vpex02_1_new.png   $WEBFOLDER
cp vpex02_2_new.png   $WEBFOLDER
cp vpex02_3_new.png   $WEBFOLDER
cp vpex02_4_new.png   $WEBFOLDER
cp vpex02_5_new.png   $WEBFOLDER
cp vpex02_6_new.png   $WEBFOLDER
cp vpex02_7_new.png   $WEBFOLDER
cp vpex02_8_new.png   $WEBFOLDER
cp vpex02_9_new.png   $WEBFOLDER
cp vpex02_10_new.png  $WEBFOLDER
cp vpex02_11_new.png  $WEBFOLDER
cp vpex02_12_new.png  $WEBFOLDER
cp vpex02_13_new.png  $WEBFOLDER
cp vpex02_14_new.png  $WEBFOLDER
cp vpex02_15_new.png  $WEBFOLDER
cp vpex02_16_new.png  $WEBFOLDER
cp vpex02_17_new.png  $WEBFOLDER
cp vpex02_18_new.png  $WEBFOLDER
cp aeimage_new.png    $WEBFOLDER


cp Reference/vpex02_1_ref.png   $WEBFOLDER
cp Reference/vpex02_2_ref.png   $WEBFOLDER
cp Reference/vpex02_3_ref.png   $WEBFOLDER
cp Reference/vpex02_4_ref.png   $WEBFOLDER
cp Reference/vpex02_5_ref.png   $WEBFOLDER
cp Reference/vpex02_6_ref.png   $WEBFOLDER
cp Reference/vpex02_7_ref.png   $WEBFOLDER
cp Reference/vpex02_8_ref.png   $WEBFOLDER
cp Reference/vpex02_9_ref.png   $WEBFOLDER
cp Reference/vpex02_10_ref.png  $WEBFOLDER
cp Reference/vpex02_11_ref.png  $WEBFOLDER
cp Reference/vpex02_12_ref.png  $WEBFOLDER
cp Reference/vpex02_13_ref.png  $WEBFOLDER
cp Reference/vpex02_14_ref.png  $WEBFOLDER
cp Reference/vpex02_15_ref.png  $WEBFOLDER
cp Reference/vpex02_16_ref.png  $WEBFOLDER
cp Reference/vpex02_17_ref.png  $WEBFOLDER
cp Reference/vpex02_18_ref.png  $WEBFOLDER
cp Reference/aeimage_ref.png    $WEBFOLDER



echo "<html>"   > comp.html
echo "<body>"  >> comp.html
echo "<table style="width:100%">"      >> comp.html
echo "  <tr>"                          >> comp.html
echo "    <th>New Version</th>"        >> comp.html
echo "    <th>Reference Version</th>"  >> comp.html
echo "  </tr>"                         >> comp.html
echo "</table>"                        >> comp.html
echo "<p>"    >> comp.html
echo "<IMG SRC=\"vpex02_1_new.png\"   NAME=\"graphics1-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_1_ref.png\"   NAME=\"graphics1-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_2_new.png\"   NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_2_ref.png\"   NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_3_new.png\"   NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_3_ref.png\"   NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_4_new.png\"   NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_4_ref.png\"   NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_5_new.png\"   NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_5_ref.png\"   NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_6_new.png\"   NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_6_ref.png\"   NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_7_new.png\"   NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_7_ref.png\"   NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_8_new.png\"   NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_8_ref.png\"   NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_9_new.png\"   NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_9_ref.png\"   NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_10_new.png\"  NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_10_ref.png\"  NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_11_new.png\"  NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_11_ref.png\"  NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_12_new.png\"  NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_12_ref.png\"  NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_13_new.png\"  NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_13_ref.png\"  NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_14_new.png\"  NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_14_ref.png\"  NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_15_new.png\"  NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_15_ref.png\"  NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_16_new.png\"  NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_16_ref.png\"  NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_17_new.png\"  NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_17_ref.png\"  NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex02_18_new.png\"  NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex02_18_ref.png\"  NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "</p>"   >> comp,html 
echo "</body>" >> comp.html
echo "</html>" >> comp.html

cp comp.html $WEBFOLDER
