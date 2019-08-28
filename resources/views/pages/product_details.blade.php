@extends('layout')
@section('content')
				
				<div class="col-sm-9 padding-right">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
								<img src="{{URL::to($product_by_details->product_image)}}" alt="" />
								
							</div>

                        </div>
						<div class="col-sm-7">
							<div class="product-information" style="overflow-x:auto;"><!--/product-information-->
								<!-- <img src="images/product-details/new.jpg" class="newarrival" alt="" /> -->
								<h2>{{$product_by_details->product_name}}</h2>
								
								
								<!-- <img src="images/product-details/rating.png" alt="" /> -->
								<span>
									<span>{{$product_by_details->product_price}}</span>
								</span>
								<p><b>Availability:</b> In Stock</p>
								<p><b>Condition:</b> New</p>
								<p><b>Manufacture:</b> {{$product_by_details->manufacture_name}}</p>
								<p><b>Category:</b> {{$product_by_details->category_name}}</p>

						      <form action="{{url('/add-to-cart')}}" method="post">
										{{csrf_field()}}
									<labe1>Quantity:</labe1>
									<input name="qty" type="number" value="1" style="width: 45px; text-align: center;" />
									<input type="hidden" name="product_id" value="{{$product_by_details->product_id}}">
									<button type="submit" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add to cart
									</button>
								</form>
								
							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->
					
					
					
					
				</div>
			</div>
		</div>

		
		</div>
		</div>
	</section>
  
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>


@endsection