var spa = function (href){
	var xhr = new XMLHttpRequest();

	xhr.responseType = 'document';

	xhr.open('GET',href);

	xhr.onreadystatechange = function(){
		if(xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200){
			var newDocument = xhr.response;
			document.getElementById('main_content').innerHTML = newDocument.body.innerHTML;
		};
	};
	xhr.send();
};

window.onclick = function(e) {
  if (e.target.matches('.sb_item a')) {
  	e.preventDefault();
	spa(e.target.href);
  }
}