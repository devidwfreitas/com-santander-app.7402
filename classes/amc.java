import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Environment;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.View;
import br.com.santander.uisdk.comprovante.SantanderComprovante;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;

public class amc {
  private static final int a = 151;
  
  private final Activity b;
  
  private final SantanderComprovante c;
  
  private View d;
  
  private final Handler e;
  
  private final File f;
  
  private ame g;
  
  public amc(Activity paramActivity, SantanderComprovante paramSantanderComprovante, View paramView) {
    this.b = paramActivity;
    this.c = paramSantanderComprovante;
    this.d = paramView;
    this.e = new Handler();
    this.f = new File(Environment.getExternalStorageDirectory(), "SantanderComprovante.jpg");
    g();
  }
  
  private boolean a(String paramString) {
    return (ContextCompat.checkSelfPermission((Context)this.b, paramString) == 0);
  }
  
  private void c() {
    ArrayList<String> arrayList = new ArrayList();
    if (!a("android.permission.WRITE_EXTERNAL_STORAGE"))
      arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE"); 
    if (arrayList.isEmpty()) {
      d();
      return;
    } 
    String[] arrayOfString = arrayList.<String>toArray(new String[arrayList.size()]);
    ActivityCompat.requestPermissions(this.b, arrayOfString, 151);
  }
  
  private void d() {
    if (this.g != null)
      this.g.a(); 
    this.e.postDelayed(new amd(this), 1000L);
  }
  
  private void e() {
    Bitmap bitmap = f();
    if (!this.f.exists())
      this.f.createNewFile(); 
    bitmap.compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(this.f));
  }
  
  private Bitmap f() {
    int i = this.d.getMeasuredWidth();
    int j = this.d.getMeasuredHeight();
    this.d.layout(0, 0, i, j);
    this.d.buildDrawingCache(true);
    Bitmap bitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    this.d.setDrawingCacheEnabled(false);
    Canvas canvas = new Canvas(bitmap);
    this.d.draw(canvas);
    return bitmap;
  }
  
  private void g() {
    if (this.f.exists())
      this.f.delete(); 
  }
  
  void a() {
    c();
  }
  
  public void a(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint) {
    if (paramInt == 151 && a("android.permission.WRITE_EXTERNAL_STORAGE"))
      d(); 
  }
  
  public void a(ame paramame) {
    this.g = paramame;
  }
  
  void a(View paramView) {
    this.d = paramView;
  }
  
  public void b() {
    g();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\amc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */