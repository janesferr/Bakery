function image_enlarge(img_x) {
    // Get the modal
    var modal = document.getElementById('myModal');
  
    // Get the image and insert it inside the modal - use its "alt" text as a caption
    var img = document.getElementById(img_x);
    var modalImg = document.getElementById("img_modal");
    var captionText = document.getElementById("caption");
    img.onclick = function () {
      modal.style.display = "block";
      modalImg.src = this.src;
      captionText.innerHTML = this.alt;
  
      // Get the <span> element that closes the modal
      var span = document.getElementsByClassName("close")[0];
  
      // When the user clicks on <span> (x), close the modal
      span.onclick = function () {
        modal.style.display = "none";
      }
    }
  }
  
  image_enlarge("img01");
  image_enlarge("img02");
  image_enlarge("img03");
  
  function trainer() {
    var variable = document.getElementById('input_id').value;
    document.getElementById('alert').innerHTML = 'The trainer name is: ' + variable;
  }
  
  
  
  
  
  