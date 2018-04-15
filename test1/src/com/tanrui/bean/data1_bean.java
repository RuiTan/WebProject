package com.tanrui.bean;

public class data1_bean {
    private Integer score;
    private Integer times;

    public float getAve() {
        return ave;
    }

    public void setAve(float ave) {
        this.ave = ave;
    }

    private float ave;
    public Integer getScore() {
        return score;
    }
    public void setScore(Integer score) {
        this.score = score;
    }
    public Integer getTimes() {
        return times;
    }
    public void setTimes(Integer times) {
        this.times = times;
    }
    public data1_bean(Integer score, Integer times, float ave){
        this.score = score;
        this.times = times;
        this.ave = ave;
    }
}
