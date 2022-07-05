/**
 * 
 */
	$(document).ready(function(){
		
		$('#searchBtn').on("click",function(event){
// 		  alert("select"+'${pageMaker.makePage(1)}'
// 				  +'&searchType='+$("select option:selected").val()
// 				  +"&keyword="+$('#keywordInput').val());
		  
		  self.location="select"+'${pageMaker.makePage(1)}'
		  +'&searchType='+$("select option:selected").val()
		  +"&keyword="+$('#keywordInput').val();
		  
		});
		
		var formObj = $("form[role='form']");

		$(".bt_save").on("click", function() {
			formObj.submit();
		});
		
		$(".bt_list").on("click", function(){
			self.location = "/project/board/select";
		});
		
		$(".bt_insert").on("click", function() {
			location.href = "/project/board/insert"
		});
		
		$(".bt_update").on("click", function(){
			self.location = "update?bno=${boardDTO.bno}";
		});
		
		$(".bt_delete").on("click", function(){
			formObj.attr("action", "/project/board/delete");
			formObj.submit();
		});
		
		$(".bt_cancel").on("click", function() {
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
        
//        $( '.ex_content_p1_2' ).animate( {
//            opacity: '1'
//          }, 1000)
        
	});