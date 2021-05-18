import android.app.Activity;
import android.util.Log;
import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;
import java.util.List;

public class jio implements jez, jin {
  private float a;
  
  private float b;
  
  private float c;
  
  private float d;
  
  private Activity e;
  
  private jgs f;
  
  private jfa g;
  
  private jdx h;
  
  private jdx i;
  
  private ArrayList<jdx> j;
  
  private String k;
  
  private miv l;
  
  public jio(jgs paramjgs) {
    this.f = paramjgs;
    this.e = (Activity)paramjgs;
    this.g = new jfa(this, this.e);
    this.f.a();
    this.f.b();
  }
  
  private boolean a(double paramDouble1, double paramDouble2) {
    if (paramDouble1 > 0.0D) {
      if (paramDouble1 >= paramDouble2)
        return true; 
      this.f.a("Valor inferior ao permitido para aplicar", 2131758155);
      return false;
    } 
    this.f.a("Digite um valor", 2131758155);
    return false;
  }
  
  private boolean a(double paramDouble1, double paramDouble2, double paramDouble3) {
    if (paramDouble1 > 0.0D) {
      if (paramDouble1 >= paramDouble3) {
        if (paramDouble1 <= paramDouble2)
          return true; 
        this.f.a("Valor superior ao permitido para resgatar", 2131758155);
        return false;
      } 
      this.f.a("Valor inferior ao permitido para resgatar", 2131758155);
      return false;
    } 
    this.f.a("Digite um valor", 2131758155);
    return false;
  }
  
  private void b() {
    jdx jdx1 = null;
    try {
      jdx jdx2 = this.h.a();
      jdx1 = jdx2;
      switch (jip.a[this.h.t().ordinal()]) {
        default:
          this.f.a(this.j, this.i);
          return;
        case 5:
          jdx1.g(naq.c(this.i.Z(), this.i.i()));
          jdx1.u(jdx1.M());
          jdx1.G(naj.f(this.i.Y()));
          jdx1.s(naj.L(this.i.C()));
          jdx1.c(naj.f(this.i.d()));
          jdx1.A(naj.f(this.i.S()));
          jdx1.b(this.i.c());
          this.f.b(jdx1);
        case 4:
          break;
      } 
    } catch (CloneNotSupportedException cloneNotSupportedException) {
      Log.e("Error", cloneNotSupportedException.getMessage());
      switch (jip.a[this.h.t().ordinal()]) {
        default:
          this.f.a(this.j, this.i);
          return;
        case 5:
          jdx1.g(naq.c(this.i.Z(), this.i.i()));
          jdx1.u(jdx1.M());
          jdx1.G(naj.f(this.i.Y()));
          jdx1.s(naj.L(this.i.C()));
          jdx1.c(naj.f(this.i.d()));
          jdx1.A(naj.f(this.i.S()));
          jdx1.b(this.i.c());
          this.f.b(jdx1);
        case 4:
          break;
      } 
    } 
    if (this.i.g() != null && this.i.g().b()) {
      String str;
      if (this.h.v().equalsIgnoreCase("NAO DISPONIVEL")) {
        str = this.e.getResources().getString(2131297959);
      } else {
        str = naj.f(this.h.v());
      } 
      jdx1.l(str);
      this.k = this.h.v();
      jdx1.a(this.e.getResources().getString(2131297844));
    } else {
      String str;
      if (this.h.u().equalsIgnoreCase("NAO DISPONIVEL")) {
        str = this.e.getResources().getString(2131297959);
      } else {
        str = naj.f(this.h.u());
      } 
      jdx1.l(str);
      this.k = this.h.u();
      jdx1.a(this.e.getResources().getString(2131297843));
    } 
    jdx1.v(naj.K(this.h.N()));
    jdx1.s(naj.L(this.h.C()));
    jdx1.b(this.i.c());
    this.f.c(jdx1);
  }
  
  public void a() {
    this.f.a("", 2131758155);
  }
  
  public void a(String paramString) {
    try {
      this.b = naj.c(paramString);
      this.c = naj.c(this.i.Y());
      this.d = naj.c(this.i.d());
      if (a(this.b, this.c, this.d))
        this.f.d(); 
    } catch (Exception exception) {
      this.b = naj.c(paramString);
      this.c = naj.c("0,00");
      this.d = naj.c(this.i.d());
    } 
  }
  
  public void a(String paramString, Conta paramConta) {
    try {
      this.a = naj.c(paramString);
      if (a(this.a, naj.c(this.k))) {
        if (this.h.t() == jdk.APLICAR) {
          b(paramString, paramConta);
          return;
        } 
        this.f.d();
        return;
      } 
    } catch (Exception exception) {
      this.a = naj.c(paramString);
      if (a(this.a, naj.c("0,00")))
        this.f.d(); 
    } 
  }
  
  public void a(ArrayList<jdx> paramArrayList) {
    this.i = paramArrayList.get(0);
    this.j = paramArrayList;
    b();
  }
  
  public void a(List<Conta> paramList) {
    paramList = (List)gmy.a(paramList);
    this.f.a((List)paramList);
  }
  
  public void a(jdm paramjdm) {}
  
  public void a(jdx paramjdx) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual a : ()Ljdx;
    //   5: putfield h : Ljdx;
    //   8: getstatic jip.a : [I
    //   11: aload_0
    //   12: getfield h : Ljdx;
    //   15: invokevirtual t : ()Ljdk;
    //   18: invokevirtual ordinal : ()I
    //   21: iaload
    //   22: tableswitch default -> 56, 1 -> 71, 2 -> 56, 3 -> 56, 4 -> 195, 5 -> 195
    //   56: return
    //   57: astore_2
    //   58: ldc 'Error'
    //   60: aload_2
    //   61: invokevirtual toString : ()Ljava/lang/String;
    //   64: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   67: pop
    //   68: goto -> 8
    //   71: aload_0
    //   72: aload_0
    //   73: getfield h : Ljdx;
    //   76: invokevirtual v : ()Ljava/lang/String;
    //   79: putfield k : Ljava/lang/String;
    //   82: aload_1
    //   83: aload_0
    //   84: getfield e : Landroid/app/Activity;
    //   87: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   90: ldc 2131297844
    //   92: invokevirtual getString : (I)Ljava/lang/String;
    //   95: invokevirtual a : (Ljava/lang/String;)V
    //   98: aload_0
    //   99: getfield h : Ljdx;
    //   102: invokevirtual v : ()Ljava/lang/String;
    //   105: ldc 'NAO DISPONIVEL'
    //   107: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   110: ifeq -> 181
    //   113: aload_0
    //   114: getfield e : Landroid/app/Activity;
    //   117: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   120: ldc 2131297959
    //   122: invokevirtual getString : (I)Ljava/lang/String;
    //   125: astore_2
    //   126: aload_1
    //   127: aload_2
    //   128: invokevirtual l : (Ljava/lang/String;)V
    //   131: aload_1
    //   132: aload_0
    //   133: getfield h : Ljdx;
    //   136: invokevirtual N : ()Ljava/lang/String;
    //   139: invokestatic K : (Ljava/lang/String;)Ljava/lang/String;
    //   142: invokevirtual v : (Ljava/lang/String;)V
    //   145: aload_1
    //   146: aload_0
    //   147: getfield h : Ljdx;
    //   150: invokevirtual C : ()Ljava/lang/String;
    //   153: invokestatic L : (Ljava/lang/String;)Ljava/lang/String;
    //   156: invokevirtual s : (Ljava/lang/String;)V
    //   159: aload_1
    //   160: aload_0
    //   161: getfield h : Ljdx;
    //   164: invokevirtual h : ()Ljava/lang/String;
    //   167: invokevirtual f : (Ljava/lang/String;)V
    //   170: aload_0
    //   171: getfield f : Ljgs;
    //   174: aload_1
    //   175: invokeinterface a : (Ljdx;)V
    //   180: return
    //   181: aload_0
    //   182: getfield h : Ljdx;
    //   185: invokevirtual v : ()Ljava/lang/String;
    //   188: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   191: astore_2
    //   192: goto -> 126
    //   195: aload_0
    //   196: getfield g : Ljfa;
    //   199: aload_0
    //   200: getfield h : Ljdx;
    //   203: invokevirtual a : (Ljdx;)V
    //   206: return
    // Exception table:
    //   from	to	target	type
    //   0	8	57	java/lang/CloneNotSupportedException
  }
  
  public void a(miw parammiw) {
    this.f.d();
  }
  
  public void b(String paramString, Conta paramConta) {
    miv miv1 = new miv();
    miv1.d(naj.a(naj.l(paramString), 15));
    miv1.b(this.h.y().substring(1, this.h.y().length()));
    miv1.c(paramConta.getCuenta());
    miv1.setAgencia(paramConta.getAgencia());
    this.g.a(miv1);
  }
  
  public void b(jdx paramjdx) {
    this.i = paramjdx;
    b();
  }
  
  public void b(miw parammiw) {
    this.f.a(ase.d(Integer.valueOf(2131297122)));
  }
  
  public void c(miw parammiw) {
    this.f.e();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jio.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */