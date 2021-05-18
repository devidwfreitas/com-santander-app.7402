public abstract class cp implements cl {
  static final long[] i = new long[] { 
      4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 
      2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 
      3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 
      489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, 
      -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 
      2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, 
      -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 
      1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L };
  
  private static final int j = 128;
  
  protected long a;
  
  protected long b;
  
  protected long c;
  
  protected long d;
  
  protected long e;
  
  protected long f;
  
  protected long g;
  
  protected long h;
  
  private byte[] k = new byte[8];
  
  private int l;
  
  private long m;
  
  private long n;
  
  private long[] o = new long[80];
  
  private int p;
  
  protected cp() {
    this.l = 0;
    c();
  }
  
  protected cp(cp paramcp) {
    System.arraycopy(paramcp.k, 0, this.k, 0, paramcp.k.length);
    this.l = paramcp.l;
    this.m = paramcp.m;
    this.n = paramcp.n;
    this.a = paramcp.a;
    this.b = paramcp.b;
    this.c = paramcp.c;
    this.d = paramcp.d;
    this.e = paramcp.e;
    this.f = paramcp.f;
    this.g = paramcp.g;
    this.h = paramcp.h;
    System.arraycopy(paramcp.o, 0, this.o, 0, paramcp.o.length);
    this.p = paramcp.p;
  }
  
  private long a(long paramLong) {
    return (paramLong << 36L | paramLong >>> 28L) ^ (paramLong << 30L | paramLong >>> 34L) ^ (paramLong << 25L | paramLong >>> 39L);
  }
  
  private long a(long paramLong1, long paramLong2, long paramLong3) {
    return paramLong1 & paramLong2 ^ (0xFFFFFFFFFFFFFFFFL ^ paramLong1) & paramLong3;
  }
  
  private long b(long paramLong) {
    return (paramLong << 50L | paramLong >>> 14L) ^ (paramLong << 46L | paramLong >>> 18L) ^ (paramLong << 23L | paramLong >>> 41L);
  }
  
  private long b(long paramLong1, long paramLong2, long paramLong3) {
    return paramLong1 & paramLong2 ^ paramLong1 & paramLong3 ^ paramLong2 & paramLong3;
  }
  
  private long c(long paramLong) {
    return (paramLong << 63L | paramLong >>> 1L) ^ (paramLong << 56L | paramLong >>> 8L) ^ paramLong >>> 7L;
  }
  
  private long d(long paramLong) {
    return (paramLong << 45L | paramLong >>> 19L) ^ (paramLong << 3L | paramLong >>> 61L) ^ paramLong >>> 6L;
  }
  
  private void g() {
    if (this.m > 2305843009213693951L) {
      this.n += this.m >>> 61L;
      this.m &= 0x1FFFFFFFFFFFFFFFL;
    } 
  }
  
  public void a(byte paramByte) {
    byte[] arrayOfByte = this.k;
    int i = this.l;
    this.l = i + 1;
    arrayOfByte[i] = paramByte;
    if (this.l == this.k.length) {
      a(this.k, 0);
      this.l = 0;
    } 
    this.m++;
  }
  
  protected void a(long paramLong1, long paramLong2) {
    if (this.p > 14)
      f(); 
    this.o[14] = paramLong2;
    this.o[15] = paramLong1;
  }
  
  protected void a(long paramLong, byte[] paramArrayOfbyte, int paramInt) {
    paramArrayOfbyte[paramInt] = (byte)(int)(paramLong >>> 56L);
    paramArrayOfbyte[paramInt + 1] = (byte)(int)(paramLong >>> 48L);
    paramArrayOfbyte[paramInt + 2] = (byte)(int)(paramLong >>> 40L);
    paramArrayOfbyte[paramInt + 3] = (byte)(int)(paramLong >>> 32L);
    paramArrayOfbyte[paramInt + 4] = (byte)(int)(paramLong >>> 24L);
    paramArrayOfbyte[paramInt + 5] = (byte)(int)(paramLong >>> 16L);
    paramArrayOfbyte[paramInt + 6] = (byte)(int)(paramLong >>> 8L);
    paramArrayOfbyte[paramInt + 7] = (byte)(int)paramLong;
  }
  
  protected void a(byte[] paramArrayOfbyte, int paramInt) {
    long[] arrayOfLong = this.o;
    int i = this.p;
    this.p = i + 1;
    arrayOfLong[i] = (paramArrayOfbyte[paramInt] & 0xFF) << 56L | (paramArrayOfbyte[paramInt + 1] & 0xFF) << 48L | (paramArrayOfbyte[paramInt + 2] & 0xFF) << 40L | (paramArrayOfbyte[paramInt + 3] & 0xFF) << 32L | (paramArrayOfbyte[paramInt + 4] & 0xFF) << 24L | (paramArrayOfbyte[paramInt + 5] & 0xFF) << 16L | (paramArrayOfbyte[paramInt + 6] & 0xFF) << 8L | (paramArrayOfbyte[paramInt + 7] & 0xFF);
    if (this.p == 16)
      f(); 
  }
  
  public void a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    int i = paramInt1;
    while (true) {
      paramInt1 = i;
      int j = paramInt2;
      if (this.l != 0)
        if (paramInt2 <= 0) {
          j = paramInt2;
          paramInt1 = i;
        } else {
          a(paramArrayOfbyte[i]);
          i++;
          paramInt2--;
          continue;
        }  
      while (true) {
        if (j <= this.k.length) {
          while (true) {
            if (j <= 0)
              return; 
            a(paramArrayOfbyte[paramInt1]);
            paramInt1++;
            j--;
          } 
          break;
        } 
        a(paramArrayOfbyte, paramInt1);
        paramInt1 += this.k.length;
        j -= this.k.length;
        this.m += this.k.length;
      } 
      break;
    } 
  }
  
  public void c() {
    byte b = 0;
    this.m = 0L;
    this.n = 0L;
    this.l = 0;
    for (int i = 0;; i++) {
      if (i >= this.k.length) {
        this.p = 0;
        for (i = b;; i++) {
          if (i == this.o.length)
            return; 
          this.o[i] = 0L;
        } 
        break;
      } 
      this.k[i] = 0;
    } 
  }
  
  public void d() {
    g();
    long l1 = this.m;
    long l2 = this.n;
    a(-128);
    while (true) {
      if (this.l == 0) {
        a(l1 << 3L, l2);
        f();
        return;
      } 
      a((byte)0);
    } 
  }
  
  public int e() {
    return 128;
  }
  
  protected void f() {
    g();
    for (int i = 16;; i++) {
      if (i > 79) {
        long l1 = this.a;
        long l3 = this.b;
        long l5 = this.c;
        long l7 = this.d;
        long l2 = this.e;
        long l4 = this.f;
        long l6 = this.g;
        long l8 = this.h;
        i = 0;
        int j = 0;
        while (true) {
          if (i >= 10) {
            this.a += l1;
            this.b += l3;
            this.c += l5;
            this.d += l7;
            this.e += l2;
            this.f += l4;
            this.g += l6;
            this.h += l8;
            this.p = 0;
            for (i = 0;; i++) {
              if (i >= 16)
                return; 
              this.o[i] = 0L;
            } 
            break;
          } 
          long l9 = b(l2);
          long l10 = a(l2, l4, l6);
          long l11 = i[j];
          long[] arrayOfLong = this.o;
          int k = j + 1;
          l8 += arrayOfLong[j] + l9 + l10 + l11;
          l7 += l8;
          l9 = a(l1);
          l8 = b(l1, l3, l5) + l9 + l8;
          l9 = b(l7);
          l10 = a(l7, l2, l4);
          l11 = i[k];
          arrayOfLong = this.o;
          j = k + 1;
          l6 += l10 + l9 + l11 + arrayOfLong[k];
          l5 += l6;
          l9 = a(l8);
          l6 = b(l8, l1, l3) + l9 + l6;
          l9 = b(l5);
          l10 = a(l5, l7, l2);
          l11 = i[j];
          arrayOfLong = this.o;
          k = j + 1;
          l4 += l10 + l9 + l11 + arrayOfLong[j];
          l3 += l4;
          l9 = a(l6);
          l4 = b(l6, l8, l1) + l9 + l4;
          l9 = b(l3);
          l10 = a(l3, l5, l7);
          l11 = i[k];
          arrayOfLong = this.o;
          j = k + 1;
          l2 += l10 + l9 + l11 + arrayOfLong[k];
          l1 += l2;
          l9 = a(l4);
          l2 = b(l4, l6, l8) + l9 + l2;
          l9 = b(l1);
          l10 = a(l1, l3, l5);
          l11 = i[j];
          arrayOfLong = this.o;
          k = j + 1;
          l9 = l7 + l10 + l9 + l11 + arrayOfLong[j];
          l7 = l8 + l9;
          l9 += a(l2) + b(l2, l4, l6);
          l8 = b(l7);
          l10 = a(l7, l1, l3);
          l11 = i[k];
          arrayOfLong = this.o;
          j = k + 1;
          l5 += l10 + l8 + l11 + arrayOfLong[k];
          l6 += l5;
          l5 += a(l9) + b(l9, l2, l4);
          l8 = b(l6);
          l10 = a(l6, l7, l1);
          l11 = i[j];
          arrayOfLong = this.o;
          k = j + 1;
          l3 += l10 + l8 + l11 + arrayOfLong[j];
          l4 += l3;
          l3 += a(l5) + b(l5, l9, l2);
          l8 = b(l4);
          l1 = a(l4, l6, l7) + l8 + i[k] + this.o[k] + l1;
          l2 += l1;
          l8 = a(l3);
          l10 = b(l3, l5, l9);
          i++;
          l1 += l10 + l8;
          j = k + 1;
          l8 = l7;
          l7 = l9;
        } 
        break;
      } 
      this.o[i] = d(this.o[i - 2]) + this.o[i - 7] + c(this.o[i - 15]) + this.o[i - 16];
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */