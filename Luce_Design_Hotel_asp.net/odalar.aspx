<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="odalar.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Odalar</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="top_menu1" Runat="Server">
    <div id="ust-kapsayici4">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="top_menu2" Runat="Server">
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="icerik" Runat="Server">
    <!--Yazı metinleri kapsayıcı başlangıç-->
	<div id="yazi-metinleri-kapsayici">
		<div id="yazi">
			<h3>Junior Suit Odamız (30m2)</h3>
			<p>Doğalı şıklıkla buluşturuyor. M2 olarak diğerlerinden büyük odalarımızın geniş balkonları var. Alaçatı’nın simgesi rüzgar gülleri ve tam karşınızdan doğan Dolunay size unutamayacağınız anlar yaşatacak.</p>
		</div>
		
		<div id="yazi">
			<h3>Jakuzili Çatı Suiti (45m2)</h3>
			<p>Çatı katında, beyaz ahşap tavan ve çatı pencerelerinin sıcaklıgını yaşayabileceğiniz bu odalar, 45 m2 genişliği ve beyaz dekoruyla denizin serinliğini çagrıştırıyor .yataklar 2*2 mt king size, duşun haricinde oda içindeki jacuzili kuvetleri ve oturma grupları ile her mevsim rahatlayabileceğinizı bir ambiansa sahip.</p>
		</div>
		
		<div id="yazi">
			<h3>Cumbalı Odalarımız (25m2)</h3>
			<p>Romantik tarzda dekore edilmiş odanızın Rum evlerinin en karakteristik özelliği olan cumbasında, yorucu bir günün ardından geceye hazırlanırken kısa bir mola vererek kahvenizi yudumlayabilirsiniz.</p>
		</div>
		
		<div id="yazi">
			<h3>Delux Suit Odamız (38m2)</h3>
			<p>Doğalı şıklıkla buluşturuyor. M2 olarak diğerlerinden büyük odalarımızın geniş balkonları var. Alaçatı’nın simgesi rüzgar gülleri ve tam karşınızdan doğan Dolunay size unutamayacağınız anlar yaşatacak.</p>
		</div>
		<!-- #region Jssor Slider Begin -->

		<!-- Generated by Jssor Slider Maker Online. -->
		<!-- This demo works without jquery library. -->

		<script type="text/javascript" src="js/jssor.slider.min.js"></script>
		<!-- use jssor.slider.debug.js instead for debug -->
		<script>
		    jssor_1_slider_init = function () {

		        var jssor_1_options = {
		            $AutoPlay: true,
		            $DragOrientation: 2,
		            $PlayOrientation: 2,
		            $ArrowNavigatorOptions: {
		                $Class: $JssorArrowNavigator$
		            }
		        };

		        var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

		        //responsive code begin
		        //you can remove responsive code if you don't want the slider scales while window resizing
		        function ScaleSlider() {
		            var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
		            if (refSize) {
		                refSize = Math.min(refSize, 600);
		                jssor_1_slider.$ScaleWidth(refSize);
		            }
		            else {
		                window.setTimeout(ScaleSlider, 30);
		            }
		        }
		        ScaleSlider();
		        $Jssor$.$AddEvent(window, "load", ScaleSlider);
		        $Jssor$.$AddEvent(window, "resize", ScaleSlider);
		        $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
		        //responsive code end

		        //responsive code begin
		        //you can remove responsive code if you don't want the slider scales while window resizing
		        function ScaleSlider() {
		            var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
		            if (refSize) {
		                refSize = Math.min(refSize, 600);
		                jssor_1_slider.$ScaleWidth(refSize);
		            }
		            else {
		                window.setTimeout(ScaleSlider, 30);
		            }
		        }
		        ScaleSlider();
		        $Jssor$.$AddEvent(window, "load", ScaleSlider);
		        $Jssor$.$AddEvent(window, "resize", ScaleSlider);
		        $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
		        //responsive code end
		    };
		</script>

		<div id="jssor_1" style=" clear:both; width: 600px; height: 300px; overflow: hidden; visibility: hidden;">
			<!-- Loading Screen -->
			<div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
				<div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
				<div style="position:absolute;display:block;background:url('../img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
			</div>
			<div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden;">
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-1.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-2.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-3.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-4.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-5.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-6.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-7.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-8.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-9.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-10.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-12.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-13.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-14.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-15.jpg" />
				</div>
				<div data-p="112.50" style="display: none;">
					<img data-u="image" src="img/001-16.jpg" />
				</div>
			</div>
			<!-- Arrow Navigator -->
			<span data-u="arrowleft" class="jssora08l" style="top:8px;left:8px;width:50px;height:50px;" data-autocenter="1"></span>
			<span data-u="arrowright" class="jssora08r" style="bottom:8px;right:8px;width:50px;height:50px;" data-autocenter="1"></span>
			<a href="http://www.jssor.com" style="display:none">Slideshow Maker</a>
		</div>
		<script>
		    jssor_1_slider_init();
		</script>

		<!-- #endregion Jssor Slider End -->
		
	</div>
	<!--Yazı metinleri kapsayıcı bitiş-->
</asp:Content>

