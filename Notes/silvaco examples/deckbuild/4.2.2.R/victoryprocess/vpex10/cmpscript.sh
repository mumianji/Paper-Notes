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

tonyplot vpex10.dat     -set vpex10_aimg.set  -png vpex10_aimg_ref.png
tonyplot3d vpex10_1.str -set vpex10_3D.set    -png vpex10_3D_ref.png

cd ..
tonyplot vpex10.dat     -set vpex10_aimg.set  -png vpex10_aimg_new.png
tonyplot3d vpex10_1.str -set vpex10_3D.set    -png vpex10_3D_new.png

WEBFOLDER="/main/stage/wiki/regressiontests/victoryprocess/StandardExamples/vpex10/"

cp vpex10_aimg_new.png      $WEBFOLDER
cp vpex10_3D_new.png        $WEBFOLDER

cp Reference/vpex10_aimg_ref.png     $WEBFOLDER
cp Reference/vpex10_3D_ref.png       $WEBFOLDER


echo "<html>"   > comp.html
echo "<body>"  >> comp.html
echo "<table style="width:100%">"      >> comp.html
echo "  <tr>"                          >> comp.html
echo "    <th>New Version</th>"        >> comp.html
echo "    <th>Reference Version</th>"  >> comp.html
echo "  </tr>"                         >> comp.html
echo "</table>"                        >> comp.html
echo "<p>"    >> comp.html
echo "<IMG SRC=\"vpex10_aimg_new.png\"     NAME=\"graphics1-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex10_aimg_ref.png\"     NAME=\"graphics1-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "<IMG SRC=\"vpex10_3D_new.png\"       NAME=\"graphics2-1\" WIDTH=49% BORDER=0>
      <IMG SRC=\"vpex10_3D_ref.png\"       NAME=\"graphics2-2}\" WIDTH=49% BORDER=0>" >> comp.html
echo "</p>"   >> comp,html 
echo "</body>" >> comp.html
echo "</html>" >> comp.html

cp comp.html $WEBFOLDER
