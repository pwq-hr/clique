package cn.cuit.gyl.service.business;

import cn.cuit.gyl.domain.business.Cgddzhib;
import cn.cuit.gyl.domain.business.Cgddzhub;

import java.util.Date;
import java.util.List;

public interface CgddService {
    List<Cgddzhub> findAll();
    List<Cgddzhub> findByCondition(Cgddzhub cgddzhub) throws Exception;
    Cgddzhub findById(Long id);
    Long getZiBHH(Long zid) throws  Exception;
    void updateById(Cgddzhub a) throws Exception;
    void deleteById(Long id);
    void deleteZiById(Long id);
    void updateZiById(Cgddzhib a) throws Exception;
    void deleteZhiByIds(String ids) throws Exception;
    void deleteByIds(String ids) throws Exception;
    void saveZib(Cgddzhib cgddzhib)throws Exception;
    void saveCgddzhub(Cgddzhub cgddzhub);
    void spOk(String djh, String spr, Date sprq) throws Exception;
    void spNo(String djh, String spr, Date sprq) throws Exception;
    List<Cgddzhib> findZibByZhuId(Long id);
    void updateDj(Cgddzhub a) throws Exception;
    Cgddzhib findZibByZiId(Long id);
    void saveCgddZhiAndZhu(Cgddzhub cgddzhub) throws Exception;
    List<Cgddzhub> findByAllAndSfspIsZero(Cgddzhub cgddzhub) throws Exception;
    void SaveZhuAndZi(Cgddzhub cgdd_zhub) throws  Exception;
    void SaveZib(Cgddzhib a,String xgr,Date xgrq) throws  Exception;
    void UpdateZhiB(Cgddzhib cgddzhib,String xgr,Date xgrq) throws Exception;

}
