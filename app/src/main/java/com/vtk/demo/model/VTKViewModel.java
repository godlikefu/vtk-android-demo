package com.vtk.demo.model;

public class VTKViewModel {
    String title;
    String classFullName;

    public VTKViewModel(String title, String classFullName) {
        this.title = title;
        this.classFullName = classFullName;
    }

    public String getTitle() {
        return title;
    }


    public String getClassFullName() {
        return classFullName;
    }


}
