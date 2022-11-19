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

tonyplot3d vpex04_1.str    -set vpex04.set      -png vpex04_1_ref.png
tonyplot3d vpex04_2.str    -set vpex04.set      -png vpex04_2_ref.png
tonyplot3d vpex04_3.str    -set vpex04.set      -png vpex04_3_ref.png
  
cd ..
tonyplot3d vpex04_1.str    -set vpex04.set      -png vpex04_1_new.png
tonyplot3d vpex04_2.str    -set vpex04.set      -png vpex04_2_new.png
tonyplot3d vpex04_3.str    -set vpex04.set      -png vpex04_3_new.png

WEBFOLDER="/main/stage/wiki/regressiontests/victoryprocess/StandardExamples/vpex04/"

cp vpex04_1_new.png   $WEBFOLDER
cp vpex04_2_new.png   $WEBFOLDER
cp vpex04_3_new.png   $WEBFOLDER


cp Reference/vpex04_1_ref.png   $WEBFOLDER
cp Reference/vpex04_2_ref.png   $WEBFOLDER
cp Reference/vpex04_3_ref.png   $WEBFOLDER


echo "<html>"   > comp.html
echo "<body>"  >> comp.html
echo "<table style="width:100%">"      >> comp.html
echo "  <tr>"                          >> comp.html
echo "    <th>New Version</th>"        >> comp.html
echo "    <th>Reference Version</th>"  >> comp.html
echo "  </tr>"                         >> comp.html
echo "</table>"                        >> comp.html
echo "<p>"    >> comp.html
echo "<IMG SRC=\"vpex04_1_new.png\"   NAME=\"graphics1-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex04_1_ref.png\"   NAME=\"graphics1-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex04_2_new.png\"   NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex04_2_ref.png\"   NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex04_3_new.png\"   NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex04_3_ref.png\"   NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "</p>"   >> comp,html 
echo "</body>" >> comp.html
echo "</html>" >> comp.html

cp comp.html $WEBFOLDER
