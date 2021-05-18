import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public class mvg implements mvf {
  private static final String a = "Campo obrigatório";
  
  private static final String b = "Documento inválido";
  
  @Nullable
  private mtq c;
  
  private msc d;
  
  private mrp e;
  
  private List<mro> f;
  
  public mvg(@NonNull mtq parammtq) {
    this.c = parammtq;
    this.d = mse.l();
  }
  
  private mro b(int paramInt) {
    return (--paramInt == -1) ? null : this.f.get(paramInt);
  }
  
  private int d() {
    for (mro mro : this.f) {
      if (!TextUtils.isEmpty(this.e.b()) && this.e.b().equalsIgnoreCase(mro.a()))
        return this.f.indexOf(mro) + 1; 
    } 
    return 0;
  }
  
  private String[] e() {
    ArrayList<String> arrayList = new ArrayList();
    arrayList.add("");
    for (mro mro : this.f) {
      arrayList.add(String.format("%s - %s", new Object[] { mro.a(), mro.b() }));
    } 
    return arrayList.<String>toArray(new String[arrayList.size()]);
  }
  
  public void a() {
    if (this.c != null) {
      this.e = this.d.a();
      this.f = this.d.b();
      if (this.e != null) {
        String[] arrayOfString = e();
        int i = d();
        this.c.a(arrayOfString, this.e);
        this.c.c(i);
        return;
      } 
    } 
  }
  
  public void a(int paramInt) {
    if (this.c == null)
      return; 
    mro mro = b(paramInt);
    this.e.a(mro);
    if (this.e.a()) {
      this.c.h();
      return;
    } 
    this.c.g();
  }
  
  public void a(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    boolean bool = true;
    if (this.c != null) {
      boolean bool1 = false;
      this.c.k();
      if (paramInt == 0) {
        this.c.a("Campo obrigatório");
        bool1 = true;
      } 
      if (TextUtils.isEmpty(paramString1)) {
        this.c.b("Campo obrigatório");
        bool1 = true;
      } 
      if (TextUtils.isEmpty(paramString2)) {
        this.c.c("Campo obrigatório");
        bool1 = true;
      } 
      boolean bool2 = bool1;
      if (!this.e.a()) {
        if (TextUtils.isEmpty(paramString3)) {
          this.c.d("Campo obrigatório");
          bool1 = true;
        } 
        bool2 = bool1;
        try {
          if (!nai.e(paramString4))
            throw new Exception(); 
        } catch (Exception exception) {
          this.c.e("Documento inválido");
          bool2 = true;
        } 
      } 
      if (TextUtils.isEmpty(paramString5)) {
        this.c.f("Campo obrigatório");
        bool1 = bool;
      } else {
        bool1 = bool2;
      } 
      if (!bool1) {
        mro mro = b(paramInt);
        this.d.a(mro, paramString1, paramString2, paramString3, paramString4, paramString5);
        this.c.f();
        return;
      } 
    } 
  }
  
  public void b() {
    this.c = null;
  }
  
  public void c() {
    if (this.c == null)
      return; 
    if (this.e.a()) {
      this.c.j();
      return;
    } 
    this.c.i();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mvg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */