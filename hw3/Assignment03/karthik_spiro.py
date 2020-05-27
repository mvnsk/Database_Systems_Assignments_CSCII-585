from math import  pi,sin,cos
head = '''
<?xml version="1.0" encoding="UTF-8"?>
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
        </Style>
'''

def bovard():
    longitude = -118.286444
    latitude = 34.0200245
    points = []
    R=5
    r=1
    a=4
    t = 0
    while t < 8*pi:
        x = (R+r)*cos((r/R)*t) - a*cos((1+r/R)*t)
        y = (R+r)*sin((r/R)*t) - a*sin((1+r/R)*t)
        points.append((longitude+0.05*x, latitude+0.05*y))
        t += 0.05

    print(points)

    with open('hehespiro.kml', 'wt') as kml:
        kml.write(head)
        for idx, coord in enumerate(points):
            kml.write('<Placemark>')
            line = '<name>' + '"Point' + str(idx) + '"' + '</name>'
            kml.write(line)
            kml.write('''<styleUrl>#z1</styleUrl>
               <Point>
               ''')
            line = '<coordinates>' + str(coord[0]) + ',' + str(coord[1]) + '</coordinates>'
            kml.write(line)
            kml.write('''</Point>
                           </Placemark>''')
        kml.write('</Document></kml>')



if __name__ == '__main__':
    bovard()
