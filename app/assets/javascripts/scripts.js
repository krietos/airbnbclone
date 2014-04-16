jQuery(function() {

  populate_regions();
  populate_cities();
  populate_neighborhoods();


});

var populate_regions = function() {
  var regions;
  regions = $('#_region_id').html();
  return $('#_country_id').change(function() {
    var region, options;
    region = $('#_country_id :selected').text();
    options = $(regions).filter("optgroup[label=" + region + "]").html();
    options = "<option value =''></option>" + options
    console.log(options);
    if (options) {
      return $('#_region_id').html(options);
    } else {
      return $('#_region_id').empty();
    }
  });
};

var populate_cities = function() {
  var cities;
  cities = $('#_city_id').html();
  return $('#_region_id').change(function() {
    var city, options;
    city = $('#_region_id :selected').text();
    options = $(cities).filter("optgroup[label=" + city + "]").html();
    options = "<option value =''></option>" + options
    console.log(options);
    if (options) {
      return $('#_city_id').html(options);
    } else {
      return $('#_city_id').empty();
    }
  });
};

var populate_neighborhoods = function() {
  var neighborhoods;
  neighborhoods = $('#room_neighborhood_id').html();
  console.log(neighborhoods)
  return $('#_city_id').change(function() {
    var city, options;
    city = $('#_city_id :selected').text();
    options = $(neighborhoods).filter("optgroup[label=" + city + "]").html();
    options = "<option value =''></option>" + options
    console.log(options);
    if (options) {
      return $('#room_neighborhood_id').html(options);
    } else {
      return $('#room_neighborhood_id').empty();
    }
  });
};
