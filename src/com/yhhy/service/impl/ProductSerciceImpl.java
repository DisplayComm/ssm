package com.yhhy.service.impl;

import com.yhhy.bean.Product;
import com.yhhy.dao.ProductDao;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by yhhy on 2019/2/28.
 */
public class ProductSerciceImpl implements ProductDao {

    @Autowired
    ProductDao productDao;

    @Override
    public List<Product> getListPro() {
        return productDao.getListPro();
    }
}
