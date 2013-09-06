// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$("#klass_need_before_task").change(function(){
	$("#klass_before_task").prop('disabled',!$(this).is(':checked'))
})

$("#klass_need_after_task").change(function(){
	$("#klass_after_task").prop('disabled',!$(this).is(':checked'))
})