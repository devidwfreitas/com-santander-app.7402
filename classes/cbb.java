import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.SharePhoto;
import java.util.ArrayList;

public abstract class cbb<P extends ShareOpenGraphValueContainer, E extends cbb> implements cau<P, E> {
  private Bundle a = new Bundle();
  
  public E a(P paramP) {
    if (paramP != null)
      this.a.putAll(paramP.b()); 
    return (E)this;
  }
  
  public E a(String paramString, double paramDouble) {
    this.a.putDouble(paramString, paramDouble);
    return (E)this;
  }
  
  public E a(String paramString, int paramInt) {
    this.a.putInt(paramString, paramInt);
    return (E)this;
  }
  
  public E a(String paramString, long paramLong) {
    this.a.putLong(paramString, paramLong);
    return (E)this;
  }
  
  public E a(String paramString, @Nullable ShareOpenGraphObject paramShareOpenGraphObject) {
    this.a.putParcelable(paramString, (Parcelable)paramShareOpenGraphObject);
    return (E)this;
  }
  
  public E a(String paramString, @Nullable SharePhoto paramSharePhoto) {
    this.a.putParcelable(paramString, (Parcelable)paramSharePhoto);
    return (E)this;
  }
  
  public E a(String paramString1, @Nullable String paramString2) {
    this.a.putString(paramString1, paramString2);
    return (E)this;
  }
  
  public E a(String paramString, @Nullable ArrayList<ShareOpenGraphObject> paramArrayList) {
    this.a.putParcelableArrayList(paramString, paramArrayList);
    return (E)this;
  }
  
  public E a(String paramString, boolean paramBoolean) {
    this.a.putBoolean(paramString, paramBoolean);
    return (E)this;
  }
  
  public E a(String paramString, @Nullable double[] paramArrayOfdouble) {
    this.a.putDoubleArray(paramString, paramArrayOfdouble);
    return (E)this;
  }
  
  public E a(String paramString, @Nullable int[] paramArrayOfint) {
    this.a.putIntArray(paramString, paramArrayOfint);
    return (E)this;
  }
  
  public E a(String paramString, @Nullable long[] paramArrayOflong) {
    this.a.putLongArray(paramString, paramArrayOflong);
    return (E)this;
  }
  
  public E a(String paramString, @Nullable boolean[] paramArrayOfboolean) {
    this.a.putBooleanArray(paramString, paramArrayOfboolean);
    return (E)this;
  }
  
  public E b(String paramString, @Nullable ArrayList<SharePhoto> paramArrayList) {
    this.a.putParcelableArrayList(paramString, paramArrayList);
    return (E)this;
  }
  
  public E c(String paramString, @Nullable ArrayList<String> paramArrayList) {
    this.a.putStringArrayList(paramString, paramArrayList);
    return (E)this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */