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

# PBC
ifeq ($(TARGET_TEGRA_PBC),pbc2)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.pbc.enabled=1 \
    persist.sys.pbc.pbat.cap=30000 \
    persist.sys.pbc.ibat.cap=4000 \
    persist.sys.pbc.inf.game.mode=1 \
    pbc.inf.socthres=20 \
    pbc.pbat.slope=1.5 \
    pbc.pbat.intercept=-7 \
    pbc.log.on=0 \
    pbc.hist.size=5 \
    pbc.step.period=700 \
    pbc.polling.period=100 \
    pbc.throttle.depth=0 \
    pbc.hyst=5 \
    persist.sys.pbc.psys.cap=29999 \
    pbc.over.cfboost=true \
    pbc.cfboost.floor=800000 \
    pbc.gfboost.floor=300000
endif
