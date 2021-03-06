# Copyright 2016 The Android Open Source Project
# Copyright 2016 TeamHacklG
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Lcd Density
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density="120"
# Enforce Phone Mode view
PRODUCT_PROPERTY_OVERRIDES += ro.screen.layout="normal"
# RIL
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.ril.v3="qcomdsds,signalstrength"
