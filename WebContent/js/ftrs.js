//确认
function confirm(message, urlAfterConfirm){
	var msg = document.getElementById("message-data");
	msg.innerHTML=message;
	var msgOK = document.getElementById("message-ok");
	msgOK.action=urlAfterConfirm;
	$('#MsgBox').modal('show');
}