#!/usr/bin/env python3

import fitdecode
import sys
import time
import os

start = time.time()

records = []
laps = []

with fitdecode.FitReader( sys.argv[1] ) as fit:
    for frame in fit:
        if isinstance( frame, fitdecode.FitDataMessage ):
            if frame.name == 'record':
                records.append( frame )
            if frame.name == 'lap':
                laps.append( frame )
                
print( 'record: {} messages'.format( len( records) ) )
print( 'laps: {} messages'.format( len( laps) ) )

end = time.time()
print( "| python | {} | {} | {:.3f} seconds | [fitdecode](https://github.com/polyvertex/fitdecode) |".format( os.path.basename(sys.argv[0]), sys.argv[1], end-start ) )
