<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">

    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title> {{config('app.name')}}</title>

    <!-- Favicon  -->
    <link rel="icon" href="/assets/logo.png">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/css/core-style.css">
    <link rel="stylesheet" href="/style.css">

</head>

<body>
    <!-- ##### Main Content Wrapper Start ##### -->
    <div class="main-content-wrapper d-flex clearfix">

        <!-- Header Area Start -->
        <header class="header-area clearfix">
            <!-- Close Icon -->
            <div class="nav-close">
                <i class="fa fa-close" aria-hidden="true"></i>
            </div>
            <!-- Logo -->
            <div class="logo">
                <a href="index.html"><img src="/assets/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li><a href="/costumer/index">Home</a></li>
                    <li class="active"><a href="/costumer/cart">Cart</a></li>
                    <li><a href="/costumer/history">History</a></li>
                </ul>
            </nav>
            <!-- Button Group -->
            <div class="amado-btn-group mt-30 mb-100">
                <a href="/logout" class="btn amado-btn active">Logout</a>
            </div>
            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <a href="#" class="search-nav"><img src="/img/core-img/search.png" alt=""> Search</a>
            </div>
        </header>
        <!-- Header Area End -->

        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="cart-title mt-50">
                            <h2>Shopping Cart</h2>
                        </div>

                        <div class="cart-table clearfix">
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Opsi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        @foreach($cart as $crt)
                                        <td class="cart_product_img">
                                            <a href="#"><img src="{{ url('/baju/'.$crt->gambar) }}" alt="Product"></a>
                                        </td>
                                        <td class="cart_product_desc">
                                            <h5>{{$crt->nama}}</h5>
                                        </td>
                                        <td class="price">
                                            <span>{{$crt->harga}}</span>
                                        </td>
                                        <td class="price">
                                            <span>{{$crt->jumlah}}</span>
                                        </td>
                                        <td class="price">
                                            <a style="margin:10px" href="/costumer/cart/delete/{{$crt->cartid}}">
                                                <i class="zmdi zmdi-delete"></i>
                                            </a>
                                        </td>

                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <form action="/costumer/cart/checkout" method="POST" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                <h5>Cart Total</h5>
                                <ul class="summary-table">
                                    <li><span>total:</span> <span>Rp{{$bayar}}</span></li>
                                    <li>
                                        <div class="form-group">
                                            <span>Bukti Pembayaran:</span>
                                            <span> <input type="file" name="bukti" required>
                                            </span>
                                        </div>
                                    </li>
                                    <!-- <li><span>delivery:</span> <span>Free</span></li> -->
                                    <!-- <li><span>total:</span> <span>$140.00</span></li> -->
                                </ul>
                                <div class="cart-btn mt-100">
                                    <button type="submit" name="addtocart" value="checkout" class="btn amado-btn">Checkout</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Main Content Wrapper End ##### -->

    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
    <script src="/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="/js/plugins.js"></script>
    <!-- Active js -->
    <script src="/js/active.js"></script>

</body>

</html>