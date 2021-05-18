package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import crz;
import csg;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public final class WebImage extends zza {
  public static final Parcelable.Creator<WebImage> CREATOR = (Parcelable.Creator<WebImage>)new crz();
  
  public final int a;
  
  private final Uri b;
  
  private final int c;
  
  private final int d;
  
  public WebImage(int paramInt1, Uri paramUri, int paramInt2, int paramInt3) {
    this.a = paramInt1;
    this.b = paramUri;
    this.c = paramInt2;
    this.d = paramInt3;
  }
  
  public WebImage(Uri paramUri) {
    this(paramUri, 0, 0);
  }
  
  public WebImage(Uri paramUri, int paramInt1, int paramInt2) {
    this(1, paramUri, paramInt1, paramInt2);
    if (paramUri == null)
      throw new IllegalArgumentException("url cannot be null"); 
    if (paramInt1 < 0 || paramInt2 < 0)
      throw new IllegalArgumentException("width and height must not be negative"); 
  }
  
  public WebImage(JSONObject paramJSONObject) {
    this(a(paramJSONObject), paramJSONObject.optInt("width", 0), paramJSONObject.optInt("height", 0));
  }
  
  private static Uri a(JSONObject paramJSONObject) {
    Uri uri = null;
    if (paramJSONObject.has("url"))
      try {
        return Uri.parse(paramJSONObject.getString("url"));
      } catch (JSONException jSONException) {
        return null;
      }  
    return uri;
  }
  
  public Uri a() {
    return this.b;
  }
  
  public int b() {
    return this.c;
  }
  
  public int c() {
    return this.d;
  }
  
  public JSONObject d() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("url", this.b.toString());
      jSONObject.put("width", this.c);
      jSONObject.put("height", this.d);
      return jSONObject;
    } catch (JSONException jSONException) {
      return jSONObject;
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || !(paramObject instanceof WebImage))
        return false; 
      paramObject = paramObject;
      if (!csg.a(this.b, ((WebImage)paramObject).b) || this.c != ((WebImage)paramObject).c || this.d != ((WebImage)paramObject).d)
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { this.b, Integer.valueOf(this.c), Integer.valueOf(this.d) });
  }
  
  public String toString() {
    return String.format(Locale.US, "Image %dx%d %s", new Object[] { Integer.valueOf(this.c), Integer.valueOf(this.d), this.b.toString() });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    crz.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\images\WebImage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */