/**
 * 
 */
	$(document).ready(function(){
		
		
		var formObj = $("form[role='form']");

		$(".bt_save").on("click", function() {
			formObj.submit();
		});
		
		$(".board_list").on("click", function(){
			self.location = "/project/board/select";
		});
		
		$(".board_insert").on("click", function() {
			location.href = "/project/board/insert"
		});
		
		$(".board_update").on("click", function(){
			self.location = "update?bno=${boardDTO.bno}";
		});
		
		$(".board_delete").on("click", function(){
			formObj.attr("action", "/project/board/delete");
			formObj.submit();
		});
		
		$(".board_cancel").on("click", function() {
			self.location = "/project/board/detail?bno=${boardDTO.bno}";
		});
		
		
		
        $( '.ex_content_p1_1' ).animate( {
          opacity: '1'
        }, 1000, function() {
          $( '.ex_content_p1_2' ).animate( {
            opacity: '1'
          }, 1000, function() {
            $( '.ex_content_p1_3' ).animate( {
              opacity: '1'
	        }, 1000, function() {
	          $( '.ex_content_p1_4' ).animate( {
	        	opacity: '1'
	          }, 1000, function(){
	        	  $( '.ex_content_p1' ).animate( {
	  	        	opacity: '0'
		          }, 1000, function(){ 
		        	  self.location = "/project/content/ex_recomm/ex_recomm2"
		          });
	          });
	        });
          });
        });
        
        
        
        
        
        function phoneFomatter(num,type){
        	
            var formatNum = '';
            
            if(num.length==11){
                if(type==0){
                    formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-****-$3');
                }else{
                    formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
                }
            }else if(num.length==8){
                formatNum = num.replace(/(\d{4})(\d{4})/, '$1-$2');
            }else{
                if(num.indexOf('02')==0){
                    if(type==0){
                        formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-****-$3');
                    }else{
                        formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-$2-$3');
                    }
                }else{
                    if(type==0){
                        formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-***-$3');
                    }else{
                        formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
                    }
                }
            }
            return formatNum;
        }


        
        
        
        
        
        
        
        
        
        
        
        
        
        
	});