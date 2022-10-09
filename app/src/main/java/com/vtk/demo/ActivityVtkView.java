package com.vtk.demo;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;

import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

import com.kitware.VTKView;

public class ActivityVtkView extends AppCompatActivity {
    //vtk view
    VTKView mView;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        String title = intent.getStringExtra("title");
        String classFullName = intent.getStringExtra("classFullName");
        VTKView.VTKLib lib;
        try {
            if (TextUtils.isEmpty(classFullName)) {
                classFullName = "com.kitware.JavaVTK.JavaVTKLib";
            }
            Class<?> userClass = Class.forName(classFullName);
            //new VTKView.VTKLib
            lib = (VTKView.VTKLib) userClass.newInstance();
            mView = new VTKView(getApplication(), lib);
            setContentView(mView);
        } catch (Exception e) {
            e.printStackTrace();
            setContentView(R.layout.activity_vtk_error);
        }

        ActionBar actionBar = getSupportActionBar();
        if (actionBar != null) {
            actionBar.setHomeButtonEnabled(true);
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setTitle(TextUtils.isEmpty(title) ? "Vtk-View-Demo" : title);
        }

    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                this.finish(); // back button
                return true;
        }
        return super.onOptionsItemSelected(item);
    }


    @Override
    protected void onPause() {
        super.onPause();
        if (mView != null) {
            mView.onPause();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (mView != null) {
            mView.onResume();
        }
    }
}
