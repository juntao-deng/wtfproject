define(["input_base/input_base", "./chosen", "css!./chosen"], function(inputbase){	
	FwBase.Wtf.View.Controls.Input_dropdown = function(){
		FwBase.Wtf.View.Controls.InputBase.apply(this, arguments);
	};
	$.extend(FwBase.Wtf.View.Controls.Input_dropdown.prototype, FwBase.Wtf.View.Controls.InputBase.prototype, 
		{
			template: _.template($('#sys_atom_controls_input_dropdown').html()),
			mockMetadata : function(){
				this.setDefault({label : '', placeHolder : 'Select an option ...'});
				this.setDefault(datas);
			},
			makeDefaultFurther : function() {
				this.setDefault({filter : true, multiple : false, emptyRecord:false, options:null, groups:null, placeHolder : 'Select an option ...'});
			},
			inputMask : function() {
				this.input = this.el.find('select');
				this.input.chosen();
//				if(this.metadata.filter){
//				}
				var oThis = this;
				if(this.metadata.multiple){
					this.input.bind("choiseclick", function(){
						var options = {source: oThis, value: arguments[1], eventCtx: {}};
						oThis.trigger('choiseclick', options);
					});
				}
				this.input.bind("change", function(){
					var options = {source: oThis, value: oThis.value(), eventCtx: {}};
					return oThis.trigger("valuechange", options);
				});
				
				if(this.metadata.value != null)
					this.value(this.metadata.value);
			},
			value : function() {
				if(arguments.length == 0){
					return this.input.val();
				}
				else{
					this.input.attr('value', arguments[0]);
					this.input.trigger("liszt:updated");
				}
			},
			datas: function(options) {
				this.metadata.options = options;
				var html = this.paint();
				var gbi = html.indexOf("<optgroup>");
				var obi = html.indexOf("<option>");
				var bi = -1;
				var result = "";
				var fromGroup = false;
				if(gbi > 0 && obi > 0)
					bi = Math.min(gbi, obi);
				else if(gbi > 0)
					bi = gbi;
				else if(obi > 0)
					bi = obi;
				if(bi > 0){
					var ei = -1;
					if(fromGroup)
						ei = html.lastIndexOf("</optgroup>") + "</optgroup>".length;
					else
						ei = html.lastIndexOf("</option>") + "</option>".length;
					result = html.substring(bi, ei);
				}
				this.input.html(result);
				this.input.trigger("liszt:updated");
			}
		}
	);
	
	var datas = {
		groups:[
			{label:'NFC EAST', options:[
				{value: 'Dallas Cowboys', text: 'Dallas Cowboys'},
				{value: 'New York Giants', text: 'New York Giants'},
				{value: 'Philadelphia Eagles', text: 'Philadelphia Eagles'},
				{value: 'Washington Redskins', text: 'Washington Redskins'}
			]},
			{label:'NFC NORTH', options:[
				{value: 'Chicago Bears', text: 'Chicago Bears'},
				{value: 'Detroit Lions', text: 'Detroit Lions'},
				{value: 'Green Bay Packers', text: 'Green Bay Packers'},
				{value: 'Minnesota Vikings', text: 'Minnesota Vikings'}
			]},
			{label:'NFC SOUTH', options:[
				{value: 'Atlanta Falcons', text: 'Atlanta Falcons'},
				{value: 'Carolina Panthers', text: 'Carolina Panthers'},
				{value: 'New Orleans Saints', text: 'New Orleans Saints'},
				{value: 'Tampa Bay Buccaneers', text: 'Tampa Bay Buccaneers'}
			]},
			{label:'NFC WEST', options:[
				{value: 'Arizona Cardinals', text: 'Arizona Cardinals'},
				{value: 'St. Louis Rams', text: 'St. Louis Rams'},
				{value: 'San Francisco 49ers', text: 'San Francisco 49ers'},
				{value: 'Seattle Seahawks', text: 'Seattle Seahawks'}
			]},
		]
	};
	return FwBase.Wtf.View.Controls.Input_dropdown;
});