package com.yhhy.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/**
 * Created by yhhy on 2019/2/28.
 */
public class MyBatisUtil {
    static SqlSessionFactory sqlSessionFactory;
    static {
        String mybatis_con = "config/mybatis-config.xml";
        Reader reader = null;
        try {
            reader = Resources.getResourceAsReader(mybatis_con);
        } catch (IOException e) {
            e.printStackTrace();
        }

        sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
    }


    public static SqlSessionFactory getSqlSessionFactory(){
        return sqlSessionFactory;
    }


}
