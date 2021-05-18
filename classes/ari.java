import java.util.Calendar;
import java.util.Date;

public class ari {
  private long a;
  
  private apy b = apy.FileTransferRequest;
  
  private String c;
  
  private Date d = Calendar.getInstance().getTime();
  
  private arh e;
  
  public ari(String paramString) {
    this.c = paramString;
  }
  
  public long a() {
    return this.a;
  }
  
  public void a(long paramLong) {
    this.a = paramLong;
  }
  
  public void a(apy paramapy) {
    this.b = paramapy;
  }
  
  public void a(arh paramarh) {
    this.e = paramarh;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public void a(Date paramDate) {
    this.d = paramDate;
  }
  
  public apy b() {
    return this.b;
  }
  
  public String c() {
    return (this.c != null) ? this.c : "";
  }
  
  public Date d() {
    return this.d;
  }
  
  public arh e() {
    return this.e;
  }
  
  public String toString() {
    return "FileToken{mId=" + this.a + ", mFileTransferRequest=" + this.b + ", mToken='" + this.c + '\'' + ", mCreateDate=" + this.d + ", mError=" + this.e + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ari.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */