package com.vtk.demo;

import android.content.Context;
import android.util.Log;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class FileUtils {

    public static String copyFile(Context context, String assetName, String fileName) {
        File file = new File(context.getDataDir(), fileName);
        try {
            InputStream io = context.getAssets().open(assetName);
//            Log.e("len", io.available() + "");
            if (!file.exists()) {
                FileOutputStream fos = new FileOutputStream(file);
                byte[] buf = new byte[1024];
                int len;
                while ((len = io.read(buf)) != -1) {
                    fos.write(buf, 0, len);
                }
                fos.flush();
                fos.close();
                Log.e("FileUtils:", "copy:success:path:" + file.getAbsolutePath());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return  file.getAbsolutePath();
    }

}
