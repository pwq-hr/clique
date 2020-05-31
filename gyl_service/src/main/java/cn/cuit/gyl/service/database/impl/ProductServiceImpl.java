package cn.cuit.gyl.service.database.impl;

import cn.cuit.gyl.dao.database.IProductDao;
import cn.cuit.gyl.domain.database.Product;
import cn.cuit.gyl.service.database.IProductService;
import cn.cuit.gyl.utils.UUIDUtils;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("productServiceImpl")
public class ProductServiceImpl implements IProductService {

    @Autowired
    @Qualifier("iProductDao")
    IProductDao dao = null;

    @Override
    public List<Product> findAll(Integer pageNum, Integer pageSize) throws Exception {
        PageHelper.startPage(pageNum, pageSize);
        List<Product> products = dao.findAll();
        return products;
    }

    @Override
    public void save(Product product) throws Exception {
        String productId = UUIDUtils.getPrimaryKey();
        product.setId(productId);
        dao.save(product);
    }

    @Override
    public void deleteByIds(String[] ids) throws Exception {
        for (String id:ids) {
            dao.deleteById(id);
        }
    }

    @Override
    public void deleteById(String id) throws Exception {
        dao.deleteById(id);
    }

    @Override
    public Product findById(String id) throws Exception {
        Product product = dao.findById(id);
        return product;
    }

    @Override
    public void updateById(Product product) throws Exception {
        dao.updateById(product);
    }
}
