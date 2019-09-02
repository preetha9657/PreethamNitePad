<?xml version="1.0" encoding="utf-8"?>
<resources xmlns:ns1="urn:oasis:names:tc:xliff:document:1.2">
    <attr format="reference" name="drawerArrowStyle"/>
    <attr format="dimension" name="height"/>
    <attr format="boolean" name="isLightTheme"/>
    <attr format="string" name="title"/>
    <bool name="abc_action_bar_embed_tabs">true</bool>
    <bool name="abc_allow_stacked_button_bar">false</bool>
    <bool name="abc_config_actionMenuItemAllCaps">true</bool>
    <color name="abc_input_method_navigation_guard">@android:color/black</color>
    <color name="abc_search_url_text_normal">#7fa87f</color>
    <color name="abc_search_url_text_pressed">@android:color/black</color>
    <color name="abc_search_url_text_selected">@android:color/black</color>
    <color name="accent_material_dark">@color/material_deep_teal_200</color>
    <color name="accent_material_light">@color/material_deep_teal_500</color>
    <color name="background_floating_material_dark">@color/material_grey_800</color>
    <color name="background_floating_material_light">@android:color/white</color>
    <color name="background_material_dark">@color/material_grey_850</color>
    <color name="background_material_light">@color/material_grey_50</color>
    <color name="bright_foreground_disabled_material_dark">#80ffffff</color>
    <color name="bright_foreground_disabled_material_light">#80000000</color>
    <color name="bright_foreground_inverse_material_dark">@color/bright_foreground_material_light</color>
    <color name="bright_foreground_inverse_material_light">@color/bright_foreground_material_dark</color>
    <color name="bright_foreground_material_dark">@android:color/white</color>
    <color name="bright_foreground_material_light">@android:color/black</color>
    <color name="button_material_dark">#ff5a595b</color>
    <color name="button_material_light">#ffd6d7d7</color>
    <color name="dim_foreground_disabled_material_dark">#80bebebe</color>
    <color name="dim_foreground_disabled_material_light">#80323232</color>
    <color name="dim_foreground_material_dark">#ffbebebe</color>
    <color name="dim_foreground_material_light">#ff323232</color>
    <color name="error_color_material_dark">#ff7043</color>
    <color name="error_color_material_light">#ff5722</color>
    <color name="foreground_material_dark">@android:color/white</color>
    <color name="foreground_material_light">@android:color/black</color>
    <color name="highlighted_text_material_dark">#6680cbc4</color>
    <color name="highlighted_text_material_light">#66009688</color>
    <color name="material_blue_grey_800">#ff37474f</color>
    <color name="material_blue_grey_900">#ff263238</color>
    <color name="material_blue_grey_950">#ff21272b</color>
    <color name="material_deep_teal_200">#ff80cbc4</color>
    <color name="material_deep_teal_500">#ff009688</color>
    <color name="material_grey_100">#fff5f5f5</color>
    <color name="material_grey_300">#ffe0e0e0</color>
    <color name="material_grey_50">#fffafafa</color>
    <color name="material_grey_600">#ff757575</color>
    <color name="material_grey_800">#ff424242</color>
    <color name="material_grey_850">#ff303030</color>
    <color name="material_grey_900">#ff212121</color>
    <color name="primary_dark_material_dark">@android:color/black</color>
    <color name="primary_dark_material_light">@color/material_grey_600</color>
    <color name="primary_material_dark">@color/material_grey_900</color>
    <color name="primary_material_light">@color/material_grey_100</color>
    <color name="primary_text_default_material_dark">#ffffffff</color>
    <color name="primary_text_default_material_light">#de000000</color>
    <color name="primary_text_disabled_material_dark">#4Dffffff</color>
    <color name="primary_text_disabled_material_light">#39000000</color>
    <color name="ripple_material_dark">#33ffffff</color>
    <color name="ripple_material_light">#1f000000</color>
    <color name="secondary_text_default_material_dark">#b3ffffff</color>
    <color name="secondary_text_default_material_light">#8a000000</color>
    <color name="secondary_text_disabled_material_dark">#36ffffff</color>
    <color name="secondary_text_disabled_material_light">#24000000</color>
    <color name="switch_thumb_disabled_material_dark">#ff616161</color>
    <color name="switch_thumb_disabled_material_light">#ffbdbdbd</color>
    <color name="switch_thumb_normal_material_dark">#ffbdbdbd</color>
    <color name="switch_thumb_normal_material_light">#fff1f1f1</color>
    <color name="tooltip_background_dark">#e6616161</color>
    <color name="tooltip_background_light">#e6FFFFFF</color>
    <declare-styleable name="ActionBar">
        <!-- The type of navigation to use. -->
        <attr name="navigationMode">
            <!-- Normal static title text -->
            <enum name="normal" value="0"/>
            <!-- The action bar will use a selection list for navigation. -->
            <enum name="listMode" value="1"/>
            <!-- The action bar will use a series of horizontal tabs for navigation. -->
            <enum name="tabMode" value="2"/>
        </attr>
        <!-- Options affecting how the action bar is displayed. -->
        <attr name="displayOptions">
            <flag name="none" value="0"/>
            <flag name="u