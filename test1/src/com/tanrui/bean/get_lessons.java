package com.tanrui.bean;

public class get_lessons {
    String lessons_name;
    String lessons_num;

    public get_lessons(String name, String num){
        this.lessons_name = name;
        this.lessons_num = num;
    }

    public String getLessons_name() {
        return lessons_name;
    }

    public void setLessons_name(String lessons_name) {
        this.lessons_name = lessons_name;
    }

    public String getLessons_num() {
        return lessons_num;
    }

    public void setLessons_num(String lessons_num) {
        this.lessons_num = lessons_num;
    }
}
