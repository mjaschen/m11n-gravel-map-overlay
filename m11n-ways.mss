@m11n_gravel_color: #d826a7;
@m11n_bad_background_color: rgba(0, 0, 0, 1.0);
@m11n_sett_color: rgba(255, 255, 0, 1.0);
@m11n_sand_color: rgba(238, 85, 238, 1.0);

@dash_bad_ways: 6,2;

@factor_line_width: 1.0;
@factor_line_width_case: 2.5;

@factor_line_width_cc: 0.9;
@factor_line_width_cc_case: 1.2;

@factor_line_width_sand: 0.8;
@factor_line_width_sand_low_zoom: 0.5;
@factor_line_width_sand_case: 0.9;

@factor_line_width_sett: 1;
@factor_line_width_sett_low_zoom: 1;
@factor_line_width_sett_case: 1.5;

@rdz11_track: 0.5;
@rdz12_track: 1;
@rdz13_track: 1;
@rdz14_track: 1.5;
@rdz15_track: 2;
@rdz16_track: 2;
@rdz17_track: 2;
@rdz18_track: 3;

@rdz14_gravel_offset: 3;
@rdz15_gravel_offset: 4;
@rdz16_gravel_offset: 4;
@rdz17_gravel_offset: 4.5;
@rdz18_gravel_offset: 6;

@rdz14_surface_classification_offset: -3;
@rdz15_surface_classification_offset: -4;
@rdz16_surface_classification_offset: -4;
@rdz17_surface_classification_offset: -4.5;
@rdz18_surface_classification_offset: -6;

#roads_high::outline[zoom>=11] {

    [type='service'][zoom >= 11],
    [type='unclassified'][zoom >= 11],
    [type='residential'][zoom >= 11],
    [type='path'][zoom >= 11],
    [type='track'][zoom >= 11] {
        line-color: rgba(0,0,0,0);

        line-width: @rdz11_track;
        [zoom>=12] { line-width: @rdz12_track * @factor_line_width_case; }
        [zoom>=13] { line-width: @rdz13_track * @factor_line_width_case; }
        [zoom>=14] { line-width: @rdz14_track * @factor_line_width_case; }
        [zoom>=15] { line-width: @rdz15_track * @factor_line_width_case; }
        [zoom>=16] { line-width: @rdz16_track * @factor_line_width_case; }
        [zoom>=17] { line-width: @rdz17_track * @factor_line_width_case; }
        [zoom>=18] { line-width: @rdz18_track * @factor_line_width_case; }

        [zoom>=14] { line-offset: @rdz14_gravel_offset; }
        [zoom>=15] { line-offset: @rdz15_gravel_offset; }
        [zoom>=16] { line-offset: @rdz16_gravel_offset; }
        [zoom>=17] { line-offset: @rdz17_gravel_offset; }
        [zoom>=18] { line-offset: @rdz18_gravel_offset; }

        [surface_type='cyclocross'] {
            line-color: rgba(255, 255, 255, 0.9);
            line-dasharray: none;

            line-width: @rdz11_track * @factor_line_width_cc * @factor_line_width_cc_case;
            [zoom>=12] { line-width: @rdz12_track * @factor_line_width_cc * @factor_line_width_cc_case; }
            [zoom>=13] { line-width: @rdz13_track * @factor_line_width_cc * @factor_line_width_cc_case; }
            [zoom>=14] { line-width: @rdz14_track * @factor_line_width_cc * @factor_line_width_cc_case; }
            [zoom>=15] { line-width: @rdz15_track * @factor_line_width_cc * @factor_line_width_cc_case; }
            [zoom>=16] { line-width: @rdz16_track * @factor_line_width_cc * @factor_line_width_cc_case; }
            [zoom>=17] { line-width: @rdz17_track * @factor_line_width_cc * @factor_line_width_cc_case; }
            [zoom>=18] { line-width: @rdz18_track * @factor_line_width_cc * @factor_line_width_cc_case; }
        }

        [surface_type='gravel'] {
            line-color: rgba(255, 255, 255, 0.7);
            line-dasharray: none;
        }
    }
}

