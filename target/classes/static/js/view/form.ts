
namespace form{

	export class JsonResult {
		success: boolean;
		data: any;
		response:any;
	}

	class List{
		constructor(){
			$("#submit").click(this.submit.bind(this));
		}

		private submit(e:JQueryEventObject){
			let age = $("#submitForm").find("input[name=age]").val();
			let height = $("#submitForm").find("input[name=height]").val();
			let weight = $("#submitForm").find("input[name=weight]").val();

			let isNone = $("#submitForm").find("input[name=isNone]").is(":checked");
			let isCelery = $("#submitForm").find("input[name=isCelery]").is(":checked");
			let isCerealsAndGluten = $("#submitForm").find("input[name=isCerealsAndGluten]").is(":checked");
			let isLupin = $("#submitForm").find("input[name=isLupin]").is(":checked");
			let isMilk = $("#submitForm").find("input[name=isMilk]").is(":checked");
			let isMustard = $("#submitForm").find("input[name=isMustard]").is(":checked");
			let isSesame = $("#submitForm").find("input[name=isSesame]").is(":checked");
			let isSoyaAndSulphides = $("#submitForm").find("input[name=isSoyaAndSulphides]").is(":checked");

			let isMale = $("#submitForm input[name='gender']:checked").val();
			let isVegetarian = $("#submitForm input[name='foodType']:checked").val();
			let args = {
				age: age,
				height: height,
				weight: weight,
				isMale: isMale,
				isVegetarian: isVegetarian,
				isNone: isNone,
				isCelery: isCelery,
				isCerealsAndGluten: isCerealsAndGluten,
				isLupin: isLupin,
				isMilk: isMilk,
				isMustard: isMustard,
				isSesame: isSesame,
				isSoyaAndSulphides: isSoyaAndSulphides
			};

			Nicecom.Net.Ajax.post( "/", args ).trigger( e.target ).json<JsonResult>( u => {
				if (u.success) {
					//页面显示
					$("#Detail").find("#detailHeight").text(u.response.height);
					$("#Detail").find("#detailWeight").text(u.response.weight);
					$("#Detail").find("#detailAge").text(u.response.age);
					$("#Detail").find("#detailGender").text(u.response.gender);
					$("#Detail").find("#detailFoodType").text(u.response.foodType);
					$("#Detail").find("#detailAllergy").text(u.response.allergy);
					$("#Detail").find("#detailBMI").text(u.response.bmi);
                    $("#Detail").find("#detailBMR").text(u.response.bmr);
					$("#Detail").find("#detailToB").text(u.response.toB);
					$("#Detail").find("#detailRecommend").text(u.response.recommend);
					$('#mySubmit').modal({keyboard: false}).show();
				} else {
					$alert( u.data, "提示" );
				}
			});
		}
	}
	$(()=>new List());

}