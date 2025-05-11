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
- [fit-file-parser.js](https://github.com/jimmykane/fit-parser) a javascript library (*)
- [Official cpp SDK](https://developer.garmin.com/fit/example-projects/cpp/) is the official cpp sdk.
- [fit](https://github.com/tormoder/fit) is a go implementation (*)

(*) thanks to [karaul](https://github.com/karaul/fitplotter) for the javascript help and [tormoder](https://github.com/tormoder/fit) for the go contribution.


## Results

The benchmarking was done with two file corresponding to ConnectStats use. A fairly representative fit file of a 1h run (`sample.fit`). And an extreme case file of a 12h ultra marathon (`large.fit`). One should easily be able to adapt the test to the kind of files relevant for their use case.

The tests where run on a 2017 iMac. You should be able to run them for yourself by executing `make` in the root directory of the project or run the code from the xcodeproject included.

The fastest library ended up being the one combining c and swift [FitFileParser](https://github.com/roznet/FitFileParser). 
Interestingly, and a bit surprisingly to me, the php library [phpFITFileAnalysis.php](https://github.com/adriangibbons/php-fit-file-analysis) ended up very fast as well. 

Given the two fastest library are the one used in practice by [ConnectStats](https://github.com/roznet/connectstats) and [its server](https://github.com/roznet/connectstats_server), it won't be necessary to make any changes.

### Time reported inside the tool

| language   | command            | file       | time           | Library                                                                          |
|------------|--------------------|------------|----------------|----------------------------------------------------------------------------------|
| go         | fit                | sample.fit | 0.007 seconds  | [fit](https://github.com/tormoder/fit)                                           |
| swift/c    | fitparser .fast    | sample.fit | 0.037 seconds  | [FitFileParser](https://github.com/roznet/FitFileParser)                         |
| php        | fitanalysis.php    | sample.fit | 0.110 seconds  | [phpFITFileAnalysis.php](https://github.com/adriangibbons/php-fit-file-analysis) |
| swift/c    | fitparser .generic | sample.fit | 0.214 seconds  | [FitFileParser](https://github.com/roznet/FitFileParser)                         |
| swift      | fitprotocol        | sample.fit | 0.475 seconds  | [FitDataProtocol](https://github.com/FitnessKit/FitDataProtocol)                 |
| cpp        | fitsdkcpp          | sample.fit | 0.557 seconds  | [Official cpp SDK](https://developer.garmin.com/fit/example-projects/cpp/)       |
| objc/cpp   | fitsdkobjc         | sample.fit | 0.467 seconds  | [Official objc SDK](https://developer.garmin.com/fit/example-projects/objc/)     |
| python     | fitfitdecode.py    | sample.fit | 0.889 seconds  | [fitdecode](https://github.com/polyvertex/fitdecode)                             |
| javascript | fit-file-parser.js | sample.fit | 1.025 seconds  | [fit-file-parser.js](https://github.com/jimmykane/fit-parser)                    |
| python     | fitfitparse.py     | sample.fit | 1.121 seconds  | [python-fitparse](https://github.com/dtcooper/python-fitparse)                   |
| go         | fit                | large.fit  | 0.052 seconds  | [fit](https://github.com/tormoder/fit)                                           |
| swift/c    | fitparser .fast    | large.fit  | 0.475 seconds  | [FitFileParser](https://github.com/roznet/FitFileParser)                         |
| swift/c    | fitparser .generic | large.fit  | 1.475 seconds  | [FitFileParser](https://github.com/roznet/FitFileParser)                         |
| php        | fitanalysis.php    | large.fit  | 5.979 seconds  | [phpFITFileAnalysis.php](https://github.com/adriangibbons/php-fit-file-analysis) |
| swift      | fitprotocol        | large.fit  | 6.763 seconds  | [FitDataProtocol](https://github.com/FitnessKit/FitDataProtocol)                 |
| objc/cpp   | fitsdkobjc         | large.fit  | 9.412 seconds  | [Official objc SDK](https://developer.garmin.com/fit/example-projects/objc/)     |
| python     | fitfitdecode.py    | large.fit  | 9.414 seconds  | [fitdecode](https://github.com/polyvertex/fitdecode)                             |
| javascript | fit-file-parser.js | large.fit  | 10.505 seconds | [fit-file-parser.js](https://github.com/jimmykane/fit-parser)                    |
| cpp        | fitsdkcpp          | large.fit  | 11.147 seconds | [Official cpp SDK](https://developer.garmin.com/fit/example-projects/cpp/)       |
| python     | fitfitparse.py     | large.fit  | 11.420 seconds | [python-fitparse](https://github.com/dtcooper/python-fitparse)                   |


### Time accross architecture

Here is a comparison of running the parsing benchmark across a few architecture. The primary use case for the library being [ConnectStats](https://github.com/roznet/connectstats) on iPhone, so here the benchmarks is compared accross an intel Macbook pro 16'' 2019, Apple Silicon Macbook Air 2020 and iPhone 12 Pro. It's quite interesting that the iphone and the macbook air both beat the MacBook pro...

| cpu                  | language | command            | file       | time          |
|----------------------|----------|--------------------|------------|---------------|
| macbook pro intel i9 | swift/c  | fitparser .fast    | sample.fit | 0.034 seconds |
| macbook air M1       | swift/c  | fitparser .fast    | sample.fit | 0.022 seconds |
| iPhone 12 Pro        | swift/c  | fitparser .fast    | sample.fit | 0.024 seconds |
| macbook pro intel i9 | swift/c  | fitparser .generic | sample.fit | 0.174 seconds |
| macbook air M1       | swift/c  | fitparser .generic | sample.fit | 0.120 seconds |
| iPhone 12 Pro        | swift/c  | fitparser .generic | sample.fit | 0.127 seconds |
| macbook pro intel i9 | swift/c  | fitparser .fast    | large.fit  | 0.510 seconds |
| macbook air M1       | swift/c  | fitparser .fast    | large.fit  | 0.335 seconds |
| iPhone 12 Pro        | swift/c  | fitparser .fast    | large.fit  | 0.327 seconds |
| macbook pro intel i9 | swift/c  | fitparser .generic | large.fit  | 1.486 seconds |
| macbook air M1       | swift/c  | fitparser .generic | large.fit  | 1.042 seconds |
| iPhone 12 Pro        | swift/c  | fitparser .generic | large.fit  | 1.097 seconds |


## Install Instructions

### JavaScript Version

1. Navigate to the `javascript` directory:
   ```bash
   cd javascript
   ```
2. Install dependencies using npm:
   ```bash
   npm install
   ```
3. You can then run the benchmark script (from the project root):
   ```bash
   node javascript benchmark.js <yourfile.fit>
   ```

### Python Version

1. Create a Python virtual environment in the project root:
   ```bash
   python3 -m venv venv
   ```
2. Activate the virtual environment:
   - On macOS/Linux:
     ```bash
     source venv/bin/activate
     ```
3. Install the required Python packages:
   ```bash
   pip install -r requirements.txt
   ```
4. You can then run the Python scripts:
   ```bash
   python python/fitfitparse.py <yourfile.fit>
   python python/fitfitdecode.py <yourfile.fit>
   ```

_More setup instructions for other languages will be added as needed._

