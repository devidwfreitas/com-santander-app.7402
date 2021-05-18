package com.santander.app.contacorrente.domain;

import android.support.annotation.Nullable;
import eks;
import gvw;
import mys;
import nab;
import org.json.JSONObject;

public class ConsultarExtratoHubRequest {
  @eks(a = "callbackIndicator")
  private String callbackIndicator;
  
  @eks(a = "calledbackItem")
  private String calledbackItem;
  
  @eks(a = "ccApplicationGeneralBalance")
  private String ccApplicationGeneralBalance;
  
  @eks(a = "ccApplicationGraceGeneralBalance")
  private String ccApplicationGraceGeneralBalance;
  
  @eks(a = "ccApplicationGraceTotalBalance")
  private String ccApplicationGraceTotalBalance;
  
  @eks(a = "ccApplicationGracelessTotalBalance")
  private String ccApplicationGracelessTotalBalance;
  
  @eks(a = "ccApplicationTotalBalance")
  private String ccApplicationTotalBalance;
  
  @eks(a = "ccOutGraceGeneralBalance")
  private String ccOutGraceGeneralBalance;
  
  @eks(a = "cciApplicationGeneralBalance")
  private String cciApplicationGeneralBalance;
  
  @eks(a = "cciApplicationGraceGeneralBalance")
  private String cciApplicationGraceGeneralBalance;
  
  @eks(a = "cciApplicationGraceTotalBalance")
  private String cciApplicationGraceTotalBalance;
  
  @eks(a = "cciApplicationGracelessTotalBalance")
  private String cciApplicationGracelessTotalBalance;
  
  @eks(a = "cciApplicationTotalBalance")
  private String cciApplicationTotalBalance;
  
  @eks(a = "cciOutGraceGeneralBalance")
  private String cciOutGraceGeneralBalance;
  
  @eks(a = "checkingAccountIndex")
  private String checkingAccountIndex;
  
  @eks(a = "destinationMove")
  private String destinationMove;
  
  @eks(a = "destinationMoveDate")
  private String destinationMoveDate;
  
  @eks(a = "endMoveDate")
  private String endMoveDate;
  
  @eks(a = "firstCallIndicator")
  private String firstCallIndicator;
  
  @eks(a = "fromMove")
  private String fromMove;
  
  @eks(a = "moveDate")
  private String moveDate;
  
  @eks(a = "moveOrderIndicator")
  private String moveOrderIndicator;
  
  @eks(a = "previousBalance")
  private String previousBalance;
  
  @eks(a = "productCode")
  private String productCode;
  
  @eks(a = "quantityCalledbackItens")
  private String quantityCalledbackItens;
  
  @eks(a = "reaCode")
  private String reaCode;
  
  @eks(a = "responseIndicator")
  private String responseIndicator;
  
  @eks(a = "savingsIndicator")
  private String savingsIndicator;
  
  @eks(a = "startMoveDate")
  private String startMoveDate;
  
  @eks(a = "statementType")
  private String statementType;
  
  @eks(a = "yieldGeneralValue")
  private String yieldGeneralValue;
  
  @eks(a = "yieldPerApplicationTotalGeneralValue")
  private String yieldPerApplicationTotalGeneralValue;
  
