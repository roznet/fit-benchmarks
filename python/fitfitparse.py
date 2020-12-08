#!/usr/bin/env python3

import fitparse
import sys
import time
import os

start = time.time()

fitfile = fitparse.FitFile( sys.argv[1] )
records = []
laps = []

for record in fitfile.get_messages( 'record' ):
    records.append( record )

for lap in fitfile.get_messages( 'lap' ):
    laps.append( lap )


print( 'record: {} messages'.format( len( records) ) )
print( 'laps: {} messages'.format( len( laps) ) )
end = time.time()

print( "| python | {} | {} | {:.3f} seconds | [python-fitparse](https://github.com/dtcooper/python-fitparse) |".format( os.path.basename(sys.argv[0]), sys.argv[1], end-start ) )
