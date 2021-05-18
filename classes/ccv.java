import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.support.v4.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;

public final class ccv extends bny<ShareContent, bwo> implements bwn {
  public static final String b = "share";
  
  private static final String c = "feed";
  
  private static final String d = "share_open_graph";
  
  private static final int e = bnl.Share.toRequestCode();
  
  private boolean f = false;
  
  private boolean g = true;
  
  public ccv(Activity paramActivity) {
    super(paramActivity, e);
    bze.a(e);
  }
  
  public ccv(Activity paramActivity, int paramInt) {
    super(paramActivity, paramInt);
    bze.a(paramInt);
  }
  
  public ccv(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  public ccv(Fragment paramFragment, int paramInt) {
    this(new bpa(paramFragment), paramInt);
  }
  
  public ccv(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  public ccv(Fragment paramFragment, int paramInt) {
    this(new bpa(paramFragment), paramInt);
  }
  
  private ccv(bpa parambpa) {
    super(parambpa, e);
    bze.a(e);
  }
  
  private ccv(bpa parambpa, int paramInt) {
    super(parambpa, paramInt);
    bze.a(paramInt);
  }
  
  public static void a(Activity paramActivity, ShareContent paramShareContent) {
    (new ccv(paramActivity)).b(paramShareContent);
  }
  
  public static void a(Fragment paramFragment, ShareContent paramShareContent) {
    a(new bpa(paramFragment), paramShareContent);
  }
  
  private void a(Context paramContext, ShareContent paramShareContent, ccy paramccy) {
    // Byte code:
    //   0: aload_0
    //   1: getfield g : Z
    //   4: ifeq -> 11
    //   7: getstatic ccy.AUTOMATIC : Lccy;
    //   10: astore_3
    //   11: getstatic ccw.a : [I
    //   14: aload_3
    //   15: invokevirtual ordinal : ()I
    //   18: iaload
    //   19: tableswitch default -> 44, 1 -> 105, 2 -> 111, 3 -> 117
    //   44: ldc 'unknown'
    //   46: astore_3
    //   47: aload_2
    //   48: invokevirtual getClass : ()Ljava/lang/Class;
    //   51: invokestatic g : (Ljava/lang/Class;)Lbnv;
    //   54: astore_2
    //   55: aload_2
    //   56: getstatic bzb.SHARE_DIALOG : Lbzb;
    //   59: if_acmpne -> 123
    //   62: ldc 'status'
    //   64: astore_2
    //   65: aload_1
    //   66: invokestatic c : (Landroid/content/Context;)Lbla;
    //   69: astore_1
    //   70: new android/os/Bundle
    //   73: dup
    //   74: invokespecial <init> : ()V
    //   77: astore #4
    //   79: aload #4
    //   81: ldc 'fb_share_dialog_show'
    //   83: aload_3
    //   84: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   87: aload #4
    //   89: ldc 'fb_share_dialog_content_type'
    //   91: aload_2
    //   92: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   95: aload_1
    //   96: ldc 'fb_share_dialog_show'
    //   98: aconst_null
    //   99: aload #4
    //   101: invokevirtual a : (Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    //   104: return
    //   105: ldc 'automatic'
    //   107: astore_3
    //   108: goto -> 47
    //   111: ldc 'web'
    //   113: astore_3
    //   114: goto -> 47
    //   117: ldc 'native'
    //   119: astore_3
    //   120: goto -> 47
    //   123: aload_2
    //   124: getstatic bzb.PHOTOS : Lbzb;
    //   127: if_acmpne -> 136
    //   130: ldc 'photo'
    //   132: astore_2
    //   133: goto -> 65
    //   136: aload_2
    //   137: getstatic bzb.VIDEO : Lbzb;
    //   140: if_acmpne -> 149
    //   143: ldc 'video'
    //   145: astore_2
    //   146: goto -> 65
    //   149: aload_2
    //   150: getstatic byq.OG_ACTION_DIALOG : Lbyq;
    //   153: if_acmpne -> 162
    //   156: ldc 'open_graph'
    //   158: astore_2
    //   159: goto -> 65
    //   162: ldc 'unknown'
    //   164: astore_2
    //   165: goto -> 65
  }
  
  public static void a(Fragment paramFragment, ShareContent paramShareContent) {
    a(new bpa(paramFragment), paramShareContent);
  }
  
  private static void a(bpa parambpa, ShareContent paramShareContent) {
    (new ccv(parambpa)).b(paramShareContent);
  }
  
  public static boolean a(Class<? extends ShareContent> paramClass) {
    return (f(paramClass) || e(paramClass));
  }
  
  private static boolean e(Class<? extends ShareContent> paramClass) {
    bnv bnv = g(paramClass);
    return (bnv != null && bnw.a(bnv));
  }
  
  private static boolean f(Class<? extends ShareContent> paramClass) {
    boolean bool1;
    boolean bool2 = false;
    AccessToken accessToken = AccessToken.a();
    if (accessToken != null && !accessToken.k()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (!ShareLinkContent.class.isAssignableFrom(paramClass) && !ShareOpenGraphContent.class.isAssignableFrom(paramClass)) {
      boolean bool = bool2;
      if (SharePhotoContent.class.isAssignableFrom(paramClass)) {
        bool = bool2;
        if (bool1)
          return true; 
      } 
      return bool;
    } 
    return true;
  }
  
  private static bnv g(Class<? extends ShareContent> paramClass) {
    return (bnv)(ShareLinkContent.class.isAssignableFrom(paramClass) ? bzb.SHARE_DIALOG : (SharePhotoContent.class.isAssignableFrom(paramClass) ? bzb.PHOTOS : (ShareVideoContent.class.isAssignableFrom(paramClass) ? bzb.VIDEO : (ShareOpenGraphContent.class.isAssignableFrom(paramClass) ? byq.OG_ACTION_DIALOG : (ShareMediaContent.class.isAssignableFrom(paramClass) ? bzb.MULTIMEDIA : null)))));
  }
  
  protected void a(bnj parambnj, bhl<bwo> parambhl) {
    bze.a(a(), parambnj, parambhl);
  }
  
  public void a(boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public boolean a(ShareContent paramShareContent, ccy paramccy) {
    Object object = paramccy;
    if (paramccy == ccy.AUTOMATIC)
      object = a; 
    return a(paramShareContent, object);
  }
  
  public void b(ShareContent paramShareContent, ccy paramccy) {
    Object object;
    boolean bool;
    if (paramccy == ccy.AUTOMATIC) {
      bool = true;
    } else {
      bool = false;
    } 
    this.g = bool;
    if (this.g)
      object = a; 
    b(paramShareContent, object);
  }
  
  protected List<bny<ShareContent, bwo>.bnz> c() {
    ArrayList<ccz> arrayList = new ArrayList();
    arrayList.add(new ccz(this, null));
    arrayList.add(new ccx(this, null));
    arrayList.add(new cdb(this, null));
    return (List)arrayList;
  }
  
  protected bmr d() {
    return new bmr(a());
  }
  
  public boolean d_() {
    return this.f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */