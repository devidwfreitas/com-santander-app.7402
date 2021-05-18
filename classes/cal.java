import android.net.Uri;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareModel;
import java.util.Collections;
import java.util.List;

public abstract class cal<P extends ShareContent, E extends cal> implements cau<P, E> {
  private Uri a;
  
  private List<String> b;
  
  private String c;
  
  private String d;
  
  private ShareHashtag e;
  
  public E a(@Nullable Uri paramUri) {
    this.a = paramUri;
    return (E)this;
  }
  
  public E a(P paramP) {
    return (E)((paramP == null) ? this : a(paramP.h()).a(paramP.i()).h(paramP.j()).i(paramP.k()));
  }
  
  public E a(@Nullable ShareHashtag paramShareHashtag) {
    this.e = paramShareHashtag;
    return (E)this;
  }
  
  public E a(@Nullable List<String> paramList) {
    if (paramList == null) {
      paramList = null;
      this.b = paramList;
      return (E)this;
    } 
    paramList = Collections.unmodifiableList(paramList);
    this.b = paramList;
    return (E)this;
  }
  
  public E h(@Nullable String paramString) {
    this.c = paramString;
    return (E)this;
  }
  
  public E i(@Nullable String paramString) {
    this.d = paramString;
    return (E)this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cal.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */