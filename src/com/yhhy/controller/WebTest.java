package com.yhhy.controller;

import com.yhhy.bean.Product;
import com.yhhy.dao.ProductDao;
import com.yhhy.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import org.junit.Test;

import java.util.List;

/**
 * Created by yhhy on 2019/2/28.
 */
public class WebTest {

        @Test
        public void empTest() {
            //加载全局配置文件
            SqlSessionFactory sqlSessionFactory = MyBatisUtil.getSqlSessionFactory();
            SqlSession sqlSession = sqlSessionFactory.openSession();

            try{
                ProductDao productDao = sqlSession.getMapper(ProductDao.class);
                List<Product> product = productDao.getListPro();
                sqlSession.commit();
                System.out.println(product);
            }finally {
                sqlSession.close();
            }

        }
    }
