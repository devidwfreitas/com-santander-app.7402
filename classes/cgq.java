import com.github.mikephil.charting.data.Entry;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class cgq<T extends Entry> extends cgi<T> {
  protected List<T> q = null;
  
  protected float r = -3.4028235E38F;
  
  protected float s = Float.MAX_VALUE;
  
  protected float t = -3.4028235E38F;
  
  protected float u = Float.MAX_VALUE;
  
  public cgq(List<T> paramList, String paramString) {
    super(paramString);
    this.q = paramList;
    if (this.q == null)
      this.q = new ArrayList<T>(); 
    H();
  }
  
  public void H() {
    if (this.q != null && !this.q.isEmpty()) {
      this.r = -3.4028235E38F;
      this.s = Float.MAX_VALUE;
      this.t = -3.4028235E38F;
      this.u = Float.MAX_VALUE;
      Iterator<T> iterator = this.q.iterator();
      while (true) {
        if (iterator.hasNext()) {
          a(iterator.next());
          continue;
        } 
        return;
      } 
    } 
  }
  
  public int I() {
    return this.q.size();
  }
  
  public List<T> J() {
    return this.q;
  }
  
  public String K() {
    StringBuffer stringBuffer = new StringBuffer();
    StringBuilder stringBuilder = (new StringBuilder()).append("DataSet, label: ");
    if (p() == null) {
      String str1 = "";
      stringBuffer.append(stringBuilder.append(str1).append(", entries: ").append(this.q.size()).append("\n").toString());
      return stringBuffer.toString();
    } 
    String str = p();
    stringBuffer.append(stringBuilder.append(str).append(", entries: ").append(this.q.size()).append("\n").toString());
    return stringBuffer.toString();
  }
  
  public float L() {
    return this.s;
  }
  
  public float M() {
    return this.r;
  }
  
  public float N() {
    return this.u;
  }
  
  public float O() {
    return this.t;
  }
  
  public void P() {
    this.q.clear();
    k();
  }
  
  public abstract cgq<T> a();
  
  public T a(float paramFloat1, float paramFloat2, cgr paramcgr) {
    int i = b(paramFloat1, paramFloat2, paramcgr);
    return (T)((i > -1) ? (Entry)this.q.get(i) : null);
  }
  
  public void a(float paramFloat1, float paramFloat2) {
    if (this.q != null && !this.q.isEmpty()) {
      this.r = -3.4028235E38F;
      this.s = Float.MAX_VALUE;
      int i = b(paramFloat1, Float.NaN, cgr.DOWN);
      int j = b(paramFloat2, Float.NaN, cgr.UP);
      while (true) {
        if (i <= j) {
          c(this.q.get(i));
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  protected void a(T paramT) {
    if (paramT == null)
      return; 
    d(paramT);
    c(paramT);
  }
  
  public int b(float paramFloat1, float paramFloat2, cgr paramcgr) {
    // Byte code:
    //   0: aload_0
    //   1: getfield q : Ljava/util/List;
    //   4: ifnull -> 19
    //   7: aload_0
    //   8: getfield q : Ljava/util/List;
    //   11: invokeinterface isEmpty : ()Z
    //   16: ifeq -> 25
    //   19: iconst_m1
    //   20: istore #8
    //   22: iload #8
    //   24: ireturn
    //   25: iconst_0
    //   26: istore #7
    //   28: aload_0
    //   29: getfield q : Ljava/util/List;
    //   32: invokeinterface size : ()I
    //   37: iconst_1
    //   38: isub
    //   39: istore #9
    //   41: iload #9
    //   43: istore #8
    //   45: iload #7
    //   47: iload #8
    //   49: if_icmpge -> 223
    //   52: iload #7
    //   54: iload #8
    //   56: iadd
    //   57: iconst_2
    //   58: idiv
    //   59: istore #9
    //   61: aload_0
    //   62: getfield q : Ljava/util/List;
    //   65: iload #9
    //   67: invokeinterface get : (I)Ljava/lang/Object;
    //   72: checkcast com/github/mikephil/charting/data/Entry
    //   75: invokevirtual k : ()F
    //   78: fload_1
    //   79: fsub
    //   80: fstore #4
    //   82: aload_0
    //   83: getfield q : Ljava/util/List;
    //   86: iload #9
    //   88: iconst_1
    //   89: iadd
    //   90: invokeinterface get : (I)Ljava/lang/Object;
    //   95: checkcast com/github/mikephil/charting/data/Entry
    //   98: invokevirtual k : ()F
    //   101: fstore #6
    //   103: fload #4
    //   105: invokestatic abs : (F)F
    //   108: fstore #5
    //   110: fload #6
    //   112: fload_1
    //   113: fsub
    //   114: invokestatic abs : (F)F
    //   117: fstore #6
    //   119: fload #6
    //   121: fload #5
    //   123: fcmpg
    //   124: ifge -> 160
    //   127: iload #9
    //   129: iconst_1
    //   130: iadd
    //   131: istore #9
    //   133: iload #8
    //   135: istore #7
    //   137: iload #9
    //   139: istore #8
    //   141: iload #7
    //   143: istore #9
    //   145: iload #8
    //   147: istore #10
    //   149: iload #7
    //   151: istore #8
    //   153: iload #10
    //   155: istore #7
    //   157: goto -> 45
    //   160: fload #5
    //   162: fload #6
    //   164: fcmpg
    //   165: ifge -> 179
    //   168: iload #7
    //   170: istore #8
    //   172: iload #9
    //   174: istore #7
    //   176: goto -> 141
    //   179: fload #4
    //   181: f2d
    //   182: dconst_0
    //   183: dcmpl
    //   184: iflt -> 198
    //   187: iload #7
    //   189: istore #8
    //   191: iload #9
    //   193: istore #7
    //   195: goto -> 141
    //   198: fload #4
    //   200: f2d
    //   201: dconst_0
    //   202: dcmpg
    //   203: ifge -> 473
    //   206: iload #9
    //   208: iconst_1
    //   209: iadd
    //   210: istore #9
    //   212: iload #8
    //   214: istore #7
    //   216: iload #9
    //   218: istore #8
    //   220: goto -> 141
    //   223: iload #9
    //   225: iconst_m1
    //   226: if_icmpeq -> 470
    //   229: aload_0
    //   230: getfield q : Ljava/util/List;
    //   233: iload #9
    //   235: invokeinterface get : (I)Ljava/lang/Object;
    //   240: checkcast com/github/mikephil/charting/data/Entry
    //   243: invokevirtual k : ()F
    //   246: fstore #4
    //   248: aload_3
    //   249: getstatic cgr.UP : Lcgr;
    //   252: if_acmpne -> 334
    //   255: fload #4
    //   257: fload_1
    //   258: fcmpg
    //   259: ifge -> 463
    //   262: iload #9
    //   264: aload_0
    //   265: getfield q : Ljava/util/List;
    //   268: invokeinterface size : ()I
    //   273: iconst_1
    //   274: isub
    //   275: if_icmpge -> 463
    //   278: iload #9
    //   280: iconst_1
    //   281: iadd
    //   282: istore #7
    //   284: iload #7
    //   286: istore #8
    //   288: fload_2
    //   289: invokestatic isNaN : (F)Z
    //   292: ifne -> 22
    //   295: iload #7
    //   297: ifle -> 362
    //   300: aload_0
    //   301: getfield q : Ljava/util/List;
    //   304: iload #7
    //   306: iconst_1
    //   307: isub
    //   308: invokeinterface get : (I)Ljava/lang/Object;
    //   313: checkcast com/github/mikephil/charting/data/Entry
    //   316: invokevirtual k : ()F
    //   319: fload #4
    //   321: fcmpl
    //   322: ifne -> 362
    //   325: iload #7
    //   327: iconst_1
    //   328: isub
    //   329: istore #7
    //   331: goto -> 295
    //   334: aload_3
    //   335: getstatic cgr.DOWN : Lcgr;
    //   338: if_acmpne -> 463
    //   341: fload #4
    //   343: fload_1
    //   344: fcmpl
    //   345: ifle -> 463
    //   348: iload #9
    //   350: ifle -> 463
    //   353: iload #9
    //   355: iconst_1
    //   356: isub
    //   357: istore #7
    //   359: goto -> 284
    //   362: aload_0
    //   363: getfield q : Ljava/util/List;
    //   366: iload #7
    //   368: invokeinterface get : (I)Ljava/lang/Object;
    //   373: checkcast com/github/mikephil/charting/data/Entry
    //   376: invokevirtual c : ()F
    //   379: fstore_1
    //   380: iload #7
    //   382: istore #8
    //   384: iload #8
    //   386: iconst_1
    //   387: iadd
    //   388: istore #8
    //   390: iload #8
    //   392: aload_0
    //   393: getfield q : Ljava/util/List;
    //   396: invokeinterface size : ()I
    //   401: if_icmplt -> 407
    //   404: iload #7
    //   406: ireturn
    //   407: aload_0
    //   408: getfield q : Ljava/util/List;
    //   411: iload #8
    //   413: invokeinterface get : (I)Ljava/lang/Object;
    //   418: checkcast com/github/mikephil/charting/data/Entry
    //   421: astore_3
    //   422: aload_3
    //   423: invokevirtual k : ()F
    //   426: fload #4
    //   428: fcmpl
    //   429: ifne -> 404
    //   432: aload_3
    //   433: invokevirtual c : ()F
    //   436: fload_2
    //   437: fsub
    //   438: invokestatic abs : (F)F
    //   441: fload_1
    //   442: fload_2
    //   443: fsub
    //   444: invokestatic abs : (F)F
    //   447: fcmpg
    //   448: ifge -> 460
    //   451: iload #8
    //   453: istore #7
    //   455: fload_2
    //   456: fstore_1
    //   457: goto -> 384
    //   460: goto -> 457
    //   463: iload #9
    //   465: istore #7
    //   467: goto -> 284
    //   470: iload #9
    //   472: ireturn
    //   473: iload #7
    //   475: istore #9
    //   477: iload #8
    //   479: istore #7
    //   481: iload #9
    //   483: istore #8
    //   485: goto -> 141
  }
  
  public T b(float paramFloat1, float paramFloat2) {
    return a(paramFloat1, paramFloat2, cgr.CLOSEST);
  }
  
  protected void c(T paramT) {
    if (paramT.c() < this.s)
      this.s = paramT.c(); 
    if (paramT.c() > this.r)
      this.r = paramT.c(); 
  }
  
  public void c(List<T> paramList) {
    this.q = paramList;
    k();
  }
  
  protected void d(T paramT) {
    if (paramT.k() < this.u)
      this.u = paramT.k(); 
    if (paramT.k() > this.t)
      this.t = paramT.k(); 
  }
  
  public void e(T paramT) {
    if (paramT == null)
      return; 
    if (this.q == null)
      this.q = new ArrayList<T>(); 
    a(paramT);
    if (this.q.size() > 0 && ((Entry)this.q.get(this.q.size() - 1)).k() > paramT.k()) {
      int i = b(paramT.k(), paramT.c(), cgr.UP);
      this.q.add(i, paramT);
      return;
    } 
    this.q.add(paramT);
  }
  
  public boolean f(T paramT) {
    if (paramT == null)
      return false; 
    List<T> list2 = J();
    List<T> list1 = list2;
    if (list2 == null)
      list1 = new ArrayList<T>(); 
    a(paramT);
    return list1.add(paramT);
  }
  
  public List<T> g(float paramFloat) {
    ArrayList<Entry> arrayList = new ArrayList();
    int j = 0;
    for (int i = this.q.size() - 1; j <= i; i = k - 1) {
      int k = (i + j) / 2;
      Entry entry = (Entry)this.q.get(k);
      if (paramFloat == entry.k()) {
        for (i = k; i > 0 && ((Entry)this.q.get(i - 1)).k() == paramFloat; i--);
        j = this.q.size();
        while (i < j) {
          entry = (Entry)this.q.get(i);
          if (entry.k() == paramFloat) {
            arrayList.add(entry);
            i++;
          } 
        } 
        break;
      } 
      if (paramFloat > entry.k()) {
        j = k + 1;
        continue;
      } 
    } 
    return (List)arrayList;
  }
  
  public boolean g(T paramT) {
    boolean bool = false;
    if (paramT != null && this.q != null) {
      boolean bool1 = this.q.remove(paramT);
      bool = bool1;
      if (bool1) {
        H();
        return bool1;
      } 
    } 
    return bool;
  }
  
  public int h(Entry paramEntry) {
    return this.q.indexOf(paramEntry);
  }
  
  public T m(int paramInt) {
    return this.q.get(paramInt);
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append(K());
    for (int i = 0; i < this.q.size(); i++)
      stringBuffer.append(((Entry)this.q.get(i)).toString() + " "); 
    return stringBuffer.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */