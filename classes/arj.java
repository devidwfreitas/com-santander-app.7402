import java.io.File;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Observable;
import java.util.concurrent.Callable;

public class arj extends Observable implements Callable<arj> {
  private String a;
  
  private aqa b;
  
  private File c;
  
  private volatile int d;
  
  private boolean e;
  
  private volatile boolean f;
  
  private volatile boolean g;
  
  private volatile boolean h;
  
  private volatile boolean i;
  
  private volatile Date j;
  
  private volatile boolean k;
  
  private volatile Date l;
  
  private Date m;
  
  private volatile boolean n;
  
  private arh o;
  
  private String p;
  
  private String q;
  
  private ari r;
  
  private apy s;
  
  private String t;
  
  private volatile boolean u;
  
  private volatile boolean v;
  
  private volatile boolean w;
  
  private volatile boolean x;
  
  private File y;
  
  public arj() {}
  
  public arj(File paramFile, aqa paramaqa) {
    this.c = paramFile;
    this.b = paramaqa;
    this.d = 0;
    this.e = true;
    this.f = false;
    this.g = false;
    this.j = null;
    this.k = false;
    this.h = false;
    this.i = false;
    this.l = null;
    this.m = Calendar.getInstance().getTime();
    this.n = false;
    this.o = null;
    this.u = false;
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(int paramInt) {
    this.d = paramInt;
    if (paramInt > 0) {
      setChanged();
      notifyObservers();
    } 
  }
  
  public void a(apy paramapy) {
    this.s = paramapy;
  }
  
  public void a(aqa paramaqa) {
    this.b = paramaqa;
  }
  
  public void a(arh paramarh) {
    this.o = paramarh;
    if (paramarh != null) {
      f(false);
      setChanged();
      notifyObservers();
    } 
  }
  
  public void a(ari paramari) {
    this.r = paramari;
  }
  
  public void a(File paramFile) {
    this.c = paramFile;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(Date paramDate) {
    this.j = paramDate;
  }
  
  public void a(boolean paramBoolean) {
    this.f = paramBoolean;
    if (paramBoolean) {
      setChanged();
      notifyObservers();
    } 
  }
  
  public aqa b() {
    return this.b;
  }
  
  public void b(File paramFile) {
    this.y = paramFile;
  }
  
  public void b(String paramString) {
    this.t = paramString;
  }
  
  public void b(Date paramDate) {
    this.l = paramDate;
  }
  
  public void b(boolean paramBoolean) {
    this.k = paramBoolean;
  }
  
  public File c() {
    return this.c;
  }
  
  public void c(String paramString) {
    this.q = paramString;
  }
  
  public void c(Date paramDate) {
    this.m = paramDate;
  }
  
  public void c(boolean paramBoolean) {
    this.n = paramBoolean;
  }
  
  public int d() {
    return this.d;
  }
  
  public void d(String paramString) {
    this.p = paramString;
  }
  
  public void d(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public void e(boolean paramBoolean) {
    this.g = paramBoolean;
  }
  
  public boolean e() {
    return this.f;
  }
  
  public Date f() {
    return this.j;
  }
  
  public void f(boolean paramBoolean) {
    this.h = paramBoolean;
  }
  
  public void g(boolean paramBoolean) {
    this.i = paramBoolean;
  }
  
  public boolean g() {
    return this.k;
  }
  
  public Date h() {
    return this.l;
  }
  
  public void h(boolean paramBoolean) {
    this.u = paramBoolean;
  }
  
  public Date i() {
    return this.m;
  }
  
  public void i(boolean paramBoolean) {
    this.v = paramBoolean;
  }
  
  public void j(boolean paramBoolean) {
    this.w = paramBoolean;
  }
  
  public boolean j() {
    return this.n;
  }
  
  public void k(boolean paramBoolean) {
    this.x = paramBoolean;
  }
  
  public boolean k() {
    return this.e;
  }
  
  public boolean l() {
    return this.g;
  }
  
  public arh m() {
    return this.o;
  }
  
  public boolean n() {
    return this.h;
  }
  
  public boolean o() {
    return this.i;
  }
  
  public ari p() {
    return this.r;
  }
  
  public apy q() {
    return this.s;
  }
  
  public String r() {
    return this.t;
  }
  
  public arj s() {
    return this;
  }
  
  public String t() {
    if (this.q != null) {
      double d = c().length();
      if (d == 0.0D)
        d = Double.parseDouble(this.q); 
      DecimalFormat decimalFormat = (DecimalFormat)NumberFormat.getNumberInstance(Locale.US);
      if (d < 1024.0D) {
        d = Double.valueOf(decimalFormat.format(d)).doubleValue();
        return d + " bytes";
      } 
      if (d >= 1024.0D && d < 1048576.0D) {
        d = Double.valueOf(decimalFormat.format(d / 1024.0D)).doubleValue();
        return d + "  KB";
      } 
      if (d >= 1048576.0D && d < 1.073741824E9D) {
        d = Double.valueOf(decimalFormat.format(d / 1048576.0D)).doubleValue();
        return d + "  MB";
      } 
      if (d >= 1.073741824E9D && d < 1.099511627776E12D) {
        d = Double.valueOf(decimalFormat.format(d / 1.073741824E9D)).doubleValue();
        return d + "  GB";
      } 
      return d + "";
    } 
    return "";
  }
  
  public String toString() {
    return "FileWrapper{fileId=" + this.a + ", type=" + this.b + ", file=" + this.c + ", progress=" + this.d + ", toSend=" + this.e + ", sent=" + this.f + ", canceled=" + this.g + ", sending=" + this.h + ", sendedDate=" + this.j + ", received=" + this.k + ", receivedDate=" + this.l + ", createDate=" + this.m + ", showed=" + this.n + ", error=" + this.o + ", fileName='" + this.p + '\'' + ", fileSize='" + this.q + '\'' + ", fileToken='" + this.r + '\'' + ", isNewFileEvent=" + this.u + ", isFailed=" + this.v + ", isThumbnailFailed=" + this.w + '}';
  }
  
  public String u() {
    return this.p;
  }
  
  public boolean v() {
    return this.u;
  }
  
  public boolean w() {
    return this.v;
  }
  
  public boolean x() {
    return this.w;
  }
  
  public boolean y() {
    return this.x;
  }
  
  public File z() {
    return this.y;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\arj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */