package br.com.santander.uisdk.comprovante;

import amf;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.LinkedHashMap;

public class SantanderComprovante implements Parcelable {
  public static final Parcelable.Creator<SantanderComprovante> CREATOR = (Parcelable.Creator<SantanderComprovante>)new amf();
  
  @ComprovanteType
  private int a = 1;
  
  private String b;
  
  private String c;
  
  private final LinkedHashMap<String, String> d;
  
  private String e;
  
  private String f;
  
  public SantanderComprovante() {
    this.d = new LinkedHashMap<String, String>();
  }
  
  public SantanderComprovante(Parcel paramParcel) {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = (LinkedHashMap<String, String>)paramParcel.readSerializable();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
  }
  
  public int a() {
    return this.a;
  }
  
  public SantanderComprovante a(@ComprovanteType int paramInt) {
    this.a = paramInt;
    return this;
  }
  
  public SantanderComprovante a(String paramString) {
    this.b = paramString;
    return this;
  }
  
  public SantanderComprovante a(String paramString1, String paramString2) {
    this.d.put(paramString1, paramString2);
    return this;
  }
  
  public SantanderComprovante a(LinkedHashMap<String, String> paramLinkedHashMap) {
    this.d.putAll(paramLinkedHashMap);
    return this;
  }
  
  public SantanderComprovante b(String paramString) {
    this.c = paramString;
    return this;
  }
  
  public String b() {
    return this.b;
  }
  
  public SantanderComprovante c(String paramString) {
    this.e = paramString;
    return this;
  }
  
  public String c() {
    return this.c;
  }
  
  public SantanderComprovante d(String paramString) {
    this.f = paramString;
    return this;
  }
  
  public LinkedHashMap<String, String> d() {
    return this.d;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public String e() {
    return (this.e != null) ? this.e : this.b;
  }
  
  public String f() {
    return this.f;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeInt(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeSerializable(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\comprovante\SantanderComprovante.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */