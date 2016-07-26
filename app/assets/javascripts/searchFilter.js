var SearchFilter = new function(){
    
  var thisObj;
  var optionDistricts;
  var $selectCity;
  var $selectDist;
  var $selectPriceFrom;
  var $selectPriceTo;
  var $selectAgeFrom;
  var $selectAgeTo;

  function bindSearchBtnClick(){
    $("#btnSearch").click(function(){
      var priceFrom = parseInt($selectPriceFrom.val());
      var priceTo   = parseInt($selectPriceTo.val());
      if(priceTo <= priceFrom) priceTo = priceFrom+100;

      var ageFrom = parseInt($selectAgeFrom.val());
      var ageTo   = parseInt($selectAgeTo.val());
      if(ageTo <= ageFrom) ageTo = ageFrom+5;
      
      location.href = "/houses/?city="+$selectCity.val()+"&district="+$selectDist.val()+
      "&price_from="+priceFrom+"&price_to="+priceTo+
      "&age_from="+ageFrom+"&age_to="+ageTo;
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

  function setSelectValue($select, value){
    if(value!="" && value!=undefined)
        $select.val(value).trigger('change');
  }

  return thisObj = {
    init: function(city, district, priceFrom, priceTo, ageFrom, ageTo){
      $selectCity      = $("select[name='city']");
      $selectDist      = $("select[name='district']");
      $selectPriceFrom = $("select[name='price_from']");
      $selectPriceTo   = $("select[name='price_to']");
      $selectAgeFrom   = $("select[name='age_from']");
      $selectAgeTo     = $("select[name='age_to']");

      optionDistricts = $selectDist.children("option").clone();
      
      bindSelectCityEvent();
      bindSearchBtnClick();

      setSelectValue($selectCity, city);
      setSelectValue($selectDist, district);
      setSelectValue($selectPriceFrom, priceFrom);
      setSelectValue($selectPriceTo, (priceTo=="" ? 1000 : priceTo) );
      setSelectValue($selectAgeFrom, ageFrom);
      setSelectValue($selectAgeTo, ageTo);

      //Default 新北/林口
      if($selectCity.val()==null || $selectDist.val()==null){
        $selectCity.val('0001').trigger('change');
        $selectDist.val('35').trigger('change');
      }
      //Default 0~15年屋
      if($selectAgeFrom.val()==null || $selectAgeTo.val()==null){
        $selectAgeFrom.val('0').trigger('change');
        $selectAgeTo.val('15').trigger('change');
      }
    }
  };
};