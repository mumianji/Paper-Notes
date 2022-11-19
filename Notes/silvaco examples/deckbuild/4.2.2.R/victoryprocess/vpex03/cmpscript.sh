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

tonyplot3d vpex03_0.str    -set vpex03_0.set      -png vpex03_0_ref.png
tonyplot3d vpex03_1.str    -set vpex03_1.set      -png vpex03_1_ref.png
tonyplot3d vpex03_2.str    -set vpex03_2.set      -png vpex03_2_ref.png
tonyplot3d vpex03_3.str    -set vpex03_0.set      -png vpex03_3_ref.png
tonyplot   vpex03_2d.str   -set vpex03_3.set      -png vpex03_2d_ref.png
  
cd ..
tonyplot3d vpex03_0.str    -set vpex03_0.set      -png vpex03_0_new.png
tonyplot3d vpex03_1.str    -set vpex03_1.set      -png vpex03_1_new.png
tonyplot3d vpex03_2.str    -set vpex03_2.set      -png vpex03_2_new.png
tonyplot3d vpex03_3.str    -set vpex03_0.set      -png vpex03_3_new.png
tonyplot   vpex03_2d.str   -set vpex03_3.set      -png vpex03_2d_new.png


WEBFOLDER="/main/stage/wiki/regressiontests/victoryprocess/StandardExamples/vpex03/"

cp vpex03_0_new.png    $WEBFOLDER
cp vpex03_1_new.png    $WEBFOLDER
cp vpex03_2_new.png    $WEBFOLDER
cp vpex03_3_new.png    $WEBFOLDER
cp vpex03_2d_new.png   $WEBFOLDER


cp Reference/vpex03_0_ref.png    $WEBFOLDER
cp Reference/vpex03_1_ref.png    $WEBFOLDER
cp Reference/vpex03_2_ref.png    $WEBFOLDER
cp Reference/vpex03_3_ref.png    $WEBFOLDER
cp Reference/vpex03_2d_ref.png   $WEBFOLDER


echo "<html>"   > comp.html
echo "<body>"  >> comp.html
echo "<table style="width:100%">"      >> comp.html
echo "  <tr>"                          >> comp.html
echo "    <th>New Version</th>"        >> comp.html
echo "    <th>Reference Version</th>"  >> comp.html
echo "  </tr>"                         >> comp.html
echo "</table>"                        >> comp.html
echo "<p>"    >> comp.html
echo "<IMG SRC=\"vpex03_0_new.png\"      NAME=\"graphics1-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex03_0_ref.png\"      NAME=\"graphics1-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex03_1_new.png\"      NAME=\"graphics1-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex03_1_ref.png\"      NAME=\"graphics1-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex03_2_new.png\"      NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex03_2_ref.png\"      NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex03_3_new.png\"      NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex03_3_ref.png\"      NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex03_2d_new.png\"   NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex03_2d_ref.png\"   NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "</p>"   >> comp,html 
echo "</body>" >> comp.html
echo "</html>" >> comp.html

cp comp.html $WEBFOLDER
