package cn.cuit.gyl.service.business;

import cn.cuit.gyl.domain.business.Cgygdzhib;
import cn.cuit.gyl.domain.business.Cgygdzhub;

import java.util.Date;
import java.util.List;

public interface CgygdService {
    List<Cgygdzhub> findByCondition(Cgygdzhub a) throws Exception;
    List<Cgygdzhib> findCgYgZibByZid(Long zid) throws Exception;
    void SaveCgYgZhuAndZiD(Cgygdzhub a) throws Exception;
    Long getHh(Long zid) throws  Exception;
    void SaveZib(Cgygdzhib a) throws Exception;
    Cgygdzhub findById(Long id) throws  Exception;
    void UpdateZhuB(Cgygdzhub a) throws  Exception;
    void DeleteZhuB(Long id) throws Exception;
    void DeleteZhuBs(String ids) throws Exception;
    Cgygdzhib findCgYgZibById(Long id) throws Exception;
    void UpdateZiB(Cgygdzhib a) throws  Exception;
    void DeleteZhiB(Long id) throws Exception;
    void DeleteZhiBs(String ids) throws Exception;
    void spOk(String djh, String spr, Date sprq) throws Exception;
    void spNo(String djh, String spr, Date sprq) throws Exception;
    void YgBeDd(Cgygdzhub a) throws Exception;
}
