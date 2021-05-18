package com.datami.smi;

import com.datami.smi.b.k;
import com.datami.smi.b.m;
import com.datami.smi.c.c;
import com.datami.smi.c.e;
import com.datami.smi.c.t;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

public class SmiResult {
  private static final byte[] $ = new byte[] { 
      0, -24, 56, -114, 22, 22, 9, 1, 64, -8, 
      15, 24, 17, 2, 19, 12, -65, 39, -13 };
  
  private static int $$ = 15;
  
  private static final String TAG;
  
  private String cpLogoUri = "";
  
  private String datamiLogoUri = "";
  
  private String mUrl = "";
  
  private String operatorLogoUri = "";
  
  private String password = "";
  
  private String sdHost = "";
  
  private int sdPort = -1;
  
  private SdReason sdReason = SdReason.SD_REASON_NONE;
  
  private SdState sdState = SdState.SD_NOT_AVAILABLE;
  
  private String sponsorLogoUri = "";
  
  private String userName = "";
  
  private Object videoObject = null;
  
  private static String $(int paramInt1, int paramInt2, int paramInt3) {
    int j;
    int k = 12 - paramInt1 * 7;
    paramInt1 = 8 - paramInt2 * 4;
    byte[] arrayOfByte2 = $;
    byte[] arrayOfByte1 = new byte[k];
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      paramInt3 = paramInt1;
      j = k;
      i = paramInt1;
    } else {
      paramInt2 = 0;
      i = paramInt3 * 22 + 69;
      paramInt3 = paramInt2;
      paramInt2 = i;
      byte b1 = (byte)paramInt2;
      int n = paramInt3 + 1;
      arrayOfByte1[paramInt3] = b1;
    } 
    int i = i + j - 13;
    paramInt1 = paramInt3 + 1;
    paramInt3 = paramInt2;
    paramInt2 = i;
    byte b = (byte)paramInt2;
    int m = paramInt3 + 1;
    arrayOfByte1[paramInt3] = b;
  }
  
  static {
    StringBuilder stringBuilder = new StringBuilder();
    byte b = $[7];
    TAG = stringBuilder.append($(b, b, b)).append(SmiResult.class.getName()).toString();
  }
  
  public SmiResult() {}
  
  public SmiResult(m paramm) {
    setZmi(paramm);
  }
  
  private String generatePassword(String paramString) {
    StringBuilder stringBuilder;
    String str2 = "";
    String str1 = str2;
    if (paramString != null) {
      str1 = str2;
      try {
        if (!paramString.isEmpty())
          str1 = t.a(paramString + e.b); 
        return str1;
      } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
        stringBuilder = new StringBuilder();
        byte b = $[0];
        stringBuilder.append($(b, b, b)).append(noSuchAlgorithmException);
        return "";
      } catch (UnsupportedEncodingException unsupportedEncodingException) {
        stringBuilder = new StringBuilder();
        byte b = $[0];
        stringBuilder.append($(b, b, b)).append(unsupportedEncodingException);
        return "";
      } 
    } 
    return (String)stringBuilder;
  }
  
  public String getCarrierName() {
    if (SdState.WIFI == this.sdState)
      return ""; 
    k.a(SmiSdk.mContext);
    return c.f();
  }
  
  public String getClientIp() {
    String str = "";
    if (SdState.SD_AVAILABLE == this.sdState)
      str = m.q(); 
    return str;
  }
  
  public String getCpLogoUri() {
    return this.cpLogoUri;
  }
  
  public String getDatamiLogoUri() {
    return this.datamiLogoUri;
  }
  
  public String getOperatorLogoUri() {
    return this.operatorLogoUri;
  }
  
  public String getPassword() {
    return this.password;
  }
  
  public SdReason getSdReason() {
    return this.sdReason;
  }
  
  public SdState getSdState() {
    return this.sdState;
  }
  
  public String getSponsorLogoUri() {
    return this.sponsorLogoUri;
  }
  
  public String getUrl() {
    return this.mUrl;
  }
  
  public String getUserName() {
    return this.userName;
  }
  
  public Object getVideoObject() {
    return this.videoObject;
  }
  
  public String getVpnSdHost() {
    return this.sdHost;
  }
  
  public int getVpnSdPort() {
    return this.sdPort;
  }
  
  public void setCpLogoUri(String paramString) {
    this.cpLogoUri = paramString;
  }
  
  public void setDatamiLogoUri(String paramString) {
    this.datamiLogoUri = paramString;
  }
  
  public void setOperatorLogoUri(String paramString) {
    this.operatorLogoUri = paramString;
  }
  
  public void setSdReason(SdReason paramSdReason) {
    this.sdReason = paramSdReason;
  }
  
  public void setSdState(SdState paramSdState) {
    this.sdState = paramSdState;
  }
  
  public void setSponsorLogoUri(String paramString) {
    this.sponsorLogoUri = paramString;
  }
  
  public void setUrl(String paramString) {
    this.mUrl = paramString;
  }
  
  public void setVideoObject(Object paramObject) {
    this.videoObject = paramObject;
  }
  
  public void setZmi(m paramm) {
    this.mUrl = paramm.f();
    this.sdState = SdState.valueOf(paramm.e());
    this.sdReason = SdReason.valueOf(paramm.g());
    this.sponsorLogoUri = paramm.j();
    this.operatorLogoUri = paramm.k();
    this.cpLogoUri = paramm.l();
    this.datamiLogoUri = paramm.m();
    this.sdHost = m.c();
    this.sdPort = paramm.d();
    this.userName = m.h();
    this.password = generatePassword(m.h());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\SmiResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */