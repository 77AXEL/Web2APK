import os

if os.getenv("JAVA_HOME"):
    JAVA_HOME = True
else:
    print("No JAVA installation found !")
    JAVA_HOME = False

if os.getenv("ANDROID_HOME"):
    ANDROID_HOME = True
else:
    print("No Android SDK installation found !")
    ANDROID_HOME = False

if JAVA_HOME and ANDROID_HOME:
    import subprocess
    import zipfile
    import shutil
    import numpy
    import time
    import argparse
    import colorama

    colorama.init()
    parser = argparse.ArgumentParser()
    parser.add_argument('-zip', type=str, help='Your front-end web project zip file')
    parser.add_argument('-icon', type=str, help='Your app icon')
    parser.add_argument('-name', type=str, help='Your app name')

    args = parser.parse_args()
    args_test = 0
    zip_file_path = args.zip
    if zip_file_path:
        args_test += 1
        ic_launcher_path = args.icon
        if ic_launcher_path:
            args_test += 1
            apk_name = args.name
            if apk_name:
                args_test += 1
            else:
                print(colorama.Fore.RED + "Please add the APK name !")
        else:
            print(colorama.Fore.RED + "Please provide the APK icon path !")
    else:
        print(colorama.Fore.RED + "Please provide your zip file path !")
    
    if args_test == 3:
        print("Compiling :")
        Strings = f"""<?xml version="1.0" encoding="utf-8"?>
        <resources>
            <string name="abc_action_bar_home_description">Navigate home</string>
            <string name="abc_action_bar_up_description">Navigate up</string>
            <string name="abc_action_menu_overflow_description">More options</string>
            <string name="abc_action_mode_done">Done</string>
            <string name="abc_activity_chooser_view_see_all">See all</string>
            <string name="abc_activitychooserview_choose_application">Choose an app</string>
            <string name="abc_capital_off">OFF</string>
            <string name="abc_capital_on">ON</string>
            <string name="abc_menu_alt_shortcut_label">Alt+</string>
            <string name="abc_menu_ctrl_shortcut_label">Ctrl+</string>
            <string name="abc_menu_delete_shortcut_label">delete</string>
            <string name="abc_menu_enter_shortcut_label">enter</string>
            <string name="abc_menu_function_shortcut_label">Function+</string>
            <string name="abc_menu_meta_shortcut_label">Meta+</string>
            <string name="abc_menu_shift_shortcut_label">Shift+</string>
            <string name="abc_menu_space_shortcut_label">space</string>
            <string name="abc_menu_sym_shortcut_label">Sym+</string>
            <string name="abc_prepend_shortcut_label">Menu+</string>
            <string name="abc_search_hint">Search…</string>
            <string name="abc_searchview_description_clear">Clear query</string>
            <string name="abc_searchview_description_query">Search query</string>
            <string name="abc_searchview_description_search">Search</string>
            <string name="abc_searchview_description_submit">Submit query</string>
            <string name="abc_searchview_description_voice">Voice search</string>
            <string name="abc_shareactionprovider_share_with">Share with</string>
            <string name="abc_shareactionprovider_share_with_application">Share with %s</string>
            <string name="abc_toolbar_collapse_description">Collapse</string>
            <string name="androidx_startup">androidx.startup</string>
            <string name="app_name">{apk_name}</string>
            <string name="appbar_scrolling_view_behavior">com.google.android.material.appbar.AppBarLayout$ScrollingViewBehavior</string>
            <string name="bottom_sheet_behavior">com.google.android.material.bottomsheet.BottomSheetBehavior</string>
            <string name="bottomsheet_action_collapse">Collapse the bottom sheet</string>
            <string name="bottomsheet_action_expand">Expand the bottom sheet</string>
            <string name="bottomsheet_action_expand_halfway">Expand halfway</string>
            <string name="bottomsheet_drag_handle_clicked">Drag handle double-tapped</string>
            <string name="bottomsheet_drag_handle_content_description">Drag handle</string>
            <string name="call_notification_answer_action">Answer</string>
            <string name="call_notification_answer_video_action">Video</string>
            <string name="call_notification_decline_action">Decline</string>
            <string name="call_notification_hang_up_action">Hang Up</string>
            <string name="call_notification_incoming_text">Incoming call</string>
            <string name="call_notification_ongoing_text">Ongoing call</string>
            <string name="call_notification_screening_text">Screening an incoming call</string>
            <string name="character_counter_content_description">Characters entered %1$d of %2$d</string>
            <string name="character_counter_overflowed_content_description">Character limit exceeded %1$d of %2$d</string>
            <string name="character_counter_pattern">%1$d/%2$d</string>
            <string name="clear_text_end_icon_content_description">Clear text</string>
            <string name="error_a11y_label">Error: invalid</string>
            <string name="error_icon_content_description">Error</string>
            <string name="exposed_dropdown_menu_content_description">Show dropdown menu</string>
            <string name="fab_transformation_scrim_behavior">com.google.android.material.transformation.FabTransformationScrimBehavior</string>
            <string name="fab_transformation_sheet_behavior">com.google.android.material.transformation.FabTransformationSheetBehavior</string>
            <string name="hide_bottom_view_on_scroll_behavior">com.google.android.material.behavior.HideBottomViewOnScrollBehavior</string>
            <string name="icon_content_description">Dialog Icon</string>
            <string name="item_view_role_description">Tab</string>
            <string name="m3_exceed_max_badge_text_suffix">%1$s%2$s</string>
            <string name="m3_ref_typeface_brand_medium">sans-serif-medium</string>
            <string name="m3_ref_typeface_brand_regular">sans-serif</string>
            <string name="m3_ref_typeface_plain_medium">sans-serif-medium</string>
            <string name="m3_ref_typeface_plain_regular">sans-serif</string>
            <string name="m3_sys_motion_easing_emphasized">path(M 0,0 C 0.05, 0, 0.133333, 0.06, 0.166666, 0.4 C 0.208333, 0.82, 0.25, 1, 1, 1)</string>
            <string name="m3_sys_motion_easing_emphasized_accelerate">cubic-bezier(0.3, 0, 0.8, 0.2)</string>
            <string name="m3_sys_motion_easing_emphasized_decelerate">cubic-bezier(0.1, 0.7, 0.1, 1)</string>
            <string name="m3_sys_motion_easing_emphasized_path_data">M 0,0 C 0.05, 0, 0.133333, 0.06, 0.166666, 0.4 C 0.208333, 0.82, 0.25, 1, 1, 1</string>
            <string name="m3_sys_motion_easing_legacy">cubic-bezier(0.4, 0, 0.2, 1)</string>
            <string name="m3_sys_motion_easing_legacy_accelerate">cubic-bezier(0.4, 0, 1, 1)</string>
            <string name="m3_sys_motion_easing_legacy_decelerate">cubic-bezier(0, 0, 0.2, 1)</string>
            <string name="m3_sys_motion_easing_linear">cubic-bezier(0, 0, 1, 1)</string>
            <string name="m3_sys_motion_easing_standard">cubic-bezier(0.2, 0, 0, 1)</string>
            <string name="m3_sys_motion_easing_standard_accelerate">cubic-bezier(0.3, 0, 1, 1)</string>
            <string name="m3_sys_motion_easing_standard_decelerate">cubic-bezier(0, 0, 0, 1)</string>
            <string name="material_clock_display_divider">:</string>
            <string name="material_clock_toggle_content_description">Select AM or PM</string>
            <string name="material_hour_24h_suffix">%1$s hours</string>
            <string name="material_hour_selection">Select hour</string>
            <string name="material_hour_suffix">"%1$s o'clock"</string>
            <string name="material_minute_selection">Select minutes</string>
            <string name="material_minute_suffix">%1$s minutes</string>
            <string name="material_motion_easing_accelerated">cubic-bezier(0.4, 0.0, 1.0, 1.0)</string>
            <string name="material_motion_easing_decelerated">cubic-bezier(0.0, 0.0, 0.2, 1.0)</string>
            <string name="material_motion_easing_emphasized">path(M 0,0 C 0.05, 0, 0.133333, 0.06, 0.166666, 0.4 C 0.208333, 0.82, 0.25, 1, 1, 1)</string>
            <string name="material_motion_easing_linear">cubic-bezier(0.0, 0.0, 1.0, 1.0)</string>
            <string name="material_motion_easing_standard">cubic-bezier(0.4, 0.0, 0.2, 1.0)</string>
            <string name="material_slider_range_end">Range end</string>
            <string name="material_slider_range_start">Range start</string>
            <string name="material_slider_value">Value</string>
            <string name="material_timepicker_am">AM</string>
            <string name="material_timepicker_clock_mode_description">Switch to clock mode for the time input.</string>
            <string name="material_timepicker_hour">Hour</string>
            <string name="material_timepicker_minute">Minute</string>
            <string name="material_timepicker_pm">PM</string>
            <string name="material_timepicker_select_time">Select time</string>
            <string name="material_timepicker_text_input_mode_description">Switch to text input mode for the time input.</string>
            <string name="mtrl_badge_numberless_content_description">New notification</string>
            <string name="mtrl_checkbox_button_icon_path_checked">M14,18.2 11.4,15.6 10,17 14,21 22,13 20.6,11.6z</string>
            <string name="mtrl_checkbox_button_icon_path_group_name">icon</string>
            <string name="mtrl_checkbox_button_icon_path_indeterminate">M13.4,15 11,15 11,17 13.4,17 21,17 21,15z</string>
            <string name="mtrl_checkbox_button_icon_path_name">icon path</string>
            <string name="mtrl_checkbox_button_path_checked">M23,7H9C7.9,7,7,7.9,7,9v14c0,1.1,0.9,2,2,2h14c1.1,0,2-0.9,2-2V9C25,7.9,24.1,7,23,7z</string>
            <string name="mtrl_checkbox_button_path_group_name">button</string>
            <string name="mtrl_checkbox_button_path_name">button path</string>
            <string name="mtrl_checkbox_button_path_unchecked">M23,7H9C7.9,7,7,7.9,7,9v14c0,1.1,0.9,2,2,2h14c1.1,0,2-0.9,2-2V9C25,7.9,24.1,7,23,7z M23,23H9V9h14V23z</string>
            <string name="mtrl_checkbox_state_description_checked">Checked</string>
            <string name="mtrl_checkbox_state_description_indeterminate">Partially checked</string>
            <string name="mtrl_checkbox_state_description_unchecked">Not checked</string>
            <string name="mtrl_chip_close_icon_content_description">Remove %1$s</string>
            <string name="mtrl_exceed_max_badge_number_content_description">More than %1$d new notifications</string>
            <string name="mtrl_exceed_max_badge_number_suffix">%1$d%2$s</string>
            <string name="mtrl_picker_a11y_next_month">Change to next month</string>
            <string name="mtrl_picker_a11y_prev_month">Change to previous month</string>
            <string name="mtrl_picker_announce_current_range_selection">Start date selection: %1$s – End date selection: %2$s</string>
            <string name="mtrl_picker_announce_current_selection">Current selection: %1$s</string>
            <string name="mtrl_picker_announce_current_selection_none">none</string>
            <string name="mtrl_picker_cancel">Cancel</string>
            <string name="mtrl_picker_confirm">OK</string>
            <string name="mtrl_picker_date_header_selected">%1$s</string>
            <string name="mtrl_picker_date_header_title">Select Date</string>
            <string name="mtrl_picker_date_header_unselected">Selected date</string>
            <string name="mtrl_picker_day_of_week_column_header">%1$s</string>
            <string name="mtrl_picker_end_date_description">End date %1$s</string>
            <string name="mtrl_picker_invalid_format">Invalid format.</string>
            <string name="mtrl_picker_invalid_format_example">Example: %1$s</string>
            <string name="mtrl_picker_invalid_format_use">Use: %1$s</string>
            <string name="mtrl_picker_invalid_range">Invalid range.</string>
            <string name="mtrl_picker_navigate_to_current_year_description">Navigate to current year %1$d</string>
            <string name="mtrl_picker_navigate_to_year_description">Navigate to year %1$d</string>
            <string name="mtrl_picker_out_of_range">Out of range: %1$s</string>
            <string name="mtrl_picker_range_header_only_end_selected">Start date – %1$s</string>
            <string name="mtrl_picker_range_header_only_start_selected">%1$s – End date</string>
            <string name="mtrl_picker_range_header_selected">%1$s – %2$s</string>
            <string name="mtrl_picker_range_header_title">Select Range</string>
            <string name="mtrl_picker_range_header_unselected">Start date – End date</string>
            <string name="mtrl_picker_save">Save</string>
            <string name="mtrl_picker_start_date_description">Start date %1$s</string>
            <string name="mtrl_picker_text_input_date_hint">Date</string>
            <string name="mtrl_picker_text_input_date_range_end_hint">End date</string>
            <string name="mtrl_picker_text_input_date_range_start_hint">Start date</string>
            <string name="mtrl_picker_text_input_day_abbr">d</string>
            <string name="mtrl_picker_text_input_month_abbr">m</string>
            <string name="mtrl_picker_text_input_year_abbr">y</string>
            <string name="mtrl_picker_today_description">Today %1$s</string>
            <string name="mtrl_picker_toggle_to_calendar_input_mode">Switch to calendar input mode</string>
            <string name="mtrl_picker_toggle_to_day_selection">Tap to switch to Calendar view</string>
            <string name="mtrl_picker_toggle_to_text_input_mode">Switch to text input mode</string>
            <string name="mtrl_picker_toggle_to_year_selection">Tap to switch to year view</string>
            <string name="mtrl_switch_thumb_group_name">circle_group</string>
            <string name="mtrl_switch_thumb_path_checked">M4,16 A12,12 0 0,1 16,4 H16 A12,12 0 0,1 16,28 H16 A12,12 0 0,1 4,16</string>
            <string name="mtrl_switch_thumb_path_morphing">M0,16 A11,11 0 0,1 11,5 H21 A11,11 0 0,1 21,27 H11 A11,11 0 0,1 0,16</string>
            <string name="mtrl_switch_thumb_path_name">circle</string>
            <string name="mtrl_switch_thumb_path_pressed">M2,16 A14,14 0 0,1 16,2 H16 A14,14 0 0,1 16,30 H16 A14,14 0 0,1 2,16</string>
            <string name="mtrl_switch_thumb_path_unchecked">M8,16 A8,8 0 0,1 16,8 H16 A8,8 0 0,1 16,24 H16 A8,8 0 0,1 8,16</string>
            <string name="mtrl_switch_track_decoration_path">M1,16 A15,15 0 0,1 16,1 H36 A15,15 0 0,1 36,31 H16 A15,15 0 0,1 1,16</string>
            <string name="mtrl_switch_track_path">M0,16 A16,16 0 0,1 16,0 H36 A16,16 0 0,1 36,32 H16 A16,16 0 0,1 0,16</string>
            <string name="mtrl_timepicker_cancel">Cancel</string>
            <string name="mtrl_timepicker_confirm">OK</string>
            <string name="password_toggle_content_description">Show password</string>
            <string name="path_password_eye">M12,4.5C7,4.5 2.73,7.61 1,12c1.73,4.39 6,7.5 11,7.5s9.27,-3.11 11,-7.5c-1.73,-4.39 -6,-7.5 -11,-7.5zM12,17c-2.76,0 -5,-2.24 -5,-5s2.24,-5 5,-5 5,2.24 5,5 -2.24,5 -5,5zM12,9c-1.66,0 -3,1.34 -3,3s1.34,3 3,3 3,-1.34 3,-3 -1.34,-3 -3,-3z</string>
            <string name="path_password_eye_mask_strike_through">M2,4.27 L19.73,22 L22.27,19.46 L4.54,1.73 L4.54,1 L23,1 L23,23 L1,23 L1,4.27 Z</string>
            <string name="path_password_eye_mask_visible">M2,4.27 L2,4.27 L4.54,1.73 L4.54,1.73 L4.54,1 L23,1 L23,23 L1,23 L1,4.27 Z</string>
            <string name="path_password_strike_through">M3.27,4.27 L19.74,20.74</string>
            <string name="search_menu_title">Search</string>
            <string name="searchbar_scrolling_view_behavior">com.google.android.material.search.SearchBar$ScrollingViewBehavior</string>
            <string name="searchview_clear_text_content_description">Clear text</string>
            <string name="searchview_navigation_content_description">Back</string>
            <string name="side_sheet_accessibility_pane_title">Side Sheet</string>
            <string name="side_sheet_behavior">com.google.android.material.sidesheet.SideSheetBehavior</string>
            <string name="status_bar_notification_info_overflow">999+</string>
        </resources>
        """

        def unziper(zip_file_path):
            print(f"\r  {colorama.Fore.BLUE}Unziping ...", end="")
            try:
                output_path = "android/assets"

                with zipfile.ZipFile(zip_file_path, 'r') as zip_ref:
                    zip_ref.extractall(output_path)
                
                print(f"\r  {colorama.Fore.LIGHTGREEN_EX}Unziping [done]\n", end="")
                unziped = True
            except Exception as e:
                print(colorama.Fore.RED + e)
                unziped = False
            
            return unziped


        def set_apk_icon(ic_launcher):
            print(f"\r  {colorama.Fore.BLUE}Adding the icon ...", end="")
            try:
                mipmap = numpy.array([
                    "android/res/mipmap-hdpi",
                    "android/res/mipmap-mdpi",
                    "android/res/mipmap-xhdpi",
                    "android/res/mipmap-xxhdpi",
                    "android/res/mipmap-xxxhdpi"])
                
                for path in mipmap:
                    ic_launcher_path = os.path.join(path, "ic_launcher.webp")
                    shutil.copy(ic_launcher, ic_launcher_path)
                    ic_launcher_round_path = os.path.join(path, "ic_launcher_round.webp")
                    shutil.copy(ic_launcher, ic_launcher_round_path)
                
                print(f"\r  {colorama.Fore.LIGHTGREEN_EX}Adding the icon [done]\n", end="")
                iconed = True
            except Exception as e:
                print(colorama.Fore.RED + e)
                iconed = False
            
            return iconed

        def set_apk_name():
            print(f"\r  {colorama.Fore.BLUE}Renaming the APK ...", end="")
            try:
                open("android/res/values/strings.xml", "w", encoding="utf-8").write(Strings)
                print(f"\r  {colorama.Fore.LIGHTGREEN_EX}Renaming the APK [done]\n", end="")
                renamed = True
            except Exception as e:
                print(colorama.Fore.RED + e)
                renamed = False
            return renamed

        if unziper(zip_file_path) and set_apk_icon(ic_launcher_path) and set_apk_name():
            print(f"\r  {colorama.Fore.BLUE}Generating the APK ...", end="")
            command1 = ['java', '-jar', 'apktool.jar', 'b', 'android', '-o', f'dist/{apk_name}.apk']
            with open('log/build.log', 'w') as log_file:
                subprocess.run(command1, stdout=log_file, stderr=log_file)

            if os.path.exists(f"dist/{apk_name}.apk"):
                print(f"\r  {colorama.Fore.LIGHTGREEN_EX}Generating the APK [done]\n", end="")
                print(f"\r  {colorama.Fore.BLUE}Signing the APK ...", end="")
                command2 = ["jarsigner", "-verbose", "-keystore", "key.jks", "-storepass", "000000", f"dist/{apk_name}.apk", "key0"]
                with open('log/sign.log', 'w') as log_file:
                    subprocess.run(command2, stdout=log_file, stderr=log_file)
                print(f"\r  {colorama.Fore.LIGHTGREEN_EX}Signing the APK [done]\n", end="")
            else:
                print(colorama.Fore.RED + "\nFailed to generate the APK file !")
