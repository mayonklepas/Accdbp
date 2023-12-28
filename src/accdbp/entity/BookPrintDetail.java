/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package accdbp.entity;

import java.util.Date;

/**
 *
 * @author mulyadi
 */
public class BookPrintDetail {
    String id;
    Date dateTrans;
    String docNo;
    String refNo;
    String docType;
    String accCode;
    double debit;
    double credit;
    double saldoMaster;
    String description;

    public BookPrintDetail(String id, Date dateTrans, String docNo, String refNo, String docType, String accCode, double debit, double credit, double saldoMaster, String description) {
        this.id = id;
        this.dateTrans = dateTrans;
        this.docNo = docNo;
        this.refNo = refNo;
        this.docType = docType;
        this.accCode = accCode;
        this.debit = debit;
        this.credit = credit;
        this.saldoMaster = saldoMaster;
        this.description = description;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getDateTrans() {
        return dateTrans;
    }

    public void setDateTrans(Date dateTrans) {
        this.dateTrans = dateTrans;
    }

    public String getDocNo() {
        return docNo;
    }

    public void setDocNo(String docNo) {
        this.docNo = docNo;
    }

    public String getRefNo() {
        return refNo;
    }

    public void setRefNo(String refNo) {
        this.refNo = refNo;
    }

    public String getDocType() {
        return docType;
    }

    public void setDocType(String docType) {
        this.docType = docType;
    }

    public String getAccCode() {
        return accCode;
    }

    public void setAccCode(String accCode) {
        this.accCode = accCode;
    }

    public double getDebit() {
        return debit;
    }

    public void setDebit(double debit) {
        this.debit = debit;
    }

    public double getCredit() {
        return credit;
    }

    public void setCredit(double credit) {
        this.credit = credit;
    }

    public double getSaldoMaster() {
        return saldoMaster;
    }

    public void setSaldoMaster(double saldoMaster) {
        this.saldoMaster = saldoMaster;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
