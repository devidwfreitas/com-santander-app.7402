import android.app.Activity;
import android.app.Fragment;
import android.support.v4.app.Fragment;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;

public final class ccq extends bny<ShareContent, bwo> implements bwn {
  private static final int b = bnl.Message.toRequestCode();
  
  private boolean c = false;
  
  public ccq(Activity paramActivity) {
    super(paramActivity, b);
    bze.a(b);
  }
  
  public ccq(Activity paramActivity, int paramInt) {
    super(paramActivity, paramInt);
    bze.a(paramInt);
  }
  
  public ccq(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  public ccq(Fragment paramFragment, int paramInt) {
    this(new bpa(paramFragment), paramInt);
  }
  
  public ccq(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  public ccq(Fragment paramFragment, int paramInt) {
    this(new bpa(paramFragment), paramInt);
  }
  
  private ccq(bpa parambpa) {
    super(parambpa, b);
    bze.a(b);
  }
  
  private ccq(bpa parambpa, int paramInt) {
    super(parambpa, paramInt);
    bze.a(paramInt);
  }
  
  public static void a(Activity paramActivity, ShareContent paramShareContent) {
    (new ccq(paramActivity)).b(paramShareContent);
  }
  
  public static void a(Fragment paramFragment, ShareContent paramShareContent) {
    a(new bpa(paramFragment), paramShareContent);
  }
  
  public static void a(Fragment paramFragment, ShareContent paramShareContent) {
    a(new bpa(paramFragment), paramShareContent);
  }
  
  private static void a(bpa parambpa, ShareContent paramShareContent) {
    (new ccq(parambpa)).b(paramShareContent);
  }
  
  public static boolean a(Class<? extends ShareContent> paramClass) {
    bnv bnv = c(paramClass);
    return (bnv != null && bnw.a(bnv));
  }
  
  private static bnv c(Class<? extends ShareContent> paramClass) {
    return (bnv)(ShareLinkContent.class.isAssignableFrom(paramClass) ? byo.MESSAGE_DIALOG : (SharePhotoContent.class.isAssignableFrom(paramClass) ? byo.PHOTOS : (ShareVideoContent.class.isAssignableFrom(paramClass) ? byo.VIDEO : (ShareOpenGraphContent.class.isAssignableFrom(paramClass) ? byt.OG_MESSAGE_DIALOG : null))));
  }
  
  protected void a(bnj parambnj, bhl<bwo> parambhl) {
    bze.a(a(), parambnj, parambhl);
  }
  
  public void a(boolean paramBoolean) {
    this.c = paramBoolean;
  }
  
  protected List<bny<ShareContent, bwo>.bnz> c() {
    ArrayList<ccs> arrayList = new ArrayList();
    arrayList.add(new ccs(this, null));
    return (List)arrayList;
  }
  
  protected bmr d() {
    return new bmr(a());
  }
  
  public boolean d_() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */