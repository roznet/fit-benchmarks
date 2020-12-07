////////////////////////////////////////////////////////////////////////////////
// The following FIT Protocol software provided may be used with FIT protocol
// devices only and remains the copyrighted property of Garmin Canada Inc.
// The software is being provided on an "as-is" basis and as an accommodation,
// and therefore all warranties, representations, or guarantees of any kind
// (whether express, implied or statutory) including, without limitation,
// warranties of merchantability, non-infringement, or fitness for a particular
// purpose, are specifically disclaimed.
//
// Copyright 2008 Garmin Canada Inc.
////////////////////////////////////////////////////////////////////////////////

#include <fstream>
#include <iostream>
#include <vector>
#include "fit_decode.hpp"
#include "fit_mesg_broadcaster.hpp"
#include "fit_session_mesg_listener.hpp"
#include "fit_lap_mesg_listener.hpp"
#include "fit_record_mesg_listener.hpp"
#include "fit_developer_field_description.hpp"
#include <filesystem>
class Listener
    : public fit::RecordMesgListener
    , public fit::SessionMesgListener
    , public fit::LapMesgListener
    , public fit::MesgListener
    , public fit::DeveloperFieldDescriptionListener
{
public :
    std::vector<fit::RecordMesg> records;
    std::vector<fit::LapMesg> laps;
    std::vector<fit::SessionMesg> sessions;

    int total_count = 0;
    
    void OnMesg(fit::Mesg& mesg) override
    {
        this->total_count++;
    }

   void OnMesg(fit::RecordMesg& mesg) override
   {
       this->records.push_back(mesg);
   }

    
   void OnMesg(fit::LapMesg& mesg) override
   {
       this->laps.push_back(mesg);
   }

   void OnMesg(fit::SessionMesg& mesg) override
   {
       this->sessions.push_back(mesg);
   }
    void OnDeveloperFieldDescription( const fit::DeveloperFieldDescription& desc ) override
    {
    }

};

int main(int argc, char* argv[])
{
   fit::Decode decode;
   fit::MesgBroadcaster mesgBroadcaster;
   Listener listener;
   std::fstream file;

    clock_t begin = clock();
    
   if (argc != 2)
   {
      printf("Usage: fitsdkcpp <filename>\n");
      return -1;
   }

   file.open(argv[1], std::ios::in | std::ios::binary);

   if (!file.is_open())
   {
      printf("Error opening file %s\n", argv[1]);
      return -1;
   }

   if (!decode.CheckIntegrity(file))
   {
      printf("FIT file integrity failed.\n");
      return -1;
   }

   mesgBroadcaster.AddListener((fit::MesgListener &)listener);
    mesgBroadcaster.AddListener((fit::LapMesgListener &)listener);
    mesgBroadcaster.AddListener((fit::RecordMesgListener &)listener);
    mesgBroadcaster.AddListener((fit::SessionMesgListener &)listener);

   try
   {
      decode.Read(&file, &mesgBroadcaster, &mesgBroadcaster, &listener);
   }
   catch (const fit::RuntimeException& e)
   {
      printf("Exception decoding file: %s\n", e.what());
      return -1;
   }
    
    clock_t end = clock();
    double elapsed_secs = double( end-begin)/CLOCKS_PER_SEC;
    auto filepath = std::__fs::filesystem::path( argv[1] );
    printf( "records: %d messages\n", (int)listener.records.size());
    printf( "laps: %d messages\n", (int)listener.laps.size());
    printf( "time: fitsdkcpp %s %f seconds\n", filepath.filename().c_str(), elapsed_secs);
   return 0;
}

