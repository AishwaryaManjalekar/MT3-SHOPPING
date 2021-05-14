<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

        <!-- Carousel
        ================================================== -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="first-slide home-image" src="<c:url value="/resources/images/background1.jpg" />" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Mabel shopping</h1>
                            <p>An exciting place for the whole family to shop</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide home-image" src="<c:url value="/resources/images/background2.jpg" />" alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Just a click away</h1>
                            <p>Lockdown offer!! 30% off</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide home-image " src="<c:url value="/resources/images/background3.jpg" />" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1></h1>
                            <p></p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!-- /.carousel -->


      

        <div class="container marketing">

            <!-- Three columns of text below the carousel -->
            <div class="row">
                <div class="col-lg-4">
                    <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Guitar" />" role="button">
                        <img class="img-circle" src="<c:url value="/resources/images/women.jpg"/>" alt="Instrument Image" width="140" height="140">
                    </a>

                    <h2>Women</h2>
                    <p>The best brands under women's clothing from across the world can be found right here at the best prices. She can never have enough of these in her wardrobe. Sporting the perfect look based on the occasion she goes to is an essential thing and a wide variety of clothes ranging from ethnic wear to western and sleepwear and winter wear, are all available online right here from some of the most sought after brands including Vero Moda, Levis, Forever New, Aurelia, global desi, W and so many more.</p>

                </div>



                <div class="col-lg-4">
                    <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Piano" />" role="button">
                        <img class="img-circle" src="<c:url value="/resources/images/men.jpg"/>" alt="Instrument Image" width="140" height="140">
                    </a>

                    <h2>Men</h2>
                    <p>global online fashion retailer offering thousands of menswear styles so you can stay ahead of the trends. Shop from our range of items including t-shirts, jeans, knitwear, sweats, coats and accessories; if you want it, we're pretty sure we've got it! With hundreds of styles landing each week and regular trend updates you can be sure to get the latest. </p>

                </div>


                <div class="col-lg-4">
                    <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Accessory" />" role="button">
                        <img class="img-circle" src="<c:url value="/resources/images/kids.jpg"/>" alt="Instrument Image" width="140" height="140">
                    </a>

                    <h2>Kids</h2>
                    <p>Shopping for babies garments is not an easy task but if your business provides a helping to the parents then it could be. These days people need the best quality for their babies at an affordable price</p>

                </div>
            </div>


<%@ include file="/WEB-INF/views/template/footer.jsp" %>
