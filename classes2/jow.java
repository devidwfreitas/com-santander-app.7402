import android.graphics.Bitmap;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.v4.content.ContextCompat;
import com.santander.app.MinhaConta;
import java.util.ArrayList;
import java.util.List;

public class jow implements Comparable<jow> {
  private int a;
  
  private Bitmap b;
  
  private String c;
  
  private int d;
  
  private jox e;
  
  private List<jow> f = new ArrayList<jow>();
  
  private int g;
  
  private int h;
  
  private boolean i;
  
  private boolean j;
  
  private int k;
  
  private jow() {
    e(2131624268);
  }
  
  public jow(@DrawableRes int paramInt1, String paramString, jox paramjox, int paramInt2) {
    this();
    this.a = paramInt1;
    this.c = paramString;
    this.e = paramjox;
    this.d = paramInt2;
  }
  
  public jow(@DrawableRes int paramInt1, String paramString, jox paramjox, int paramInt2, int paramInt3) {
    this();
    this.a = paramInt1;
    this.c = paramString;
    this.e = paramjox;
    this.d = paramInt2;
    this.g = paramInt3;
  }
  
  public jow(Bitmap paramBitmap, String paramString, jox paramjox, int paramInt) {
    this();
    this.b = paramBitmap;
    this.c = paramString;
    this.e = paramjox;
    this.d = paramInt;
  }
  
  public jow(Bitmap paramBitmap, String paramString, jox paramjox, int paramInt1, int paramInt2) {
    this();
    this.b = paramBitmap;
    this.c = paramString;
    this.e = paramjox;
    this.d = paramInt1;
    this.g = paramInt2;
  }
  
  public jow(String paramString, jox paramjox, int paramInt) {
    this();
    this.a = 0;
    this.c = paramString;
    this.e = paramjox;
    this.d = paramInt;
  }
  
  public int a(jow paramjow) {
    return (this.g < paramjow.i()) ? -1 : ((this.g > paramjow.i()) ? 1 : 0);
  }
  
  public void a(int paramInt) {
    this.a = paramInt;
  }
  
  public void a(Bitmap paramBitmap) {
    this.b = paramBitmap;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public void a(List<jow> paramList) {
    this.f = paramList;
  }
  
  public void a(jox paramjox) {
    this.e = paramjox;
  }
  
  public void a(boolean paramBoolean) {
    this.i = paramBoolean;
  }
  
  public boolean a() {
    return this.i;
  }
  
  @DrawableRes
  public int b() {
    return this.a;
  }
  
  public void b(int paramInt) {
    this.d = paramInt;
  }
  
  public void b(boolean paramBoolean) {
    this.j = paramBoolean;
  }
  
  public Bitmap c() {
    return this.b;
  }
  
  public void c(int paramInt) {
    this.g = paramInt;
  }
  
  public String d() {
    return this.c;
  }
  
  public void d(int paramInt) {
    this.h = paramInt;
  }
  
  public int e() {
    return this.d;
  }
  
  public void e(@ColorRes int paramInt) {
    this.k = ContextCompat.getColor(MinhaConta.b(), paramInt);
  }
  
  public boolean equals(Object paramObject) {
    return this.e.equals(((jow)paramObject).g());
  }
  
  public void f(@ColorInt int paramInt) {
    this.k = paramInt;
  }
  
  public boolean f() {
    return this.j;
  }
  
  public jox g() {
    return this.e;
  }
  
  public List<jow> h() {
    return this.f;
  }
  
  public int i() {
    return this.g;
  }
  
  public int j() {
    return this.h;
  }
  
  @ColorInt
  public int k() {
    return this.k;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */