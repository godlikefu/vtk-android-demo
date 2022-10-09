package com.vtk.demo;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.kitware.JavaVTK.JavaVTKLib;
import com.kitware.VolumeRender.VolumeRenderLib;
import com.vtk.demo.databinding.ActivityMainBinding;
import com.vtk.demo.model.VTKViewModel;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    private List<VTKViewModel> data = new ArrayList<>();

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        data.add(new VTKViewModel("JavaVTK", JavaVTKLib.class.getName()));
        data.add(new VTKViewModel("VolumeRender", VolumeRenderLib.class.getName()));
        ActivityMainBinding binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());
        MyAdapter myAdapter = new MyAdapter();
        binding.rv.addItemDecoration(new DividerItemDecoration(this, LinearLayoutManager.VERTICAL));
        binding.rv.setAdapter(myAdapter);
        copyDemoFiles();
    }

    void showVtkView(String title, String classFullName) {
        Intent intent = new Intent(this, ActivityVtkView.class);
        intent.putExtra("title", title);
        intent.putExtra("classFullName", classFullName);
        startActivity(intent);
    }

    void copyDemoFiles() {
//        String name = "BigZ_RD_0.nrrd";
//        String path = FileUtils.copyFile(this, name, name);
    }

    class MyAdapter extends RecyclerView.Adapter<MyHolder> {
        @NonNull
        @Override
        public MyHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            View view = LayoutInflater.from(MainActivity.this)
                    .inflate(R.layout.main_item, null, false);
            view.setLayoutParams(new RecyclerView.LayoutParams(RecyclerView.LayoutParams.MATCH_PARENT, RecyclerView.LayoutParams.WRAP_CONTENT));
            return new MyHolder(view);
        }

        @Override
        public void onBindViewHolder(@NonNull MyHolder holder, int position) {
            VTKViewModel model = data.get(position);
            holder.tvTitle.setText(model.getTitle());
            holder.itemView.setOnClickListener(v -> showVtkView(model.getTitle(), model.getClassFullName()));

        }

        @Override
        public int getItemCount() {
            return data.size();
        }
    }

    static class MyHolder extends RecyclerView.ViewHolder {
        public TextView tvTitle;

        public MyHolder(View view) {
            super(view);
            tvTitle = view.findViewById(R.id.tv_title);
        }
    }


}