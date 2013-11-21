define(["base/mvcbase"], function(){
	window.globalEmptyObj = {};
	window.globalScheduleList = {};
	String.prototype.endWith = function(s){
		if(s==null || s=="" || this.length == 0 || s.length>this.length)
			return false;
		if(this.substring(this.length-s.length) == s)
			return true;
		else
			return false;
		return true;
	};

	String.prototype.startWith = function(s){
		if(s==null||s==""||this.length==0||s.length>this.length)
			return false;
		if(this.substr(0,s.length)==s)
			return true;
		else
			return false;
		return true;
	 };
	
	 FwBase.Wtf.Lang = {};
	 window.Util = FwBase.Wtf.Lang.Utils = {
		capitalize: function(str){
			if(str == null || str == "")
				return str;
			var firstChar = str.substring(0,1).toUpperCase();
			var postStr = str.substring(1);
			return firstChar + postStr;
		},
		setDefault: function(target, source){
			for(var attr in source){
				if(typeof target[attr] == 'undefined')
					target[attr] = source[attr];
			}
		},
		trimScript : function(s){
			if(s == null)
				return s;
			var bi = s.indexOf('<script>');
			var ei = s.indexOf('</script>');
			if(bi == -1 || ei == -1)
				return s;
			return s.substring(bi, ei);
		},
		globalScheduleItem : function(item) {
			if(typeof item == 'string')
				return window.globalScheduleList[item];
			else
				window.globalScheduleList[item.id] = item;
		},
		globalSchedule : function(id){
			var item = window.globalScheduleList[id];
			if(item != null)
				item.run();
		},
		/*require one pack, including html, model.js and controller.js*/
		requireOnePack : function(requireUtil, obj) {
			requireUtil(obj.htmlArr, function(){
				for(var i = 0; i < arguments.length; i ++){
					var html = arguments[i];
					var container = obj.containerArr[i];
					container.html(html);
				}
				if(obj.htmlCallback)
					obj.htmlCallback();
				requireUtil(obj.modelJsArr, function(){
					for(var i = 0; i < arguments.length; i ++){
						if(arguments[i] != null)
							arguments[i].exec();
					}
					
					requireUtil(obj.controllerArr, function() {
						for(var i = 0; i < arguments.length; i ++){
							if(arguments[i] != null)
								arguments[i].exec();
						}
						if(obj.finalCallback)
							obj.finalCallback();
					});
				});
			});
		},
		mask : function(obj) {
			
		}
	};
	 
});