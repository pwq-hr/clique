package cn.cuit.gyl.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 转换的工具类
 */
public class ConverterUtils {

    /**
     * 日期转字符串方法
     * @param date
     * @param pattern
     * @return
     */
    public static  String dateToString(Date date,String pattern){
        String format = null;
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
            format = simpleDateFormat.format(date);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return format;
    }

    /**
     * 字符串转日期方法
     * @param str
     * @param pattern
     * @return
     */
    public static  Date stringToDate(String str,String pattern){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
        Date date = null;
        try {
            date = simpleDateFormat.parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
}
