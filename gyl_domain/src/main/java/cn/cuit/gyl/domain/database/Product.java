package cn.cuit.gyl.domain.database;

public class Product {

    private String id;
    private String name; //商品名称
    private String type; //型号
    private String num; //编码
    private String unit;//单位
    private Double price;//价格
    private String priceStr;
    private Double rate;//税率
    private String rateStr;
    private String desc;//描述

    //多表

    @Override
    public String toString() {
        return "Product{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", num='" + num + '\'' +
                ", unit='" + unit + '\'' +
                ", price=" + price +
                ", priceStr='" + priceStr + '\'' +
                ", rate=" + rate +
                ", rateStr='" + rateStr + '\'' +
                ", desc='" + desc + '\'' +
                '}';
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        if (price != null){
            this.priceStr = price+"元";
        }
        this.price = price;
    }

    public String getPriceStr() {
        return priceStr;
    }

    public void setPriceStr(String priceStr) {
        this.priceStr = priceStr;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Double getRate() {
        return rate;
    }

    public String getRateStr() {
        return rateStr;
    }

    public void setRateStr(String rateStr) {
        this.rateStr = rateStr;
    }

    public void setRate(Double rate) {
        if(rate != null){
            this.rateStr = rate*100+"%";
        }
        this.rate = rate;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
}
