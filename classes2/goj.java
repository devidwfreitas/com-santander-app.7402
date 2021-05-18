import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Environment;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.view.View;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

public class goj extends grs implements gro {
  public static final String d = "/SantanderBrasil";
  
  public static final int e = 666;
  
  private String a = "";
  
  private final int b = 30000;
  
  public Bitmap a(View paramView) {
    try {
      if ((paramView.getLayoutParams()).width > 0 && (paramView.getLayoutParams()).height > 0) {
        Bitmap bitmap1 = Bitmap.createBitmap((paramView.getLayoutParams()).width, (paramView.getLayoutParams()).height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap1);
        paramView.layout(0, 0, (paramView.getLayoutParams()).width, (paramView.getLayoutParams()).height);
        paramView.draw(canvas);
        return bitmap1;
      } 
      int i = paramView.getMeasuredWidth();
      paramView.setDrawingCacheEnabled(true);
      paramView.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
      int j = paramView.getMeasuredHeight();
      paramView.layout(0, 0, i, j);
      paramView.buildDrawingCache(true);
      Bitmap bitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
      paramView.setDrawingCacheEnabled(false);
      paramView.draw(new Canvas(bitmap));
      return bitmap;
    } catch (Exception exception) {
      paramView.invalidate();
      paramView.refreshDrawableState();
      paramView.setDrawingCacheEnabled(true);
      return paramView.getDrawingCache();
    } 
  }
  
  public String a(int paramInt) {
    (System.currentTimeMillis() + "").substring(7);
    String str = Environment.getExternalStorageDirectory() + "/SantanderBrasil";
    View view = findViewById(paramInt);
    if (view != null) {
      Bitmap bitmap = a(view);
      try {
        File file = new File(str);
        if (!file.exists())
          file.mkdirs(); 
        this.a = str + "/" + "comprovante_por_email.png";
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(this.a));
        view.setDrawingCacheEnabled(false);
        return "comprovante_por_email.png";
      } catch (FileNotFoundException fileNotFoundException) {
        return "";
      } 
    } 
    return "";
  }
  
  public void a(@NonNull String paramString1, String paramString2, @NonNull String paramString3) {
    if (!paramString2.isEmpty())
      paramString2 = ""; 
    myj.a((Activity)this, paramString1, paramString2, paramString3);
  }
  
  public void k() {}
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    if (paramInt1 == 666)
      (new Handler()).postDelayed(new gok(this), 30000L); 
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onDestroy() {
    super.onDestroy();
    (new Handler()).postDelayed(new gol(this), 30000L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\goj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */