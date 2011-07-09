
(function( $ ){
  var defaults = {
		
  }

  var methods = {
     init : function( options ) {
			var _t = this;
			this.data('options', $.extend(defaults, options));
			this.data('container', this.parents('.field'));
			this.bind('keyup', function(e){_t.winesearch('search')});
     }, 
		search: function(){
			var _t = this;
			if(_t.val().length <= 3){
				return;
			}
			_t.data('container').addClass('loading');
			$.ajax({
				url:_t.data('options').url, 
				data:{q:_t.val()},
				type:'get', 
				dataType:'json', 
				success: function(json, stat, xhr){
					var _c = _t.data('container').find('.completer');
					var c = "";
					if(json.length != 0){
						$.each(json, function(i, el){
							c += "<li data-wine-id="+el.id+">"+el.name+" "+el.year+"</li>"
						});
						_c.find("ul").html(c);
						_t.data('container').removeClass('loading');
						_c.animate({'height':json.length*30+3});
						// Setup events
					}else{
						// Present adding-form here...
					}
				},
				error: function(){
					console.log("error");
					console.log(arguments);
				}
			})
		}
  };
	
  // JQuery - Prefered function proxy
  $.fn.winesearch = function( method ) {
    if ( methods[method] ) {
      return methods[method].apply( this, Array.prototype.slice.call( arguments, 1 ));
    } else if ( typeof method === 'object' || ! method ) {
      return methods.init.apply( this, arguments );
    } else {
      $.error( 'Method ' +  method + ' does not exist on jQuery.winesearch' );
    }    
  };
})( jQuery );

