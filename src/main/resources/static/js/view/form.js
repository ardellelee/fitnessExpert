var form;
(function (form) {
    var JsonResult = (function () {
        function JsonResult() {
        }
        return JsonResult;
    }());
    form.JsonResult = JsonResult;
    var List = (function () {
        function List() {
            $("#submit").click(this.submit.bind(this));
        }
        List.prototype.submit = function (e) {
            var age = $("#submitForm").find("input[name=age]").val();
            var height = $("#submitForm").find("input[name=height]").val();
            var weight = $("#submitForm").find("input[name=weight]").val();
            var isNone = $("#submitForm").find("input[name=isNone]").is(":checked");
            var isCelery = $("#submitForm").find("input[name=isCelery]").is(":checked");
            var isCerealsAndGluten = $("#submitForm").find("input[name=isCerealsAndGluten]").is(":checked");
            var isLupin = $("#submitForm").find("input[name=isLupin]").is(":checked");
            var isMilk = $("#submitForm").find("input[name=isMilk]").is(":checked");
            var isMustard = $("#submitForm").find("input[name=isMustard]").is(":checked");
            var isSesame = $("#submitForm").find("input[name=isSesame]").is(":checked");
            var isSoyaAndSulphides = $("#submitForm").find("input[name=isSoyaAndSulphides]").is(":checked");
            var isMale = $("#submitForm input[name='gender']:checked").val();
            var isVegetarian = $("#submitForm input[name='foodType']:checked").val();
            var isDietCertain = $("#dietCertain").val();
            var isExerciseCertain = $("#exerciseCertain").val();
            var isMealCertain = $("#mealCertain").val();
            var isMedicalCertain=$("#medicalCertain").val();
            var args = {
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
                isSoyaAndSulphides: isSoyaAndSulphides,
                isDietCertain: isDietCertain,
                isExerciseCertain:isExerciseCertain,
                isMealCertain:isMealCertain,
                isMedicalCertain:isMedicalCertain
            };
            Nicecom.Net.Ajax.post("/", args).trigger(e.target).json(function (u) {
                if (u.success) {
                    //页面显示
                    $("#detailHeight").text(u.response.height);
                    $("#detailWeight").text(u.response.weight);
                    $("#detailAge").text(u.response.age);
                    $("#detailGender").text(u.response.gender);
                    $("#detailFoodType").text(u.response.foodType);
                    $("#detailAllergy").text(u.response.allergy);
                    $("#detailBMI").text(u.response.bmi);
                    $("#detailBMR").text(u.response.bmr);
                    $("#detailToB").text(u.response.toB);
                    $("#detailPlan").text(u.response.plan);
                    $("#detailRecommend").text(u.response.recommend);
                    $("#fooditemb1").text(u.response.breakfast1Name);
                    $("#fooditemb2").text(u.response.breakfast2Name);
                    $("#fooditemb3").text(u.response.breakfast3Name);
                    $("#fooditemb4").text(u.response.breakfast4Name);
                    $("#fooditemb5").text(u.response.breakfast5Name);
                    $("#fooditemb6").text(u.response.breakfast6Name);
                    $("#quantityb1").text(u.response.breakfast1Qty);
                    $("#quantityb2").text(u.response.breakfast2Qty);
                    $("#quantityb3").text(u.response.breakfast3Qty);
                    $("#quantityb4").text(u.response.breakfast4Qty);
                    $("#quantityb5").text(u.response.breakfast5Qty);
                    $("#quantityb6").text(u.response.breakfast6Qty);
                    $('#mySubmit').modal({ keyboard: false }).show();
                }
                else {
                    $alert(u.data, "提示");
                }
            });
        };
        return List;
    }());
    $(function () { return new List(); });
})(form || (form = {}));
//# sourceMappingURL=form.js.map