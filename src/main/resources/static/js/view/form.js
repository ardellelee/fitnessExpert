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
                isSoyaAndSulphides: isSoyaAndSulphides
            };
            Nicecom.Net.Ajax.post("/", args).trigger(e.target).json(function (u) {
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