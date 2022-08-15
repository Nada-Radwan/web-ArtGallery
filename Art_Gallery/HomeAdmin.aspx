<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="HomeAdmin.aspx.cs" Inherits="HomeAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="banner">

    <div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext">1 / 5</div>
    <img src="Images/fn3.jpeg" style="width:500px",height:"400px" >
    <div class="text">Gradual Art Murals</div>
  </div>
    <div class="mySlides fade">
    <div class="numbertext">2 / 5</div>
    <img src="Images/islam8.jpg" style="width:500px",height:"400px">
    <div class="text">Islamic Paintings</div>
  </div>
  <div class="mySlides fade">
    <div class="numbertext">3 / 5</div>
    <img src="Images/tgrede7.jpg" style="width:500px",height:"400px">
    <div class="text">Nature Paintings</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">4 / 5</div>
    <img src="Images/tgrede999.jpg" style="width:500px",height:"400px">
    <div class="text">Gradual Art Murals</div>
  </div>
    <div class="mySlides fade">
    <div class="numbertext">5 / 5</div>
    <img src="Images/islam7.jpg" style="width:500px",height:"400px">
    <div class="text">Islamic Paintings</div>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
  <span class="dot" onclick="currentSlide(4)"></span>

</div>
                &nbsp;</td>
        </tr>
        <tr >
            <td class="auto-style4">
                
                
                
                &nbsp;</td>
        </tr>
    </table>
        <script>
            let slideIndex = 1;
            showSlides(slideIndex);

            // Next/previous controls
            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            // Thumbnail image controls
            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                let i;
                let slides = document.getElementsByClassName("mySlides");
                let dots = document.getElementsByClassName("dot");
                if (n > slides.length) { slideIndex = 1 }
                if (n < 1) { slideIndex = slides.length }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
            }

           

            function showSlides() {
                let i;
                let slides = document.getElementsByClassName("mySlides");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) { slideIndex = 1 }
                slides[slideIndex - 1].style.display = "block";
                setTimeout(showSlides, 4000); // Change image every 4 seconds
            }

        </script>
   </div>
</asp:Content>

