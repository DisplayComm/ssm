package com.yhhy.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yhhy.bean.Product;
import com.yhhy.dao.ProductDao;
import com.yhhy.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import org.junit.Test;

import java.util.List;
import java.util.Map;

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

                PageHelper.startPage(1,5);
//                List<Product> product = productDao.getListPro();

//                Product product = new Product();
//                product.setProduct_name("测试");

                List<Product> list = sqlSession.selectList("getListPro",null);
                for (Product product1:list){
                    System.out.println("分页查询："+product1);
                }
            }finally {
                sqlSession.close();
            }
        }
    }
