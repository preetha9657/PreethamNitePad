package com.example.notepadpractice.util;



import androidx.room.TypeConverter;

import java.util.Date;

/**
 * Created by Preetham S on 09/02/19.
 */

public class DateRoomConverter {

    @TypeConverter
    public static Date toDate(Long value) {
        return value == null ? null : new Date(value);
    }

    @TypeConverter
    public static Long toLong(Date value) {
        return value == null ? null : value.getTime();
    }
}
