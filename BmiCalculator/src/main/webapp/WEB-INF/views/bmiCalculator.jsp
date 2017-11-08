<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript"
    src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script
    src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCJnj2nWoM86eU8Bq2G4lSNz3udIkZT4YY&sensor=false">
</script>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


Weight
<br><input type="text" id="weight" value=""> kg </br>
Height
<br><input type="text" id="heightMeter" value=""> m <input type="text" id="heightCm" value=""> cm </br>

bmi value <p id="bmiValue"></p>

<script>

$("#weight,#heightMeter,#heightCm").keyup(function(){

	var weight=$("#weight").val();
	var heightMeter=$("#heightMeter").val();
	var heightCm=$("#heightCm").val();
	if(weight!=""){
		if(heightMeter!=""){
			if(heightCm!=""){
				var heightInMeter = heightMeter+"."+heightCm
				bmi=weight/(heightInMeter*heightInMeter)
				document.getElementById('bmiValue').innerHTML = bmi;
			}
			else{
				document.getElementById('bmiValue').innerHTML = "";
			}
		}
		else{
		document.getElementById('bmiValue').innerHTML = "";
		}
	}else{
	document.getElementById('bmiValue').innerHTML = "";
	}
});


</script>
