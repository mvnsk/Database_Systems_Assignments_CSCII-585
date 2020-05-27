from math import pi,sin,cos
def bovard():
    longitude = -118.286444
    latitude = 34.0200245
    points = []
    R=0.05
    r=0.01
    a=0.04
    t = 0
    while t < 12*pi:
        x = (R+r)*cos((r/R)*t) - a*cos((1+r/R)*t)
        y = (R+r)*sin((r/R)*t) - a*sin((1+r/R)*t)
        points.append((longitude+0.1*x, latitude+0.1*y))
        t = t + 0.1
    with open('spiro.kml', 'wt') as myfile:
        myfile.write('''<?xml version="1.0" encoding="UTF-8"?>
<kml
    xmlns="http://earth.google.com/kml/2.0">
    <Document>
        <Style id="z1">
            <IconStyle>
                <Icon>
                    <href>
                        http://www.google.com/intl/en_us/mapfiles/ms/micons/blue-dot.png
                    </href>
                </Icon>
            </IconStyle>
        </Style>''')
        for index, element in enumerate(points):
            myfile.write('<Placemark>')
            myfile.write('<name>')
            mytags = '"Point' + str(index) + '"'
            myfile.write(mytags)
            myfile.write('</name>')
            myfile.write('<styleUrl>#z1</styleUrl>')
            myfile.write('<Point>')
            myfile.write('<coordinates>')
            myloc = str(element[0]) + ',' + str(element[1])
            myfile.write(myloc)
            myfile.write('</coordinates>')
            myfile.write('</Point>')
            myfile.write('</Placemark>')
        myfile.write('</Document>')
        myfile.write('</kml>')

if __name__ == '__main__':
    bovard()
