package com.santander.app.lojaonline.domain;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import eks;
import jmx;
import jmy;
import jmz;
import jna;
import jou;

public class LojaCampaign$Campaign implements Parcelable {
  public static final Parcelable.Creator<LojaCampaign$Campaign> CREATOR = (Parcelable.Creator<LojaCampaign$Campaign>)new jna();
  
  private static final String h = "Campaign";
  
  @eks(a = "actionType")
  public int a = -1;
  
  @eks(a = "imageType")
  protected int b = 1;
  
  @eks(a = "locationType")
  public int c;
  
  @eks(a = "image")
  protected String d;
  
  @eks(a = "action")
  public String e;
  
  @eks(a = "tag")
  public String f;
  
  public Bitmap g;
  
  public LojaCampaign$Campaign() {}
  
  public LojaCampaign$Campaign(Parcel paramParcel) {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readInt();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
  }
  
  @jmx
  public int a() {
    return this.a;
  }
  
  @jmy
  public int b() {
    return this.b;
  }
  
  @jmz
  public int c() {
    return this.c;
  }
  
  public Bitmap d() {
    if (this.g == null)
      this.g = jou.a(this.d); 
    return this.g;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public String e() {
    return this.e;
  }
  
  public String f() {
    return this.f;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeInt(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\lojaonline\domain\LojaCampaign$Campaign.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */