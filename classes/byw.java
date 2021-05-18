import android.graphics.Bitmap;
import android.net.Uri;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class byw {
  private static byz a;
  
  private static byz b;
  
  private static byz c;
  
  private static byz a() {
    if (b == null)
      b = new byz(null); 
    return b;
  }
  
  public static void a(ShareContent paramShareContent) {
    a(paramShareContent, a());
  }
  
  private static void a(ShareContent paramShareContent, byz parambyz) {
    if (paramShareContent == null)
      throw new bhp("Must provide non-null content to share"); 
    if (paramShareContent instanceof ShareLinkContent) {
      parambyz.a((ShareLinkContent)paramShareContent);
      return;
    } 
    if (paramShareContent instanceof SharePhotoContent) {
      parambyz.a((SharePhotoContent)paramShareContent);
      return;
    } 
    if (paramShareContent instanceof ShareVideoContent) {
      parambyz.a((ShareVideoContent)paramShareContent);
      return;
    } 
    if (paramShareContent instanceof ShareOpenGraphContent) {
      parambyz.a((ShareOpenGraphContent)paramShareContent);
      return;
    } 
    if (paramShareContent instanceof ShareMediaContent) {
      parambyz.a((ShareMediaContent)paramShareContent);
      return;
    } 
  }
  
  public static void a(ShareMedia paramShareMedia, byz parambyz) {
    if (paramShareMedia instanceof SharePhoto) {
      parambyz.a((SharePhoto)paramShareMedia);
      return;
    } 
    if (paramShareMedia instanceof ShareVideo) {
      parambyz.a((ShareVideo)paramShareMedia);
      return;
    } 
    throw new bhp(String.format(Locale.ROOT, "Invalid media type: %s", new Object[] { paramShareMedia.getClass().getSimpleName() }));
  }
  
  private static void a(SharePhoto paramSharePhoto) {
    if (paramSharePhoto == null)
      throw new bhp("Cannot share a null SharePhoto"); 
    Bitmap bitmap = paramSharePhoto.c();
    Uri uri = paramSharePhoto.d();
    if (bitmap == null && uri == null)
      throw new bhp("SharePhoto does not have a Bitmap or ImageUrl specified"); 
  }
  
  private static void a(Object paramObject, byz parambyz) {
    if (paramObject instanceof ShareOpenGraphObject) {
      parambyz.a((ShareOpenGraphObject)paramObject);
      return;
    } 
    if (paramObject instanceof SharePhoto) {
      parambyz.a((SharePhoto)paramObject);
      return;
    } 
  }
  
  private static void a(String paramString, boolean paramBoolean) {
    if (paramBoolean) {
      String[] arrayOfString = paramString.split(":");
      if (arrayOfString.length < 2)
        throw new bhp("Open Graph keys must be namespaced: %s", new Object[] { paramString }); 
      int j = arrayOfString.length;
      int i = 0;
      while (true) {
        if (i < j) {
          if (arrayOfString[i].isEmpty())
            throw new bhp("Invalid key found in Open Graph dictionary: %s", new Object[] { paramString }); 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private static byz b() {
    if (c == null)
      c = new byy(null); 
    return c;
  }
  
  public static void b(ShareContent paramShareContent) {
    a(paramShareContent, a());
  }
  
  private static void b(ShareLinkContent paramShareLinkContent, byz parambyz) {
    Uri uri = paramShareLinkContent.c();
    if (uri != null && !bqq.b(uri))
      throw new bhp("Image Url must be an http:// or https:// url"); 
  }
  
  private static void b(ShareMediaContent paramShareMediaContent, byz parambyz) {
    List list = paramShareMediaContent.a();
    if (list == null || list.isEmpty())
      throw new bhp("Must specify at least one medium in ShareMediaContent."); 
    if (list.size() > 6)
      throw new bhp(String.format(Locale.ROOT, "Cannot add more than %d media.", new Object[] { Integer.valueOf(6) })); 
    Iterator<ShareMedia> iterator = list.iterator();
    while (iterator.hasNext())
      parambyz.a(iterator.next()); 
  }
  
  private static void b(ShareOpenGraphAction paramShareOpenGraphAction, byz parambyz) {
    if (paramShareOpenGraphAction == null)
      throw new bhp("Must specify a non-null ShareOpenGraphAction"); 
    if (bqq.a(paramShareOpenGraphAction.a()))
      throw new bhp("ShareOpenGraphAction must have a non-empty actionType"); 
    parambyz.a((ShareOpenGraphValueContainer)paramShareOpenGraphAction, false);
  }
  
  private static void b(ShareOpenGraphContent paramShareOpenGraphContent, byz parambyz) {
    parambyz.a(paramShareOpenGraphContent.a());
    String str = paramShareOpenGraphContent.b();
    if (bqq.a(str))
      throw new bhp("Must specify a previewPropertyName."); 
    if (paramShareOpenGraphContent.a().a(str) == null)
      throw new bhp("Property \"" + str + "\" was not found on the action. The name of the preview property must match the name of an action property."); 
  }
  
  private static void b(ShareOpenGraphObject paramShareOpenGraphObject, byz parambyz) {
    if (paramShareOpenGraphObject == null)
      throw new bhp("Cannot share a null ShareOpenGraphObject"); 
    parambyz.a((ShareOpenGraphValueContainer)paramShareOpenGraphObject, true);
  }
  
  private static void b(ShareOpenGraphValueContainer paramShareOpenGraphValueContainer, byz parambyz, boolean paramBoolean) {
    for (String str : paramShareOpenGraphValueContainer.c()) {
      a(str, paramBoolean);
      Object object = paramShareOpenGraphValueContainer.a(str);
      if (object instanceof List) {
        for (Object object1 : object) {
          if (object1 == null)
            throw new bhp("Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions"); 
          a(object1, parambyz);
        } 
        continue;
      } 
      a(object, parambyz);
    } 
  }
  
  private static void b(SharePhotoContent paramSharePhotoContent, byz parambyz) {
    List list = paramSharePhotoContent.a();
    if (list == null || list.isEmpty())
      throw new bhp("Must specify at least one Photo in SharePhotoContent."); 
    if (list.size() > 6)
      throw new bhp(String.format(Locale.ROOT, "Cannot add more than %d photos.", new Object[] { Integer.valueOf(6) })); 
    Iterator<SharePhoto> iterator = list.iterator();
    while (iterator.hasNext())
      parambyz.a(iterator.next()); 
  }
  
  private static void b(ShareVideo paramShareVideo, byz parambyz) {
    if (paramShareVideo == null)
      throw new bhp("Cannot share a null ShareVideo"); 
    Uri uri = paramShareVideo.c();
    if (uri == null)
      throw new bhp("ShareVideo does not have a LocalUrl specified"); 
    if (!bqq.c(uri) && !bqq.d(uri))
      throw new bhp("ShareVideo must reference a video that is on the device"); 
  }
  
  private static void b(ShareVideoContent paramShareVideoContent, byz parambyz) {
    parambyz.a(paramShareVideoContent.d());
    SharePhoto sharePhoto = paramShareVideoContent.c();
    if (sharePhoto != null)
      parambyz.a(sharePhoto); 
  }
  
  private static byz c() {
    if (a == null)
      a = new bza(null); 
    return a;
  }
  
  public static void c(ShareContent paramShareContent) {
    a(paramShareContent, c());
  }
  
  public static void d(ShareContent paramShareContent) {
    a(paramShareContent, b());
  }
  
  private static void d(SharePhoto paramSharePhoto, byz parambyz) {
    a(paramSharePhoto);
    Bitmap bitmap = paramSharePhoto.c();
    Uri uri = paramSharePhoto.d();
    if (bitmap == null && bqq.b(uri) && !parambyz.a())
      throw new bhp("Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent"); 
  }
  
  private static void e(SharePhoto paramSharePhoto, byz parambyz) {
    d(paramSharePhoto, parambyz);
    if (paramSharePhoto.c() != null || !bqq.b(paramSharePhoto.d()))
      bqx.i(bhv.h()); 
  }
  
  private static void f(SharePhoto paramSharePhoto, byz parambyz) {
    a(paramSharePhoto);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\byw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */