var xhr = new XMLHttpRequest;

xhr.open('GET','http://localhost:3000/student');

xhr.responseType='document';

xhr.onreadystatechange=function(){
  if(xhr.readyState===XMLHttpRequest.DONE && xhr.status===200){
  	 var newDocument = xhr.response;
console.log(newDocument.getElementsByClassName('profile'))
  	// newDocument.body.innerHTML
	}
};

xhr.send();