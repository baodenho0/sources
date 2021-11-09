$(document).ready(function(){
      $('#file').change(function(){     
            
         try{
            // var name = $('input[type=file]')[0].files[0].name;
            // var img = $('input[type=file]').val();   
            // $('#choose_file').text(name);
            readURL1(this);
         }catch(err){
            $('#choose_file').text('Choose file');
            $("img[alt='avatar']").attr("src","");
         }        
      });
      function readURL1(input){
         if(input.files && input.files[0]){
            var reader = new FileReader();
            reader.onload = function(e){
               $("img[alt='avatar']").attr("src",e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
         }
      }

      $('#file1').change(function(){      

         try{
            // var name = $('input[type=file]')[0].files[0].name;
            // var img = $('input[type=file]').val();   
            // $('#choose_file').text(name);
            readURL(this);
         }catch(err){
            $('#choose_file').text('Choose file');
            $("img[alt='icon']").attr("src","");
         }        
      });
      function readURL(input){
         if(input.files && input.files[0]){
            var reader = new FileReader();
            reader.onload = function(e){
               $("img[alt='icon']").attr("src",e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
         }
      }

      $('#file2').change(function(){      

         try{
            // var name = $('input[type=file]')[0].files[0].name;
            // var img = $('input[type=file]').val();   
            // $('#choose_file').text(name);
            readURL2(this);
         }catch(err){
            $('#choose_file').text('Choose file');
            $("img[alt='image2']").attr("src","");
         }        
      });
      function readURL2(input){
         if(input.files && input.files[0]){
            var reader = new FileReader();
            reader.onload = function(e){
               $("img[alt='image2']").attr("src",e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
         }
      }
   });