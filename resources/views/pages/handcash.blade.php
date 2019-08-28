@extends('layout')
@section('content')

<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-sm-offset-1">
					<p class="alert-success">
						<?php
						$message=Session::get('message');
						if($message)
						{
							echo $message;
							Session::put('message',null);
						}

						?>
											
					</p>
					<div class="login-form" style=" padding: 25px; height: 450px; width: 450px; border-radius: 3px; border-style: outset; background-color: #e6c4c4; text-align: center; "><!--login form-->
						<h2 style="line-height: 35px;">Congratulations! your order successfully Submitted. <br>
						  Please, pay 25% amount of your total bill to confirm your order.<br>
						  Finally, Send a sms with your transaction id Or Call us.<br>
						  
						  bKash personal-01709054840.<br>
						  ROCKET Personal- 017090548407.<br>
					
					</h2>
						<h2 style="line-height: 35px;">We will contact as soon as possible</h2> 
					</div><!--/login form--><!--/login form-->
				</div>
				<div class="col-sm-1">
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	


@endsection