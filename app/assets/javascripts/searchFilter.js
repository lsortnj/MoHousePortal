var SearchFilter = new function(){
    
  var thisObj;
  var optionDistricts;
  var $selectCity;
  var $selectDist;
  var $selectPriceFrom;
  var $selectPriceTo;

  function bindSearchBtnClick(){
    $("#btnSearch").click(function(){
      var priceFrom = parseInt($selectPriceFrom.val());
      var priceTo   = parseInt($selectPriceTo.val());
      if(priceTo <= priceFrom) priceTo = priceFrom+100;
      
      location.href = "/?city="+$selectCity.val()+"&district="+$selectDist.val()+
      "&price_from="+priceFrom+"&price_to="+priceTo;
    });
  }

  function bindSelectCityEvent(){
    $selectCity.change(function(){
      $selectDist.children('option').remove();
       optionDistricts.clone()
        .filter("option[data-city='"+$(this).val()+"']")
          .appendTo($selectDist);
    });
    $selectCity.trigger('change');
  }

  return thisObj = {
    init: function(city, district, priceFrom, priceTo){
      $selectCity      = $("select[name='city']");
      $selectDist      = $("select[name='district']");
      $selectPriceFrom = $("select[name='price_from']");
      $selectPriceTo   = $("select[name='price_to']");

      optionDistricts = $selectDist.children("option").clone();
      
      bindSelectCityEvent();
      bindSearchBtnClick();

      if(city!="" && city!=undefined)
        $selectCity.val(city).trigger('change');
      if(district!="" && district!=undefined)
        $selectDist.val(district).trigger('change');
      if(priceFrom!="" && priceFrom!=undefined)
        $selectPriceFrom.val(priceFrom).trigger('change');
      if(priceTo!="" && priceTo!=undefined)
        $selectPriceTo.val(priceTo).trigger('change');
    }
  };
};