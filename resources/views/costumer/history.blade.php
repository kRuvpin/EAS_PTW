<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>{{config('app.name')}}</title>

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
                    <li><a href="/costumer/cart">Cart</a></li>
                    <li class="active"><a href="/costumer/history">History</a></li>


                </ul>
            </nav>
            <!-- Button Group -->
            <div class="amado-btn-group mt-30 mb-100">
                <a href="/logout" class="btn amado-btn active">Logout</a>
            </div>
            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <a href="/costumer/search" class="search-nav"><img src="/img/core-img/search.png" alt=""> Search</a>
            </div>
        </header>
        <!-- Header Area End -->

        <!-- Product Catagories Area Start -->
        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="cart-title mt-50">
                            <h2>History</h2>
                        </div>

                        <div class="cart-table clearfix">
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>User Id</th>
                                        <th>Kode Pembayaran</th>
                                        <th>Jumlah</th>
                                        <th>Price</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        @php $i = 1; @endphp
                                        @foreach($history as $trx)
                                        <td class="cart_product_desc">
                                            <h5>{{$i++}}</h5>
                                        </td>
                                        <td class="price">
                                            <span>{{$trx->userid}}</span>
                                        </td>
                                        <td class="price">
                                            <span>{{$trx->kodepembayaran}}</span>
                                        </td>
                                        <td class="price">
                                            <span>{{$trx->jumlah}}</span>
                                        </td>
                                        <td class="price">
                                            <span>{{$trx->biaya}}</span>
                                        </td>
                                        <td class="price">
                                            <span>{{$trx->status}}</span>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product Catagories Area End -->
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