#roads_high::inline[zoom>=11] {

    [type='service'][zoom >= 11],
    [type='unclassified'][zoom >= 11],
    [type='residential'][zoom >= 11],
    [type='path'][zoom >= 11],
    [type='track'][zoom >= 11] {
        line-color: rgba(0,0,0,0);

        line-width: @rdz11_track;
        [zoom>=12] { line-width: @rdz12_track * @factor_line_width; }
        [zoom>=13] { line-width: @rdz13_track * @factor_line_width; }
        [zoom>=14] { line-width: @rdz14_track * @factor_line_width; }
        [zoom>=15] { line-width: @rdz15_track * @factor_line_width; }
        [zoom>=16] { line-width: @rdz16_track * @factor_line_width; }
        [zoom>=17] { line-width: @rdz17_track * @factor_line_width; }
        [zoom>=18] { line-width: @rdz18_track * @factor_line_width; }

        [zoom>=14] { line-offset: @rdz14_gravel_offset; }
        [zoom>=15] { line-offset: @rdz15_gravel_offset; }
        [zoom>=16] { line-offset: @rdz16_gravel_offset; }
        [zoom>=17] { line-offset: @rdz17_gravel_offset; }
        [zoom>=18] { line-offset: @rdz18_gravel_offset; }

        [surface_type='cyclocross'] {
            line-color: @m11n_gravel_color;
            line-dasharray: 4,2;

            line-width: @rdz11_track * @factor_line_width_cc;
            [zoom>=12] { line-width: @rdz12_track * @factor_line_width_cc; }
            [zoom>=13] { line-width: @rdz13_track * @factor_line_width_cc; }
            [zoom>=14] { line-width: @rdz14_track * @factor_line_width_cc; }
            [zoom>=15] { line-width: @rdz15_track * @factor_line_width_cc; }
            [zoom>=16] { line-width: @rdz16_track * @factor_line_width_cc; }
            [zoom>=17] { line-width: @rdz17_track * @factor_line_width_cc; }
            [zoom>=18] { line-width: @rdz18_track * @factor_line_width_cc; }
        }

        [surface_type='gravel'] {
            line-color: @m11n_gravel_color;
            line-dasharray: none;
        }
    }
}


#roads_classification::outline[zoom>=11] {

    [type='motorway'][zoom >= 11],
    [type='trunk'][zoom >= 11],
    [type='primary'][zoom >= 11],
    [type='secondary'][zoom >= 11],
    [type='tertiary'][zoom >= 11],
    [type='unclassified'][zoom >= 11],
    [type='residential'][zoom >= 11],
    [type='service'][zoom >= 11],
    [type='path'][zoom >= 11],
    [type='track'][zoom >= 11] {

        line-color: rgba(0,0,0,0);

        [surface_classification='sand'],
        [surface_classification='sett'] {
            line-color: @m11n_bad_background_color;
        }

        [surface_classification='sand'] {
            line-width: @rdz11_track * @factor_line_width_sand_case * @factor_line_width_sand_low_zoom;
            [zoom>=12] { line-width: @rdz12_track * @factor_line_width_sand_case * @factor_line_width_sand_low_zoom; }
            [zoom>=13] { line-width: @rdz13_track * @factor_line_width_sand_case * @factor_line_width_sand_low_zoom; }
            [zoom>=14] { line-width: @rdz14_track * @factor_line_width_sand_case; }
            [zoom>=15] { line-width: @rdz15_track * @factor_line_width_sand_case; }
            [zoom>=16] { line-width: @rdz16_track * @factor_line_width_sand_case; }
            [zoom>=17] { line-width: @rdz17_track * @factor_line_width_sand_case; }
            [zoom>=18] { line-width: @rdz18_track * @factor_line_width_sand_case; }
        }
        [surface_classification='sett'] {
            line-width: @rdz11_track * @factor_line_width_sett_case * @factor_line_width_sett_low_zoom;
            [zoom>=12] { line-width: @rdz12_track * @factor_line_width_sett_case * @factor_line_width_sett_low_zoom; }
            [zoom>=13] { line-width: @rdz13_track * @factor_line_width_sett_case * @factor_line_width_sett_low_zoom; }
            [zoom>=14] { line-width: @rdz14_track * @factor_line_width_sett_case; }
            [zoom>=15] { line-width: @rdz15_track * @factor_line_width_sett_case; }
            [zoom>=16] { line-width: @rdz16_track * @factor_line_width_sett_case; }
            [zoom>=17] { line-width: @rdz17_track * @factor_line_width_sett_case; }
            [zoom>=18] { line-width: @rdz18_track * @factor_line_width_sett_case; }
        }
    }

    [type='path'][zoom >= 11],
    [type='track'][zoom >= 11] {
        [surface_classification='sand'],
        [surface_classification='sett'] {
            [zoom>=14] { line-offset: @rdz14_surface_classification_offset; }
            [zoom>=15] { line-offset: @rdz15_surface_classification_offset; }
            [zoom>=16] { line-offset: @rdz16_surface_classification_offset; }
            [zoom>=17] { line-offset: @rdz17_surface_classification_offset; }
            [zoom>=18] { line-offset: @rdz18_surface_classification_offset; }
        }
    }
}

#roads_classification::inline[zoom>=11] {

    [type='motorway'][zoom >= 11],
    [type='trunk'][zoom >= 11],
    [type='primary'][zoom >= 11],
    [type='secondary'][zoom >= 11],
    [type='tertiary'][zoom >= 11],
    [type='unclassified'][zoom >= 11],
    [type='residential'][zoom >= 11],
    [type='service'][zoom >= 11],
    [type='path'][zoom >= 11],
    [type='track'][zoom >= 11] {
        line-color: rgba(0,0,0,0);

        [surface_classification='sand'],
        [surface_classification='sett'] {
            line-dasharray: @dash_bad_ways;
        }

        [surface_classification='sand'] {
            line-width: @rdz11_track * @factor_line_width_sand * @factor_line_width_sand_low_zoom;
            [zoom>=12] { line-dasharray: 4,4; line-width: @rdz12_track * @factor_line_width_sand * @factor_line_width_sand_low_zoom; }
            [zoom>=13] { line-dasharray: 6,4; line-width: @rdz13_track * @factor_line_width_sand * @factor_line_width_sand_low_zoom; }
            [zoom>=14] { line-dasharray: 6,4; line-width: @rdz14_track * @factor_line_width_sand; }
            [zoom>=15] { line-dasharray: 6,4; line-width: @rdz15_track * @factor_line_width_sand; }
            [zoom>=16] { line-dasharray: 7,5; line-width: @rdz16_track * @factor_line_width_sand; }
            [zoom>=17] { line-dasharray: 8,6; line-width: @rdz17_track * @factor_line_width_sand; }
            [zoom>=18] { line-dasharray: 8,6; line-width: @rdz18_track * @factor_line_width_sand; }
        }
        [surface_classification='sett'] {
            line-width: @rdz11_track * @factor_line_width_sett * @factor_line_width_sett_low_zoom;
            [zoom>=12] { line-dasharray: 4,4; line-width: @rdz12_track * @factor_line_width_sett * @factor_line_width_sett_low_zoom; }
            [zoom>=13] { line-dasharray: 6,4; line-width: @rdz13_track * @factor_line_width_sett * @factor_line_width_sett_low_zoom; }
            [zoom>=14] { line-dasharray: 6,4; line-width: @rdz14_track * @factor_line_width_sett; }
            [zoom>=15] { line-dasharray: 6,4; line-width: @rdz15_track * @factor_line_width_sett; }
            [zoom>=16] { line-dasharray: 7,5; line-width: @rdz16_track * @factor_line_width_sett; }
            [zoom>=17] { line-dasharray: 8,6; line-width: @rdz17_track * @factor_line_width_sett; }
            [zoom>=18] { line-dasharray: 8,6; line-width: @rdz18_track * @factor_line_width_sett; }
        }
        [surface_classification='sand'] {
            line-color: @m11n_sand_color;
        }
        [surface_classification='sett'] {
            line-color: @m11n_sett_color;
        }
    }

    [type='path'][zoom >= 11],
    [type='track'][zoom >= 11] {
        [surface_classification='sand'],
        [surface_classification='sett'] {
            [zoom>=14] { line-offset: @rdz14_surface_classification_offset; }
            [zoom>=15] { line-offset: @rdz15_surface_classification_offset; }
            [zoom>=16] { line-offset: @rdz16_surface_classification_offset; }
            [zoom>=17] { line-offset: @rdz17_surface_classification_offset; }
            [zoom>=18] { line-offset: @rdz18_surface_classification_offset; }
        }
    }
}
