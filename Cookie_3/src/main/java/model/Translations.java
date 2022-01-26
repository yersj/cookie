package model;

import java.util.ArrayList;

public class Translations {
    public static ArrayList<ArrayList<String>> translations=new ArrayList<>();

    static {
        ArrayList<String> russian=new ArrayList<>();
        ArrayList<String> english=new ArrayList<>();

        english.add("Full name");
        english.add("Age");
        english.add("Country");
        english.add("Gender");
        english.add("Insurance number");
        english.add("Send document");
        english.add("Male");
        english.add("Female");

        russian.add("ФИО");//0
        russian.add("Возраст");//1
        russian.add("Страна");//2
        russian.add("Пол");//3
        russian.add("Номер страховки");//4
        russian.add("Отправить документ");//5
        russian.add("Мужской");//6
        russian.add("Женский");//7

        translations.add(russian);
        translations.add(english);

    }
}
