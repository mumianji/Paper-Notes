#! /bin/sh

mkdir Reference
cd Reference
cp ../*.gz .
gunzip *.gz
cp ../*.set .

tonyplot3d vpex07_1.str -set vpex07.set -png vpex07_1_ref.png
tonyplot3d vpex07_2.str -set vpex07.set -png vpex07_2_ref.png
tonyplot3d vpex07_3.str -set vpex07.set -png vpex07_3_ref.png
tonyplot vpex07_2_cut.str -overlay vpex07_3_cut.str -set vpex07_2D.set -png vpex07_cut_ref.png

cd ..
tonyplot3d vpex07_1.str -set vpex07.set -png vpex07_1_new.png
tonyplot3d vpex07_2.str -set vpex07.set -png vpex07_2_new.png
tonyplot3d vpex07_3.str -set vpex07.set -png vpex07_3_new.png
tonyplot vpex07_2_cut.str -overlay vpex07_3_cut.str -set vpex07_2D.set -png vpex07_cut_new.png

WEBFOLDER="/main/stage/wiki/regressiontests/victoryprocess/StandardExamples/vpex07/"

cp vpex07_1_new.png   $WEBFOLDER
cp vpex07_2_new.png   $WEBFOLDER
cp vpex07_3_new.png   $WEBFOLDER
cp vpex07_cut_new.png $WEBFOLDER

cp Reference/vpex07_1_ref.png   $WEBFOLDER
cp Reference/vpex07_2_ref.png   $WEBFOLDER
cp Reference/vpex07_3_ref.png   $WEBFOLDER
cp Reference/vpex07_cut_ref.png $WEBFOLDER

echo "<html>"   > comp.html
echo "<body>"  >> comp.html
echo "<table style="width:100%">"      >> comp.html
echo "  <tr>"                          >> comp.html
echo "    <th>New Version</th>"        >> comp.html
echo "    <th>Reference Version</th>"  >> comp.html
echo "  </tr>"                         >> comp.html
echo "</table>"                        >> comp.html
echo "<p>"    >> comp.html
echo "<IMG SRC=\"vpex07_1_new.png\"    NAME=\"graphics1-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex07_1_ref.png\"    NAME=\"graphics1-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex07_2_new.png\"    NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex07_2_ref.png\"    NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex07_3_new.png\"    NAME=\"graphics3-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex07_3_ref.png\"    NAME=\"graphics3-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex07_cut_new.png\"  NAME=\"graphics4-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex07_cut_ref.png\"  NAME=\"graphics4-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "</p>"   >> comp,html 
echo "</body>" >> comp.html
echo "</html>" >> comp.html

cp comp.html $WEBFOLDER
