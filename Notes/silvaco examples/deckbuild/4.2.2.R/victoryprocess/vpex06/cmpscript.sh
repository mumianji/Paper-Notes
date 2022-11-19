#! /bin/sh

if [ ! -d Reference ]
then 
    mkdir Reference
fi
cd Reference
cp ../*.gz .
gunzip *.gz
cp ../*.set .

tonyplot3d vpex06_1.str      -set vpex06.set -png vpex06_1_ref.png
tonyplot3d vpex06_2.str      -set vpex06.set -png vpex06_2_ref.png
tonyplot3d vpex06_3.str      -set vpex06.set -png vpex06_3_ref.png
tonyplot3d vpex06_cycle_01.str -set vpex06.set -png vpex06_cycle_01_ref.png

cd ..
tonyplot3d vpex06_1.str      -set vpex06.set -png vpex06_1_new.png
tonyplot3d vpex06_2.str      -set vpex06.set -png vpex06_2_new.png
tonyplot3d vpex06_3.str      -set vpex06.set -png vpex06_3_new.png
tonyplot3d vpex06_cycle_01.str -set vpex06.set -png vpex06_cycle_01_new.png

WEBFOLDER="/main/stage/wiki/regressiontests/victoryprocess/StandardExamples/vpex06/"

cp vpex06_1_new.png        $WEBFOLDER
cp vpex06_2_new.png        $WEBFOLDER
cp vpex06_3_new.png        $WEBFOLDER
cp vpex06_cycle_01_new.png $WEBFOLDER

cp Reference/vpex06_1_ref.png        $WEBFOLDER
cp Reference/vpex06_2_ref.png        $WEBFOLDER
cp Reference/vpex06_3_ref.png        $WEBFOLDER
cp Reference/vpex06_cycle_01_ref.png $WEBFOLDER

echo "<html>"   > comp.html
echo "<body>"  >> comp.html
echo "<table style="width:100%">"      >> comp.html
echo "  <tr>"                          >> comp.html
echo "    <th>New Version</th>"        >> comp.html
echo "    <th>Reference Version</th>"  >> comp.html
echo "  </tr>"                         >> comp.html
echo "</table>"                        >> comp.html
echo "<p>"    >> comp.html
echo "<IMG SRC=\"vpex06_1_new.png\"    NAME=\"graphics1-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex06_1_ref.png\"    NAME=\"graphics1-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex06_2_new.png\"    NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex06_2_ref.png\"    NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex06_3_new.png\"    NAME=\"graphics3-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex06_3_ref.png\"    NAME=\"graphics3-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex06_cycle_01_new.png\"  NAME=\"graphics4-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex06_cycle_01_ref.png\"  NAME=\"graphics4-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "</p>"   >> comp,html 
echo "</body>" >> comp.html
echo "</html>" >> comp.html

cp comp.html $WEBFOLDER
