/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package accdbp.entity;

import java.util.List;

/**
 *
 * @author mulyadi
 */
public class BookPrint {

    String code;
    String name;
    double amount;
    List<BookPrintDetail> detail;

    public BookPrint(String code, String name, double amount, List<BookPrintDetail> detail) {
        this.code = code;
        this.name = name;
        this.amount = amount;
        this.detail = detail;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public List<BookPrintDetail> getDetail() {
        return detail;
    }

    public void setDetail(List<BookPrintDetail> detail) {
        this.detail = detail;
    }

}
