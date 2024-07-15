#include <media/IMediaSource.h>
#include <media/stagefright/foundation/AMessage.h>
#include <utils/Errors.h>

using namespace android;

extern "C" {
    status_t _ZN7android11MPEG4Writer5resetEbb(bool stopSource, bool waitForAnyPreviousCallToComplete);

    status_t _ZN7android11MPEG4Writer5resetEb(bool stopSource) {
        return _ZN7android11MPEG4Writer5resetEbb(stopSource, false);
    }

    void _ZN7android12ImageDecoderC2ERKNS_7AStringERKNS_2spINS_8MetaDataEEERKNS4_INS_12IMediaSourceEEE(void *thisptr, const AString &componentName, const sp<MetaData> &trackMeta, const sp<IMediaSource> &source) {
        // no-op, the explicit constructor was rewritten
    }

    void _ZN7android12ImageDecoderC1ERKNS_7AStringERKNS_2spINS_8MetaDataEEERKNS4_INS_12IMediaSourceEEE(void *thisptr, const AString &componentName, const sp<MetaData> &trackMeta, const sp<IMediaSource> &source) {
        // no-op, the explicit constructor was rewritten
    }
}
