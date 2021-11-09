$(document).ready(function(){

	/* =================================================================
		Summernote
	================================================================= */

	$('#body-summernote').summernote({
        toolbar: [
		    // [groupName, [list of button]]
		    ['style', ['bold', 'italic', 'underline', 'clear']],
		    ['font', ['strikethrough', 'superscript', 'subscript']],
		    ['fontsize', ['fontsize','style']],
		    ['color', ['color']],
		    ['para', ['ul', 'ol', 'paragraph']],
		    ['height', ['height']],
		    ['insert', ['picture','link','video','table','hr']],
		    ['misc', ['fullscreen','codeview','undo','redo','help']]
		  ],

        placeholder: 'Trình soạn thảo văn bản',
        tabsize: 2,
        height: 500,
        codemirror: { // codemirror options
    		theme: 'monokai'
  		}
      });

	/*$('#summernote-air').summernote({
		airMode: true
	});*/

});