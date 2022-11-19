# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.resampler.quality=7 \
    audio.deep_buffer.media=1 \
    af.fast_downmix=1 \
    media.aac_51_output_enabled=true \
    ro.af.client_heap_size_kbyte=10240

# Input
PRODUCT_PROPERTY_OVERRIDES += \
    ro.input.noresample=1