  public ConsultarExtratoHubRequest(Conta paramConta, String paramString1, String paramString2, @Nullable ExtratoContract paramExtratoContract) {
    String str1;
    String str2 = nab.a().b("000000000000000+");
    if (paramExtratoContract != null && paramExtratoContract instanceof ExtratoResponse) {
      gvw gvw2 = ((ExtratoResponse)paramExtratoContract).getEntry();
      gvw gvw1 = gvw2;
      if (gvw2 != null) {
        gvw2.a();
        gvw1 = gvw2;
      } 
    } else {
      paramExtratoContract = null;
    } 
    this.checkingAccountIndex = paramConta.getIndiceAgenciaConta();
    if (paramExtratoContract == null) {
      str1 = "D";
    } else {
      str1 = ((gvw)paramExtratoContract).E;
    } 
    this.moveOrderIndicator = str1;
    if (paramExtratoContract == null) {
      str1 = "999999999";
    } else {
      str1 = ((gvw)paramExtratoContract).B;
    } 
    this.destinationMove = str1;
    if (paramExtratoContract == null) {
      str1 = "000000000";
    } else {
      str1 = ((gvw)paramExtratoContract).A;
    } 
    this.fromMove = str1;
    if (paramExtratoContract == null) {
      str1 = "05";
    } else {
      str1 = ((gvw)paramExtratoContract).a;
    } 
    this.statementType = str1;
    if (paramExtratoContract != null)
      paramString1 = ((gvw)paramExtratoContract).c; 
    this.startMoveDate = paramString1;
    if (paramExtratoContract != null)
      paramString2 = ((gvw)paramExtratoContract).d; 
    this.endMoveDate = paramString2;
    if (paramExtratoContract == null) {
      str1 = "";
    } else {
      str1 = ((gvw)paramExtratoContract).v;
    } 
    this.moveDate = str1;
    if (paramExtratoContract == null) {
      str1 = "";
    } else {
      str1 = ((gvw)paramExtratoContract).x;
    } 
    this.productCode = str1;
    if (paramExtratoContract == null) {
      str1 = "";
    } else {
      str1 = ((gvw)paramExtratoContract).z;
    } 
    this.firstCallIndicator = str1;
    if (paramExtratoContract == null) {
      str1 = "";
    } else {
      str1 = ((gvw)paramExtratoContract).e;
    } 
    this.callbackIndicator = str1;
    if (paramExtratoContract == null) {
      str1 = "";
    } else {
      str1 = ((gvw)paramExtratoContract).C;
    } 
    this.reaCode = str1;
    if (paramExtratoContract == null) {
      str1 = "";
    } else {
      str1 = ((gvw)paramExtratoContract).y;
    } 
    this.savingsIndicator = str1;
    if (paramExtratoContract == null) {
      str1 = "";
    } else {
      str1 = ((gvw)paramExtratoContract).w;
    } 
    this.destinationMoveDate = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).k;
    } 
    this.ccApplicationGeneralBalance = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).s;
    } 
    this.ccOutGraceGeneralBalance = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).p;
    } 
    this.cciApplicationGracelessTotalBalance = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).h;
    } 
    this.cciApplicationTotalBalance = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).u;
    } 
    this.yieldGeneralValue = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).t;
    } 
    this.yieldPerApplicationTotalGeneralValue = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).l;
    } 
    this.cciApplicationGraceTotalBalance = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).q;
    } 
    this.ccApplicationGracelessTotalBalance = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).D;
    } 
    this.previousBalance = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).i;
    } 
    this.ccApplicationTotalBalance = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).j;
    } 
    this.cciApplicationGeneralBalance = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).n;
    } 
    this.cciApplicationGraceGeneralBalance = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).o;
    } 
    this.ccApplicationGraceGeneralBalance = str1;
    if (paramExtratoContract == null) {
      str1 = str2;
    } else {
      str1 = ((gvw)paramExtratoContract).m;
    } 
    this.ccApplicationGraceTotalBalance = str1;
    if (paramExtratoContract != null)
      str2 = ((gvw)paramExtratoContract).r; 
    this.cciOutGraceGeneralBalance = str2;
    if (paramExtratoContract == null) {
      str1 = null;
    } else {
      str1 = ((gvw)paramExtratoContract).b;
    } 
    this.responseIndicator = str1;
    if (paramExtratoContract == null) {
      str1 = null;
    } else {
      str1 = ((gvw)paramExtratoContract).f;
    } 
    this.calledbackItem = str1;
    if (paramExtratoContract == null) {
      str1 = str3;
    } else {
      str1 = ((gvw)paramExtratoContract).g;
    } 
    this.quantityCalledbackItens = str1;
  }
  
  public JSONObject toJson() {
    return new JSONObject(mys.a().b(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\contacorrente\domain\ConsultarExtratoHubRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */