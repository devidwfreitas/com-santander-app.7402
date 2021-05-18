import android.content.Intent;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class kki {
  private kkh a;
  
  private kkf b;
  
  private int c;
  
  private Intent d;
  
  public kki(kkh paramkkh, Intent paramIntent) {
    this.a = paramkkh;
    this.b = new kkf(this);
    this.d = paramIntent;
    this.c = paramIntent.getIntExtra("tipo_recarga", 0);
  }
  
  public String a(String paramString) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
    return (new SimpleDateFormat("dd/MM/yyyy")).format(simpleDateFormat.parse(paramString));
  }
  
  public List<gky> a(kgj paramkgj, boolean paramBoolean) {
    String str2;
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky("Operadora:", paramkgj.b()));
    arrayList.add(new gky("Nº do celular:", "(" + paramkgj.e().substring(1) + ") " + paramkgj.E()));
    arrayList.add(new gky("Valor da recarga:", naj.f(String.valueOf(Integer.parseInt(paramkgj.t().replace("+", ""))))));
    if (paramkgj.A().equalsIgnoreCase("s")) {
      str2 = "Semanal";
    } else {
      str2 = "Mensal";
    } 
    arrayList.add(new gky("Programação:", str2));
    arrayList.add(new gky("Data ínicio:", paramkgj.m()));
    if (paramkgj.z().equalsIgnoreCase("true")) {
      str1 = "Indeterminado";
      arrayList.add(new gky("Data Final:", str1));
      return arrayList;
    } 
    String str1 = str1.j();
    arrayList.add(new gky("Data Final:", str1));
    return arrayList;
  }
  
  public List<gky> a(kic paramkic, boolean paramBoolean) {
    // Byte code:
    //   0: new java/util/ArrayList
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #6
    //   9: iload_2
    //   10: ifeq -> 276
    //   13: aload_1
    //   14: invokevirtual f : ()Ljava/lang/String;
    //   17: astore_3
    //   18: aload #6
    //   20: new gky
    //   23: dup
    //   24: ldc 'Operadora:'
    //   26: aload_3
    //   27: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   30: invokeinterface add : (Ljava/lang/Object;)Z
    //   35: pop
    //   36: aload #6
    //   38: new gky
    //   41: dup
    //   42: ldc 'Nº do celular:'
    //   44: new java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial <init> : ()V
    //   51: ldc '('
    //   53: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: aload_1
    //   57: invokevirtual j : ()Ljava/lang/String;
    //   60: iconst_3
    //   61: invokevirtual substring : (I)Ljava/lang/String;
    //   64: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: ldc ') '
    //   69: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: aload_1
    //   73: invokevirtual ae : ()Ljava/lang/String;
    //   76: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: invokevirtual toString : ()Ljava/lang/String;
    //   82: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   85: invokeinterface add : (Ljava/lang/Object;)Z
    //   90: pop
    //   91: new gky
    //   94: dup
    //   95: ldc 'Valor da recarga:'
    //   97: aload_1
    //   98: invokevirtual ac : ()Ljava/lang/String;
    //   101: ldc '+'
    //   103: ldc ''
    //   105: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   108: invokestatic parseInt : (Ljava/lang/String;)I
    //   111: invokestatic valueOf : (I)Ljava/lang/String;
    //   114: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   117: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   120: astore_3
    //   121: aload #6
    //   123: aload_3
    //   124: invokeinterface add : (Ljava/lang/Object;)Z
    //   129: pop
    //   130: invokestatic a : ()Lhau;
    //   133: invokevirtual z : ()Z
    //   136: ifeq -> 170
    //   139: new gky
    //   142: dup
    //   143: ldc 'Data agendamento:'
    //   145: aload_0
    //   146: aload_1
    //   147: invokevirtual N : ()Ljava/lang/String;
    //   150: invokevirtual a : (Ljava/lang/String;)Ljava/lang/String;
    //   153: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   156: astore #4
    //   158: aload #4
    //   160: astore_3
    //   161: aload #6
    //   163: aload_3
    //   164: invokeinterface add : (Ljava/lang/Object;)Z
    //   169: pop
    //   170: ldc ''
    //   172: astore #5
    //   174: iload_2
    //   175: ifeq -> 273
    //   178: aload_0
    //   179: aload_1
    //   180: invokevirtual n : ()Ljava/lang/String;
    //   183: invokevirtual a : (Ljava/lang/String;)Ljava/lang/String;
    //   186: astore_3
    //   187: aload_1
    //   188: invokevirtual Y : ()Ljava/lang/String;
    //   191: ldc 'true'
    //   193: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   196: ifeq -> 300
    //   199: ldc 'Indeterminado'
    //   201: astore #4
    //   203: aload_1
    //   204: invokevirtual e : ()Ljava/lang/String;
    //   207: ldc 'S'
    //   209: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   212: ifeq -> 336
    //   215: ldc 'Semanal'
    //   217: astore_1
    //   218: aload #6
    //   220: new gky
    //   223: dup
    //   224: ldc 'Programação:'
    //   226: aload_1
    //   227: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   230: invokeinterface add : (Ljava/lang/Object;)Z
    //   235: pop
    //   236: aload #6
    //   238: new gky
    //   241: dup
    //   242: ldc 'Data ínicio:'
    //   244: aload_3
    //   245: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   248: invokeinterface add : (Ljava/lang/Object;)Z
    //   253: pop
    //   254: aload #6
    //   256: new gky
    //   259: dup
    //   260: ldc 'Data Final:'
    //   262: aload #4
    //   264: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   267: invokeinterface add : (Ljava/lang/Object;)Z
    //   272: pop
    //   273: aload #6
    //   275: areturn
    //   276: aload_1
    //   277: invokevirtual o : ()Ljava/lang/String;
    //   280: astore_3
    //   281: goto -> 18
    //   284: astore #4
    //   286: ldc 'Error'
    //   288: aload #4
    //   290: invokevirtual getMessage : ()Ljava/lang/String;
    //   293: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   296: pop
    //   297: goto -> 161
    //   300: aload_0
    //   301: aload_1
    //   302: invokevirtual m : ()Ljava/lang/String;
    //   305: invokevirtual b : (Ljava/lang/String;)Ljava/lang/String;
    //   308: astore #4
    //   310: goto -> 203
    //   313: astore #4
    //   315: ldc ''
    //   317: astore_3
    //   318: ldc 'Error'
    //   320: aload #4
    //   322: invokevirtual getMessage : ()Ljava/lang/String;
    //   325: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   328: pop
    //   329: aload #5
    //   331: astore #4
    //   333: goto -> 203
    //   336: ldc 'Mensal'
    //   338: astore_1
    //   339: goto -> 218
    //   342: astore #4
    //   344: goto -> 318
    // Exception table:
    //   from	to	target	type
    //   139	158	284	java/text/ParseException
    //   178	187	313	java/lang/Exception
    //   187	199	342	java/lang/Exception
    //   300	310	342	java/lang/Exception
  }
  
  public List<gky> a(kid paramkid, boolean paramBoolean) {
    // Byte code:
    //   0: new java/util/ArrayList
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #6
    //   9: aload #6
    //   11: new gky
    //   14: dup
    //   15: ldc 'Operadora:'
    //   17: aload_1
    //   18: invokevirtual b : ()Ljava/lang/String;
    //   21: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   24: invokeinterface add : (Ljava/lang/Object;)Z
    //   29: pop
    //   30: aload #6
    //   32: new gky
    //   35: dup
    //   36: ldc 'Nº do celular:'
    //   38: new java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial <init> : ()V
    //   45: ldc '('
    //   47: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: aload_1
    //   51: invokevirtual d : ()Ljava/lang/String;
    //   54: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: ldc ') '
    //   59: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: aload_1
    //   63: invokevirtual D : ()Ljava/lang/String;
    //   66: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: invokevirtual toString : ()Ljava/lang/String;
    //   72: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   75: invokeinterface add : (Ljava/lang/Object;)Z
    //   80: pop
    //   81: aload #6
    //   83: new gky
    //   86: dup
    //   87: ldc 'Valor da recarga:'
    //   89: aload_1
    //   90: invokevirtual u : ()Ljava/lang/String;
    //   93: ldc '+'
    //   95: ldc ''
    //   97: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   100: invokestatic parseInt : (Ljava/lang/String;)I
    //   103: invokestatic valueOf : (I)Ljava/lang/String;
    //   106: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   109: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   112: invokeinterface add : (Ljava/lang/Object;)Z
    //   117: pop
    //   118: aload_1
    //   119: invokevirtual B : ()Ljava/lang/String;
    //   122: ldc 's'
    //   124: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   127: ifeq -> 230
    //   130: ldc 'Semanal'
    //   132: astore_3
    //   133: aload #6
    //   135: new gky
    //   138: dup
    //   139: ldc 'Periodicidade:'
    //   141: aload_3
    //   142: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   145: invokeinterface add : (Ljava/lang/Object;)Z
    //   150: pop
    //   151: ldc ''
    //   153: astore #5
    //   155: aload_0
    //   156: aload_1
    //   157: invokevirtual k : ()Ljava/lang/String;
    //   160: invokevirtual a : (Ljava/lang/String;)Ljava/lang/String;
    //   163: astore_3
    //   164: aload_0
    //   165: aload_1
    //   166: invokevirtual j : ()Ljava/lang/String;
    //   169: invokevirtual b : (Ljava/lang/String;)Ljava/lang/String;
    //   172: astore #4
    //   174: aload #6
    //   176: new gky
    //   179: dup
    //   180: ldc 'Data ínicio:'
    //   182: aload_3
    //   183: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   186: invokeinterface add : (Ljava/lang/Object;)Z
    //   191: pop
    //   192: aload_1
    //   193: invokevirtual A : ()Ljava/lang/String;
    //   196: ldc 'true'
    //   198: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   201: ifeq -> 208
    //   204: ldc 'Indeterminado'
    //   206: astore #4
    //   208: aload #6
    //   210: new gky
    //   213: dup
    //   214: ldc 'Data Final:'
    //   216: aload #4
    //   218: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   221: invokeinterface add : (Ljava/lang/Object;)Z
    //   226: pop
    //   227: aload #6
    //   229: areturn
    //   230: ldc 'Mensal'
    //   232: astore_3
    //   233: goto -> 133
    //   236: astore #4
    //   238: ldc ''
    //   240: astore_3
    //   241: ldc 'Error'
    //   243: aload #4
    //   245: invokevirtual getMessage : ()Ljava/lang/String;
    //   248: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   251: pop
    //   252: aload #5
    //   254: astore #4
    //   256: goto -> 174
    //   259: astore #4
    //   261: goto -> 241
    // Exception table:
    //   from	to	target	type
    //   155	164	236	java/lang/Exception
    //   164	174	259	java/lang/Exception
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    kic kic;
    kid kid;
    this.a.a();
    switch (this.c) {
      default:
        return;
      case 0:
        kic = (kic)this.d.getSerializableExtra("data");
        this.b.b(kic);
        return;
      case 1:
        kic = (kic)this.d.getSerializableExtra("data");
        this.b.c(kic);
        return;
      case 2:
        kid = (kid)this.d.getSerializableExtra("data");
        this.b.a(kid);
        return;
      case 3:
        break;
    } 
    kgj kgj = (kgj)this.d.getSerializableExtra("data");
    this.b.a(kgj);
  }
  
  public void a(kgj paramkgj, kia paramkia) {
    this.a.b();
    this.a.a(paramkgj, paramkia);
  }
  
  public void a(kic paramkic, kia paramkia) {
    this.a.b();
    this.a.a(paramkic, paramkia);
  }
  
  public void a(kic paramkic1, kic paramkic2) {
    this.a.b();
    this.a.a(paramkic1, paramkic2);
  }
  
  public void a(kid paramkid, kjg paramkjg) {
    this.a.b();
    this.a.a(paramkid, paramkjg);
  }
  
  public String b(String paramString) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("ddMMyy");
    return (new SimpleDateFormat("dd/MM/yyyy")).format(simpleDateFormat.parse(paramString));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */