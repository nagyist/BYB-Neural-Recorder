# Compiler settings
CXX = g++
CXXFLAGS = -g -Wall -std=gnu++11
INCLUDE_DIRS = \
	-I./support/SDL2/include/SDL2 \
	-I./support/SDL2Image/include/SDL2 \
	-I./support \
	-I./support/curl/include \
	-I./src \
	-I./src/libraries \
	-I./src/engine \
	-I./src/engine/firmware \
	-I./src/widgets \

# Library paths and flags
LIB_DIRS = \
	-L./support/SDL2/lib \
	-L./support/SDL2Image/lib \
	-L./C/msys64/mingw32/lib \
	-L./support
LIBS = \
	-lmingw32 \
	-lSDL2main \
	-lSDL2 \
	-lSDL2_image \
	-lstdc++ \
	-mwindows \
	-luser32 \
	-lgdi32 \
	-lwinmm \
	-lsetupapi \
	-ldxguid \
	-lopengl32 \
	-lglu32 \
	-lcomdlg32 \
	-lhid \
	-lhidapi \
	-lBSL430 \
	-lbass \
	-llibcurl

# Source files
SRCS = \
	./support/GLee.c \
	./src/main.cpp \
	./src/widgets/Size.h \
	./src/AnalysisAudioView.cpp \
	./src/AnalysisAudioView.h \
	./src/AnalysisPlots.cpp \
	./src/AnalysisPlots.h \
	./src/AnalysisTrainList.cpp \
	./src/AnalysisTrainList.h \
	./src/AnalysisView.cpp \
	./src/AnalysisView.h \
	./src/AudioView.cpp \
	./src/AudioView.h \
	./src/CalibrationWindow.cpp \
	./src/CalibrationWindow.h \
	./src/ColorDropDownList.cpp \
	./src/ColorDropDownList.h \
	./src/ConfigView.cpp \
	./src/ConfigView.h \
	./src/DropDownList.cpp \
	./src/DropDownList.h \
	./src/FFTView.cpp \
	./src/FFTView.h \
	./src/FirmwareUpdateView.cpp \
	./src/FirmwareUpdateView.h \
	./src/Game.cpp \
	./src/Game.h \
	./src/Log.cpp \
	./src/Log.h \
	./src/MainView.cpp \
	./src/MainView.h \
	./src/Paths.h \
	./src/RecordingBar.cpp \
	./src/RecordingBar.h \
	./src/ThresholdPanel.cpp \
	./src/ThresholdPanel.h \
	./src/constants.h \
	./src/defaults/DefaultConfig.cpp \
	./src/defaults/DefaultConfig.h \
	./src/engine/AnalysisManager.cpp \
	./src/engine/AnalysisManager.h \
	./src/engine/ArduinoSerial.cpp \
	./src/engine/ArduinoSerial.h \
	./src/engine/AudioInputConfig.cpp \
	./src/engine/AudioInputConfig.h \
	./src/engine/BASSErrors.cpp \
	./src/engine/BASSErrors.h \
	./src/engine/EkgBackend.cpp \
	./src/engine/EkgBackend.h \
	./src/engine/FFTBackend.cpp \
	./src/engine/FFTBackend.h \
	./src/engine/FileReadUtil.cpp \
	./src/engine/FileReadUtil.h \
	./src/engine/FileRecorder.cpp \
	./src/engine/FileRecorder.h \
	./src/engine/WavTxtRecorder.cpp \
	./src/engine/WavTxtRecorder.h \
	./src/engine/FilterBase.cpp \
	./src/engine/FilterBase.h \
	./src/engine/HIDUsbManager.cpp \
	./src/engine/HIDUsbManager.h \
	./src/engine/HighPassFilter.cpp \
	./src/engine/HighPassFilter.h \
	./src/engine/LowPassFilter.cpp \
	./src/engine/LowPassFilter.h \
	./src/engine/NotchFilter.cpp \
	./src/engine/NotchFilter.h \
	./src/engine/Player.cpp \
	./src/engine/Player.h \
	./src/engine/RecordingManager.cpp \
	./src/engine/RecordingManager.h \
	./src/engine/SampleBuffer.h \
	./src/engine/SpikeAnalysis.cpp \
	./src/engine/SpikeAnalysis.h \
	./src/engine/SpikeSorter.cpp \
	./src/engine/SpikeSorter.h \
	./src/engine/firmware/BSLFirmwareUpdater.cpp \
	./src/engine/firmware/BSLFirmwareUpdater.h \
	./src/engine/firmware/BYBFirmwareVO.cpp \
	./src/engine/firmware/BYBFirmwareVO.h \
	./src/engine/firmware/FirmwareUpdater.cpp \
	./src/engine/firmware/FirmwareUpdater.h \
	./src/engine/firmware/BYBBootloaderController.h \
	./src/engine/firmware/BYBBootloaderController.cpp \
	./src/libraries/tinyxml2.cpp \
	./src/libraries/tinyxml2.h \
	./src/native/PathsWin.cpp \
	./src/native/SerialPortsScan.h \
	./src/native/SerialPortsScanWin.cpp \
	./src/widgets/Application.cpp \
	./src/widgets/Application.h \
	./src/widgets/BitmapFontGL.cpp \
	./src/widgets/BitmapFontGL.h \
	./src/widgets/BoxLayout.cpp \
	./src/widgets/BoxLayout.h \
	./src/widgets/Color.h \
	./src/widgets/DropDownList.cpp \
	./src/widgets/DropDownList.h \
	./src/widgets/ErrorBox.cpp \
	./src/widgets/ErrorBox.h \
	./src/widgets/Event.h \
	./src/widgets/FileDialog.h \
	./src/widgets/native/FileDialogWin.cpp \
	./src/widgets/HorizontalColorPicker.cpp \
	./src/widgets/HorizontalColorPicker.h \
	./src/widgets/HorizontalNumberPicker.cpp \
	./src/widgets/HorizontalNumberPicker.h \
	./src/widgets/Label.cpp \
	./src/widgets/Label.h \
	./src/widgets/LayoutItem.cpp \
	./src/widgets/LayoutItem.h \
	./src/widgets/LoadTexture.cpp \
	./src/widgets/LoadTexture.h \
	./src/widgets/Painter.cpp \
	./src/widgets/Painter.h \
	./src/widgets/Plot.cpp \
	./src/widgets/Plot.h \
	./src/widgets/Point.h \
	./src/widgets/PushButton.cpp \
	./src/widgets/PushButton.h \
	./src/widgets/RangeSelector.cpp \
	./src/widgets/RangeSelector.h \
	./src/widgets/Rect.h \
	./src/widgets/ScrollBar.cpp \
	./src/widgets/ScrollBar.h \
	./src/widgets/SizePolicy.h \
	./src/widgets/SwitchLayout.cpp \
	./src/widgets/SwitchLayout.h \
	./src/widgets/TabBar.cpp \
	./src/widgets/TabBar.h \
	./src/widgets/TextInput.cpp \
	./src/widgets/TextInput.h \
	./src/widgets/TextureGL.cpp \
	./src/widgets/TextureGL.h \
	./src/widgets/ToolTip.cpp \
	./src/widgets/ToolTip.h \
	./src/widgets/TouchDropDownList.cpp \
	./src/widgets/TouchDropDownList.h \
	./src/widgets/Widget.cpp \
	./src/widgets/Widget.h \
	./src/widgets/global.h \
	./support/BSL430_dll.h \
	./support/BSL_Definitions.h \
	./support/CRC.cpp \
	./support/CRC.h \
	./support/bass.h \
	./support/hidapi.h \
	./support/mingw.thread.h \
	./support/sigslot.h

# Object files
OBJS = $(SRCS:.cpp=.o)

# Target executable
TARGET = ./win/build/SpikeRecorder.exe

# Build rule
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE_DIRS) -o $@ $(OBJS) $(LIB_DIRS) $(LIBS)

# Compile rule
%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDE_DIRS) -c $< -o $@

# Clean rule
clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: clean