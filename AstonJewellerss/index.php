<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Aston Jewellers</title>
    <link rel="icon" href="images/favicon.ico?v=2" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
    />
    <script
      src="https://kit.fontawesome.com/c54d8b2ca0.js"
      crossorigin="anonymous">
    </script>
    <script defer src="js/main.js"></script>
  </head>
  <body>

    <header id="main-header">
      <div class="topnav" id="nav">
        <div class="container-fluid">
          <div>
            <a href="#"><i class="fa fa-search"></i> Search</a>
          </div>
          <div>
            <h1>Aston Jewellers</h1>
            <p>Selling high-quality affordable jewellery</p>
          </div>
          <div class="topnav-right">
            <a href="login.php"><i class="fas fa-user-circle"></i> Log In</a>
           
          </div>
        </div>
        <nav>
          <div class="topnav-right">
            <a href="wishlist.php"><i class="fa fa-heart-o"></i></a>
            <a href="basket.php"><i class="fa fa-shopping-cart"></i></a>
          </div>
          <div id="topnav-centered">
            <ul>
              <li><a href="index.php">Home</a></li>
              <li><a href="shop.php">Shop</a></li>
              <li><a href="#">Men's</a></li>
              <li><a href="sales.php">Sale</a></li>
              <li><a href="about-us.php">About Us</a></li>
            </ul>
          </div>
        </nav>
      </div>
    </header>
    <main>
      <div class="left">
        <section id="style">
          <h2>Shop By Style</h2>
          <div class="style">
            <img src="images/gold.jpg" alt="style-gold" />
            <a href="#">GOLD</a>
          </div>
          <div class="style">
            <img src="images/pearl.jpg" alt="style-pearl" />
            <a href="#">PEARL</a>
          </div>
          <div class="">
            <img src="images/silver.jpg" alt="style-silver" />
            <a href="#">SILVER</a>
          </div>
        </section>
  
      </div>

      <section id="sale">
        <h5>Up to</h5>
        <h2>50% Off</h2>
        <div class="sale">
          <img src="images/rings2.jpg" alt="wintercollection1" />
          <div class="centered">RINGS</div>
          <div class="bottom-right"><a href="#"><button>Shop Now</button></a></div>
        </div>
        <div class="sale">
          <img src="images/bracelet.jpg" alt="wintercollection1" />
          <div class="centered">BRACELETS</div>
          <div class="bottom-right"><a href="#"><button>Shop Now</button></a></div>
        </div>
      </section>

    
      <section id="wcollection">
        <h2>WINTER COLLECTION</h2>
        <h5>Reflect your style this winter</h5>
  <br><br>
       <img src="images/wintercollection1.jpg" alt="wintercollection1" />
    <button>Explore Now</button>
  
       <img src="images/wintercollection2.jpg" alt="wintercollection1" />
     
      </section>

      <section id="message">
        <h2>High-quality, Everyday Jewellery Made From Sustainable, Recycled Materials </h2>
      </section>
    </main>
  </body>
</html>


<?php
include('footer.php');
?>