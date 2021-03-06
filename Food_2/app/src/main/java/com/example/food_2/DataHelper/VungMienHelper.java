package com.example.food_2.DataHelper;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import androidx.annotation.Nullable;

import com.example.food_2.Model.CategoryModel;
import com.example.food_2.Model.VungMienModel;

import java.util.ArrayList;

public class VungMienHelper extends FoodAppHelper {

    public VungMienHelper(@Nullable Context context) {
        super(context);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("Create table " + this.VungMien + "(id interger primary key, ten_vungmien text not null, noidung not null)");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("drop table if exists " + this.VungMien );
        db.execSQL("Create table " + this.VungMien  + "(id interger primary key, ten_vungmien text not null, noidung not null)");
    }

    public void update(ArrayList<VungMienModel> vungMienModels){
        SQLiteDatabase db = getWritableDatabase();
        for (VungMienModel vm: vungMienModels) {
            ContentValues ct = new ContentValues();
            ct.put("id",vm.getId());
            ct.put("ten_vungmien",vm.getTen_vungmien());
            ct.put("noidung",vm.getNoidung());
            db.insert(this.VungMien ,null,ct);
        }
    }

    public boolean add(VungMienModel vungMienModel){
        SQLiteDatabase db = getWritableDatabase();
        ContentValues ct = new ContentValues();
        ct.put("id",vungMienModel.getId());
        ct.put("ten_vungmien",vungMienModel.getNoidung());
        ct.put("noidung",vungMienModel.getNoidung());
        if(db.insert(this.VungMien ,null,ct) == -1)
            return false;
        return true;
    }

    public boolean delete(int id){
        SQLiteDatabase db = getWritableDatabase();
        if(db.delete(this.VungMien ,"id = " + id, null ) == -1)
            return false;
        return true;
    }

    public VungMienModel getById(int id){
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from " + this.VungMien  + " where id = " + String.valueOf(id), null);
        if (cursor.getCount() == 0)
            return null;
        VungMienModel vungMienModel = null;
        while(cursor.moveToNext()){
            vungMienModel = new VungMienModel(
                    cursor.getInt(0),
                    cursor.getString(1),
                    cursor.getString(2)
            );

        }
        return vungMienModel;
    }
}
