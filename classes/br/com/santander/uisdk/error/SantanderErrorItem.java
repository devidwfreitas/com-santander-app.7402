package br.com.santander.uisdk.error;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.DrawableRes;
import android.view.View;
import anl;

public class SantanderErrorItem implements Parcelable {
  public static final Parcelable.Creator<SantanderErrorItem> CREATOR = (Parcelable.Creator<SantanderErrorItem>)new anl();
  
  @DrawableRes
  private int a;
  
  private String b;
  
  private String c;
  
  private View.OnClickListener d;
  
  public SantanderErrorItem() {}
  
  public SantanderErrorItem(int paramInt, String paramString1, String paramString2, View.OnClickListener paramOnClickListener) {
    this.a = paramInt;
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramOnClickListener;
  }
  
  private SantanderErrorItem(Parcel paramParcel) {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
  }
  
  @DrawableRes
  public int a() {
    return this.a;
  }
  
  public void a(@DrawableRes int paramInt) {
    this.a = paramInt;
  }
  
  public void a(View.OnClickListener paramOnClickListener) {
    this.d = paramOnClickListener;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public CharSequence b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public String c() {
    return this.c;
  }
  
  public View.OnClickListener d() {
    return this.d;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeInt(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\error\SantanderErrorItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */