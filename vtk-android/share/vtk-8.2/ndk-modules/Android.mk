LOCAL_PATH := $(call my-dir)
_IMPORT_PREFIX := $(LOCAL_PATH)/../../..

include $(CLEAR_VARS)
LOCAL_MODULE := vtksys
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtksys-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
LOCAL_EXPORT_C_INCLUDES := ${_IMPORT_PREFIX}/include/vtk-8.2
LOCAL_EXPORT_LDLIBS := -ldl
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkCommonCore
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkCommonCore-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtksys
LOCAL_EXPORT_LDLIBS := -l-pthread -llog
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkCommonMath
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkCommonMath-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkCommonMisc
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkCommonMisc-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonMath vtksys
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkCommonSystem
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkCommonSystem-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtksys
LOCAL_EXPORT_LDLIBS := -l-pthread
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkCommonTransforms
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkCommonTransforms-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonMath
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkCommonDataModel
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkCommonDataModel-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonMath vtkCommonTransforms vtkCommonMisc vtkCommonSystem vtksys
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkCommonColor
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkCommonColor-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkCommonComputationalGeometry
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkCommonComputationalGeometry-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkCommonExecutionModel
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkCommonExecutionModel-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel vtkCommonMisc vtkCommonSystem
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkDICOMParser
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkDICOMParser-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkFiltersCore
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkFiltersCore-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel vtkCommonExecutionModel vtkCommonMisc vtkCommonMath vtkCommonSystem vtkCommonTransforms
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkFiltersGeneral
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkFiltersGeneral-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel vtkCommonExecutionModel vtkCommonMisc vtkFiltersCore vtkCommonComputationalGeometry vtkCommonMath vtkCommonSystem vtkCommonTransforms
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkImagingCore
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkImagingCore-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel vtkCommonExecutionModel vtkCommonMath vtkCommonTransforms
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkImagingFourier
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkImagingFourier-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonExecutionModel vtkImagingCore vtkCommonDataModel vtksys
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkFiltersStatistics
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkFiltersStatistics-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonExecutionModel vtkCommonDataModel vtkCommonMisc vtkImagingFourier
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkFiltersExtraction
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkFiltersExtraction-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonExecutionModel vtkFiltersGeneral vtkCommonCore vtkCommonDataModel vtkFiltersCore vtkFiltersStatistics
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkFiltersGeometry
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkFiltersGeometry-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel vtkCommonExecutionModel vtkFiltersCore
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkFiltersSources
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkFiltersSources-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonDataModel vtkCommonExecutionModel vtkCommonComputationalGeometry vtkCommonCore vtkCommonTransforms vtkFiltersCore vtkFiltersGeneral
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkFiltersModeling
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkFiltersModeling-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonExecutionModel vtkCommonMisc vtkFiltersGeneral vtkCommonCore vtkCommonDataModel vtkCommonTransforms vtkFiltersCore vtkFiltersSources
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkdoubleconversion
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkdoubleconversion-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_EXPORT_C_INCLUDES := ${_IMPORT_PREFIX}/include/vtk-8.2
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtklz4
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtklz4-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtklzma
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtklzma-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkzlib
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkzlib-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkIOCore
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkIOCore-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonExecutionModel vtkCommonDataModel vtkCommonMisc vtklz4 vtklzma vtksys vtkzlib vtkdoubleconversion
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkmetaio
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkmetaio-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
LOCAL_STATIC_LIBRARIES := vtkzlib
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkjpeg
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkjpeg-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkpng
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkpng-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkzlib
LOCAL_EXPORT_LDLIBS := -lm
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtktiff
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtktiff-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkjpeg vtkzlib
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkIOImage
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkIOImage-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonExecutionModel vtkCommonDataModel vtkCommonMath vtkCommonMisc vtkCommonSystem vtkCommonTransforms vtkDICOMParser vtkmetaio vtkjpeg vtkpng vtksys vtktiff vtkzlib
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkIOLegacy
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkIOLegacy-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel vtkCommonExecutionModel vtkIOCore vtkCommonMisc vtksys
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkIOGeometry
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkIOGeometry-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonDataModel vtkCommonExecutionModel vtkIOCore vtkIOLegacy vtkCommonCore vtkCommonMisc vtkCommonSystem vtkCommonTransforms vtkIOImage vtksys vtkzlib
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkexpat
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkexpat-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkIOXMLParser
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkIOXMLParser-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel vtkIOCore vtkexpat vtksys
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkIOXML
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkIOXML-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonExecutionModel vtkIOXMLParser vtkCommonDataModel vtkCommonMisc vtkCommonSystem vtkIOCore vtksys
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkInfovisCore
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkInfovisCore-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel vtkCommonExecutionModel vtkFiltersExtraction vtkFiltersGeneral
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtklibxml2
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtklibxml2-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkzlib
LOCAL_EXPORT_LDLIBS := -ldl -l-pthread -ldl -lm
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkIOInfovis
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkIOInfovis-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonExecutionModel vtkIOLegacy vtkIOXML vtkCommonDataModel vtkCommonMisc vtkIOCore vtkIOXMLParser vtkInfovisCore vtklibxml2 vtksys
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkIOPLY
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkIOPLY-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkIOCore vtkCommonDataModel vtkCommonMisc vtksys
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkImagingMath
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkImagingMath-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonExecutionModel vtkCommonCore vtkCommonDataModel
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkRenderingCore
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkRenderingCore-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel vtkCommonExecutionModel vtkCommonMath vtkFiltersCore vtkCommonColor vtkCommonComputationalGeometry vtkCommonSystem vtkCommonTransforms vtkFiltersGeneral vtkFiltersGeometry vtkFiltersSources vtksys
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkInteractionStyle
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkInteractionStyle-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonDataModel vtkRenderingCore vtkRenderingCore vtkCommonCore vtkCommonMath vtkCommonTransforms vtkFiltersExtraction vtkFiltersSources
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkParallelCore
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkParallelCore-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel vtkCommonSystem vtkIOLegacy vtksys
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkfreetype
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkfreetype-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkzlib
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkRenderingFreeType
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkRenderingFreeType-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonExecutionModel vtkRenderingCore vtkRenderingCore vtkfreetype vtkCommonDataModel vtkFiltersGeneral
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkglew
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkglew-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_DEFINITIONS GLEW_STATIC
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkRenderingOpenGL2
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkRenderingOpenGL2-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel vtkRenderingCore vtkRenderingCore vtkCommonExecutionModel vtkCommonMath vtkCommonSystem vtkCommonTransforms vtkglew vtksys
LOCAL_EXPORT_LDLIBS := /Users/fushixiang/sdk/android_sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/lib/aarch64-linux-android/24/libEGL.so -landroid
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkRenderingVolume
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkRenderingVolume-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonExecutionModel vtkRenderingCore vtkCommonDataModel vtkCommonMath vtkCommonMisc vtkCommonSystem vtkCommonTransforms vtkIOXML vtkImagingCore
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkRenderingVolumeOpenGL2
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkRenderingVolumeOpenGL2-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkCommonDataModel vtkImagingCore vtkImagingMath vtkRenderingCore vtkRenderingOpenGL2 vtkRenderingVolume vtkRenderingVolume vtkglew vtkCommonMath vtkCommonSystem vtkCommonTransforms vtkFiltersCore vtkFiltersGeneral vtkFiltersSources vtksys
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vtkTestingRendering
LOCAL_SRC_FILES := $(_IMPORT_PREFIX)/lib/libvtkTestingRendering-8.2.a
LOCAL_CPP_FEATURES := rtti exceptions
# INTERFACE_COMPILE_FEATURES cxx_nullptr;cxx_override
LOCAL_STATIC_LIBRARIES := vtkCommonCore vtkRenderingCore vtkCommonCore vtkCommonDataModel vtkCommonExecutionModel vtkCommonSystem vtkIOImage vtkImagingCore vtksys
LOCAL_HAS_CPP := true
include $(PREBUILT_STATIC_LIBRARY)

