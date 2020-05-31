package cn.cuit.gyl.domain.business.pages;

import cn.cuit.gyl.domain.business.Cgddzhub;


import java.io.Serializable;

public class SearchCgddzhub implements Serializable {
    private Cgddzhub cgddzhub;
    private Integer start;
    private Integer row;

    public Cgddzhub getCgddzhub() {
        return cgddzhub;
    }

    public void setCgddzhub(Cgddzhub cgddzhub) {
        this.cgddzhub = cgddzhub;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getRow() {
        return row;
    }

    public void setRow(Integer row) {
        this.row = row;
    }
}
