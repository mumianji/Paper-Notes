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

tonyplot3d vpex09_1.str    -set vpex09.set      -png vpex09_1_ref.png
tonyplot3d vpex09_2.str    -set vpex09.set      -png vpex09_2_ref.png
tonyplot3d vpex09_3.str    -set vpex09.set      -png vpex09_3_ref.png
tonyplot3d vpex09_3.str    -set vpex09_3.set    -png vpex09_32_ref.png
tonyplot   vpex09_2_2d.str                      -png vpex09_2_2d_ref.png
tonyplot   vpex09_3_2d.str                      -png vpex09_3_2d_ref.png
tonyplot   vpex09_3_2d.str -set vpex09_3_2d.set -png vpex09_32_2d_ref.png

cd ..
tonyplot3d vpex09_1.str    -set vpex09.set      -png vpex09_1_new.png
tonyplot3d vpex09_2.str    -set vpex09.set      -png vpex09_2_new.png
tonyplot3d vpex09_3.str    -set vpex09.set      -png vpex09_3_new.png
tonyplot3d vpex09_3.str    -set vpex09_3.set    -png vpex09_32_new.png
tonyplot   vpex09_2_2d.str                      -png vpex09_2_2d_new.png
tonyplot   vpex09_3_2d.str                      -png vpex09_3_2d_new.png
tonyplot   vpex09_3_2d.str -set vpex09_3_2d.set -png vpex09_32_2d_new.png

WEBFOLDER="/main/stage/wiki/regressiontests/victoryprocess/StandardExamples/vpex09/"

cp vpex09_1_new.png     $WEBFOLDER
cp vpex09_2_new.png     $WEBFOLDER
cp vpex09_3_new.png     $WEBFOLDER
cp vpex09_32_new.png    $WEBFOLDER
cp vpex09_2_2d_new.png  $WEBFOLDER
cp vpex09_3_2d_new.png  $WEBFOLDER
cp vpex09_32_2d_new.png $WEBFOLDER

cp Reference/vpex09_1_ref.png     $WEBFOLDER
cp Reference/vpex09_2_ref.png     $WEBFOLDER
cp Reference/vpex09_3_ref.png     $WEBFOLDER
cp Reference/vpex09_32_ref.png    $WEBFOLDER
cp Reference/vpex09_2_2d_ref.png  $WEBFOLDER
cp Reference/vpex09_3_2d_ref.png  $WEBFOLDER
cp Reference/vpex09_32_2d_ref.png $WEBFOLDER


echo "<html>"   > comp.html
echo "<body>"  >> comp.html
echo "<table style="width:100%">"      >> comp.html
echo "  <tr>"                          >> comp.html
echo "    <th>New Version</th>"        >> comp.html
echo "    <th>Reference Version</th>"  >> comp.html
echo "  </tr>"                         >> comp.html
echo "</table>"                        >> comp.html
echo "<p>"    >> comp.html
echo "<IMG SRC=\"vpex09_1_new.png\"     NAME=\"graphics1-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex09_1_ref.png\"     NAME=\"graphics1-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex09_2_new.png\"     NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex09_2_ref.png\"     NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex09_3_new.png\"     NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex09_3_ref.png\"     NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex09_32_new.png\"    NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex09_32_ref.png\"    NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex09_2_2d_new.png\"  NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex09_2_2d_ref.png\"  NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex09_3_2d_new.png\"  NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex09_3_2d_ref.png\"  NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex09_32_2d_new.png\" NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex09_32_2d_ref.png\" NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "</p>"   >> comp,html 
echo "</body>" >> comp.html
echo "</html>" >> comp.html

cp comp.html $WEBFOLDER
