package com.google.android.gms.common.images;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import cro;
import crp;
import crr;
import crs;
import crv;
import crw;
import crx;
import cry;
import csz;
import dfe;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ImageManager {
  private static final Object a = new Object();
  
  private static HashSet<Uri> b = new HashSet<Uri>();
  
  private static ImageManager c;
  
  private static ImageManager d;
  
  private final Context e;
  
  private final Handler f;
  
  private final ExecutorService g;
  
  private final crp h;
  
  private final dfe i;
  
  private final Map<crv, ImageManager$ImageReceiver> j;
  
  private final Map<Uri, ImageManager$ImageReceiver> k;
  
  private final Map<Uri, Long> l;
  
  private ImageManager(Context paramContext, boolean paramBoolean) {
    this.e = paramContext.getApplicationContext();
    this.f = new Handler(Looper.getMainLooper());
    this.g = Executors.newFixedThreadPool(4);
    if (paramBoolean) {
      this.h = new crp(this.e);
      this.e.registerComponentCallbacks((ComponentCallbacks)new crs(this.h));
    } else {
      this.h = null;
    } 
    this.i = new dfe();
    this.j = new HashMap<crv, ImageManager$ImageReceiver>();
    this.k = new HashMap<Uri, ImageManager$ImageReceiver>();
    this.l = new HashMap<Uri, Long>();
  }
  
  private Bitmap a(crw paramcrw) {
    return (this.h == null) ? null : (Bitmap)this.h.get(paramcrw);
  }
  
  public static ImageManager a(Context paramContext) {
    return a(paramContext, false);
  }
  
  public static ImageManager a(Context paramContext, boolean paramBoolean) {
    if (paramBoolean) {
      if (d == null)
        d = new ImageManager(paramContext, true); 
      return d;
    } 
    if (c == null)
      c = new ImageManager(paramContext, false); 
    return c;
  }
  
  public void a(ImageView paramImageView, int paramInt) {
    a((crv)new crx(paramImageView, paramInt));
  }
  
  public void a(ImageView paramImageView, Uri paramUri) {
    a((crv)new crx(paramImageView, paramUri));
  }
  
  public void a(ImageView paramImageView, Uri paramUri, int paramInt) {
    crx crx = new crx(paramImageView, paramUri);
    crx.a(paramInt);
    a((crv)crx);
  }
  
  public void a(cro paramcro, Uri paramUri) {
    a((crv)new cry(paramcro, paramUri));
  }
  
  public void a(cro paramcro, Uri paramUri, int paramInt) {
    cry cry = new cry(paramcro, paramUri);
    cry.a(paramInt);
    a((crv)cry);
  }
  
  public void a(crv paramcrv) {
    csz.a("ImageManager.loadImage() must be called in the main thread");
    (new crr(this, paramcrv)).run();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\images\ImageManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */