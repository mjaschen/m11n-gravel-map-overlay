#landuse[zoom>=13] {
  [type='amenity_grave_yard'],
  [type='landuse_cemetery'] {
    [zoom >= 12] {
      marker-file: url('symbols/tomb_stone.svg');
      marker-fill: #666;
      marker-placement: interior;
      marker-clip: false;
      marker-width: 12;
      marker-opacity: @m11n-poi-opacity;
    }
  }
}

#amenities-points,
#amenities-poly {
  [feature = 'amenity_fuel'][zoom >= 13],
  [feature = 'shop_gas'][zoom >= 13] {
    marker-file: url('symbols/openstreetmap-carto/amenity/fuel.svg');
    marker-fill: @m11n-fuel-icon;
    marker-placement: interior;
    marker-clip: false;
    marker-opacity: @m11n-poi-opacity;
  }

  [feature = 'shop_bicycle'][zoom >= 13] {
    [zoom <=15] { marker-transform: "scale(0.83)"; }
    marker-file: url('symbols/osm-bright-gl-style/amenities/bicycle_11.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @bicycle-amenity;
    marker-opacity: @m11n-poi-opacity;
  }

  [feature = 'amenity_drinking_water'][zoom >= 13],
  [feature = 'amenity_water_point']['drinking_water'='yes'][zoom >= 13],
  [feature = 'man_made_water_tap']['drinking_water'='yes'][zoom >= 13] {
    marker-file: url('symbols/openstreetmap-carto/amenity/drinking_water_full.svg');
    marker-fill: @m11n-amenity-water;
    marker-opacity: @m11n-poi-opacity;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'amenity_toilets'][zoom >= 13] {
    marker-file: url('symbols/osm-bright-gl-style/amenities/toilets_11.svg');
    marker-fill: @health-color;
    marker-opacity: @m11n-poi-opacity;
    [drinking_water = 'yes'] { marker-fill: @amenity-water; }

    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'shop_supermarket'][zoom >= 13] {
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
    marker-opacity: @m11n-poi-opacity;
    marker-file: url('symbols/openstreetmap-carto/shop/supermarket.svg');
  }

  [feature = 'amenity_biergarten'][zoom >= 16],
  [feature = 'amenity_cafe'][zoom >= 16],
  [feature = 'amenity_fast_food'][zoom >= 16],
  [feature = 'amenity_food_court'][zoom >= 16],
  [feature = 'amenity_ice_cream'][zoom >= 16],
  [feature = 'amenity_pub'][zoom >= 16],
  [feature = 'amenity_restaurant'][zoom >= 16],
  [feature = 'shop_bakery'][zoom >= 16],
  [feature = 'shop_convenience'][zoom >= 16],
  [feature = 'shop_convenience;gas'][zoom >= 16],
  [feature = 'shop_greengrocer'][zoom >= 16],
  [feature = 'shop_pastry'][zoom >= 16],
  [feature = 'shop_beverages'][zoom >= 16]
  {
    marker-placement: interior;
    marker-clip: false;
    marker-opacity: @m11n-poi-opacity;

    [feature = 'amenity_biergarten'],
    [feature = 'amenity_cafe'],
    [feature = 'amenity_fast_food'],
    [feature = 'amenity_food_court'],
    [feature = 'amenity_ice_cream'],
    [feature = 'amenity_pub'],
    [feature = 'amenity_restaurant'] {
        marker-fill: @gastronomy-icon;
    }
    [feature = 'shop_bakery'],
    [feature = 'shop_convenience'],
    [feature = 'shop_convenience;gas'],
    [feature = 'shop_greengrocer'],
    [feature = 'shop_pastry'],
    [feature = 'shop_beverages'] {
        marker-fill: @shop-icon;
    }

    [feature = 'amenity_biergarten'][zoom >= 16] {
      marker-file: url('symbols/openstreetmap-carto/amenity/biergarten.svg');
    }
    [feature = 'amenity_cafe'][zoom >= 16] {
      marker-file: url('symbols/osm-bright-gl-style/amenities/cafe_11.svg');
    }
    [feature = 'amenity_fast_food'][zoom >= 16] {
      marker-file: url('symbols/openstreetmap-carto/amenity/fast_food.svg');
    }
    [feature = 'amenity_food_court'][zoom >= 16],
    [feature = 'amenity_restaurant'][zoom >= 16] {
      marker-file: url('symbols/openstreetmap-carto/amenity/restaurant.svg');
    }
    [feature = 'amenity_ice_cream'][zoom >= 16] {
      marker-file: url('symbols/openstreetmap-carto/shop/ice_cream.svg');
    }
    [feature = 'amenity_pub'][zoom >= 16] {
      marker-file: url('symbols/osm-bright-gl-style/amenities/pub_11.svg');
    }
    [feature = 'shop_bakery'][zoom >= 16] {
      marker-file: url('symbols/openstreetmap-carto/shop/bakery.svg');
    }
    [feature = 'shop_convenience'][zoom >= 16],
    [feature = 'shop_convenience;gas'][zoom >= 16] {
      marker-file: url('symbols/openstreetmap-carto/shop/convenience.svg');
    }
    [feature = 'shop_pastry'][zoom >= 16] {
      marker-file: url('symbols/openstreetmap-carto/shop/confectionery.svg');
    }
    [feature = 'shop_beverages'][zoom >= 16] {
      marker-file: url('symbols/openstreetmap-carto/shop/beverages.svg');
    }
  }

  [feature = 'amenity_atm'][zoom >= 16] {
    marker-file: url('symbols/openstreetmap-carto/amenity/atm.svg');
    marker-fill: @amenity-common;
    marker-clip: false;
  }

}
