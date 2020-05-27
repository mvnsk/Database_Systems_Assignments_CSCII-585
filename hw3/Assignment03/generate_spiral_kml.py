from math import sin, cos, pi


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


def generate_coordinates(longitude=-118.2890243, latitude=34.0214011):
    t, R, r, a = 0, 0.08, 0.01, 0.04
    coords = []

    while t < 16*pi:
        x = (R+r)*cos((r/R)*t) - a*cos((1+r/R)*t)
        y = (R+r)*sin((r/R)*t) - a*sin((1+r/R)*t)
        coords.append((longitude+0.05*x, latitude+0.05*y))
        t += 0.05

    return coords


def dump_to_kml(coords):
    with open('spiro.kml', 'wt') as kml:
        kml.write(head)
        for idx, coord in enumerate(coords):
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


def main():
    dump_to_kml(generate_coordinates())


if __name__ == '__main__':
    main()
