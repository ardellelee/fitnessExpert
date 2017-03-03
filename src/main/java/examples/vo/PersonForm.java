package examples.vo;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotNull;

@Getter
@Setter
public class PersonForm {

    private int age;
    private int height;
    private int weight;
    private int isMale;
    private int isVegetarian;
    private double isExerciseCertain;
    private double isMealCertain;
    private double isDietCertain;
    private double isMedicalCertain;
    private Boolean isNone;
    private Boolean isCelery;
    private Boolean isCerealsAndGluten;
    private Boolean isLupin;
    private Boolean isMilk;
    private Boolean isMustard;
    private Boolean isSesame;
    private Boolean isSoyaAndSulphides;

}
