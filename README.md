## Benchmarking of a few Fit file parsing libraries

[ConnectStats](https://github.com/roznet/connectstats) is an iOS application that displays and analyse workout saved in Garmin or Strava. Since it started using the new Garmin Health API, the core input files where in the [FIT Format or Flexible and Interoperable Data Transfer](https://developer.garmin.com/fit/overview/).

Both [ConnectStats](https://github.com/roznet/connectstats) and its [backend server](https://github.com/roznet/connectstats_server) need to process large amount of diverse fit files and need to extract the information quite generically. The initial implementation I used derived from the cpp sdk was actually quite slow and the experience on the app was noticeably bad for users while a file was processed.

[ConnectStats](https://github.com/roznet/connectstats) now uses a [swift library](https://github.com/roznet/FitFileParser) that does the core parsing in c using the official c sdk and that was much faster, and the user experience and performance now on the app is very acceptable.

The [ConnectStats backend server](https://github.com/roznet/connectstats_server) also need to process fit files and, given the server is implemented in php, it uses [phpFITFileAnalysis.php](https://github.com/adriangibbons/php-fit-file-analysis). 

As the swift library used by the [FitFileParser](https://github.com/roznet/FitFileParser) was moved to a Swift Package, I came accross another swift library, and it also opened up the possibility to use the swift library on linux for the server, should that be faster than the php implementation. 

This lead to a quick benchmarking of the different libraries. We'll review swift/cpp/php and python as I used python quite a bit and if fast enough could be used on the server

## Fit Parsing Libraries compared

- [FitFileParser](https://github.com/roznet/FitFileParser) is a swift/c library based on the [official c sdk](https://developer.garmin.com/fit/example-projects/c/)
- [FitDataProtocol](https://github.com/FitnessKit/FitDataProtocol) is swift library
- [phpFITFileAnalysis.php](https://github.com/adriangibbons/php-fit-file-analysis) is a php library used by the [ConnectStats server](https://github.com/roznet/connectstats_server)
- [python-fitparse](https://github.com/dtcooper/python-fitparse) is a python library
- [fitdecode](https://github.com/polyvertex/fitdecode) is a python library
- [Official cpp SDK](https://developer.garmin.com/fit/example-projects/cpp/) is the official cpp sdk.

## Results

The benchmarking was done with two file corresponding to ConnectStats use. A fairly representative fit file of a 1h run (`sample.fit`). And an extreme case file of a 12h ultra marathon (`large.fit`). One should easily be able to adapt the test to the kind of files relevant for their use case.

The tests where run on a 2017 iMac. You should be able to run them for yourself by executing `make` in the root directory of the project or run the code from the xcodeproject included.

The fastest library ended up being the one combining c and swift [FitFileParser](https://github.com/roznet/FitFileParser). 
Interestingly, and a bit surprisingly to me, the php library [phpFITFileAnalysis.php](https://github.com/adriangibbons/php-fit-file-analysis) ended up very fast as well. 

Given the two fastest library are the one used in practice by [ConnectStats](https://github.com/roznet/connectstats) and [its server](https://github.com/roznet/connectstats_server), it won't be necessary to make any changes.

### Time reported inside the tool

| language | command         | file       | time           | Library                                                                          |
|----------|-----------------|------------|----------------|----------------------------------------------------------------------------------|
| swift/c  | fitparser       | sample.fit | 0.034 seconds  | [FitFileParser](https://github.com/roznet/FitFileParser)                         |
| php      | fitanalysis.php | sample.fit | 0.100 seconds  | [phpFITFileAnalysis.php](https://github.com/adriangibbons/php-fit-file-analysis) |
| swift    | fitprotocol     | sample.fit | 0.535 seconds  | [FitDataProtocol](https://github.com/FitnessKit/FitDataProtocol)                 |
| cpp      | fitsdkcpp       | sample.fit | 0.871 seconds  | [Official cpp SDK](https://developer.garmin.com/fit/example-projects/cpp/)       |
| python   | fitfitdecode.py | sample.fit | 1.081 seconds  | [fitdecode](https://github.com/polyvertex/fitdecode)                              |
| python   | fitfitparse.py  | sample.fit | 1.298 seconds  | [python-fitparse](https://github.com/dtcooper/python-fitparse)                   |
| swift/c  | fitparser       | large.fit  | 0.511 seconds  | [FitFileParser](https://github.com/roznet/FitFileParser)                         |
| php      | fitanalysis.php | large.fit  | 5.401 seconds  | [phpFITFileAnalysis.php](https://github.com/adriangibbons/php-fit-file-analysis) |
| swift    | fitprotocol     | large.fit  | 7.645 seconds  | [FitDataProtocol](https://github.com/FitnessKit/FitDataProtocol)                 |
| python   | fitfitdecode.py | large.fit  | 11.308 seconds | [fitdecode](https://github.com/polyvertex/fitdecode)                              |
| python   | fitfitparse.py  | large.fit  | 13.886 seconds | [python-fitparse](https://github.com/dtcooper/python-fitparse)                   |
| cpp      | fitsdkcpp       | large.fit  | 18.503 seconds | [Official cpp SDK](https://developer.garmin.com/fit/example-projects/cpp/)       |


