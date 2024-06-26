#ifndef BACKYARDBRAINS_FILERECORDER_H
#define BACKYARDBRAINS_FILERECORDER_H

#include "RecordingManager.h"
#include <fstream>
#include "WavTxtRecorder.h"
//#define USE_HDF 1
#ifdef USE_HDF
#include "HDFRecorder.h"
#endif


namespace BackyardBrains {

class RecordingManager;

class FileRecorder {
public:
	FileRecorder(RecordingManager &manager);
	~FileRecorder();
	bool start(const std::string &filename);
	void stop(const MetadataChunk *meta);

	static int parseMetadataStr(MetadataChunk *meta, const char *str, RecordingManager &manager);

	bool recording() const;
	const std::string &filename() const;

	static std::string eventTxtFilename(const std::string &filename);
	float recordTime() const;
	void advance();

	static void parseMarkerTextFile(std::list<std::pair<std::string, int64_t> > &markers, const std::string &filename, int sampleRate);
	int writeMarkerTextFile(const std::string &filename, const std::list<std::pair<std::string, int64_t> > &markers) const;
private:
	
 
#ifdef USE_HDF
    HDFRecorder * recorder;
#else
    WavTxtRecorder *recorder;
#endif
};

}

#endif
