import android.app.Activity;
import android.content.Context;

public abstract class fnt {
  private fnw m(fny paramfny) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: iconst_m1
    //   3: istore_3
    //   4: aload_1
    //   5: invokevirtual a : ()Ljava/lang/String;
    //   8: ifnull -> 289
    //   11: aload_1
    //   12: invokevirtual a : ()Ljava/lang/String;
    //   15: invokevirtual isEmpty : ()Z
    //   18: ifne -> 289
    //   21: aload_1
    //   22: invokevirtual a : ()Ljava/lang/String;
    //   25: ldc '0'
    //   27: invokevirtual equals : (Ljava/lang/Object;)Z
    //   30: ifne -> 289
    //   33: aload_1
    //   34: invokevirtual a : ()Ljava/lang/String;
    //   37: astore_1
    //   38: aload_1
    //   39: invokevirtual hashCode : ()I
    //   42: lookupswitch default -> 108, 1444 -> 204, 47666 -> 156, 47667 -> 188, 47668 -> 172, 47672 -> 220, 47673 -> 252, 46971589 -> 236
    //   108: iload_3
    //   109: istore_2
    //   110: iload_2
    //   111: tableswitch default -> 152, 0 -> 269, 1 -> 273, 2 -> 277, 3 -> 277, 4 -> 281, 5 -> 281, 6 -> 285
    //   152: getstatic fnw.ErroAoProcessar : Lfnw;
    //   155: areturn
    //   156: iload_3
    //   157: istore_2
    //   158: aload_1
    //   159: ldc '002'
    //   161: invokevirtual equals : (Ljava/lang/Object;)Z
    //   164: ifeq -> 110
    //   167: iconst_0
    //   168: istore_2
    //   169: goto -> 110
    //   172: iload_3
    //   173: istore_2
    //   174: aload_1
    //   175: ldc '004'
    //   177: invokevirtual equals : (Ljava/lang/Object;)Z
    //   180: ifeq -> 110
    //   183: iconst_1
    //   184: istore_2
    //   185: goto -> 110
    //   188: iload_3
    //   189: istore_2
    //   190: aload_1
    //   191: ldc '003'
    //   193: invokevirtual equals : (Ljava/lang/Object;)Z
    //   196: ifeq -> 110
    //   199: iconst_2
    //   200: istore_2
    //   201: goto -> 110
    //   204: iload_3
    //   205: istore_2
    //   206: aload_1
    //   207: ldc '-1'
    //   209: invokevirtual equals : (Ljava/lang/Object;)Z
    //   212: ifeq -> 110
    //   215: iconst_3
    //   216: istore_2
    //   217: goto -> 110
    //   220: iload_3
    //   221: istore_2
    //   222: aload_1
    //   223: ldc '008'
    //   225: invokevirtual equals : (Ljava/lang/Object;)Z
    //   228: ifeq -> 110
    //   231: iconst_4
    //   232: istore_2
    //   233: goto -> 110
    //   236: iload_3
    //   237: istore_2
    //   238: aload_1
    //   239: ldc '18370'
    //   241: invokevirtual equals : (Ljava/lang/Object;)Z
    //   244: ifeq -> 110
    //   247: iconst_5
    //   248: istore_2
    //   249: goto -> 110
    //   252: iload_3
    //   253: istore_2
    //   254: aload_1
    //   255: ldc '009'
    //   257: invokevirtual equals : (Ljava/lang/Object;)Z
    //   260: ifeq -> 110
    //   263: bipush #6
    //   265: istore_2
    //   266: goto -> 110
    //   269: getstatic fnw.CpfNaoCadastradoEmPE : Lfnw;
    //   272: areturn
    //   273: getstatic fnw.SenhaNaoElegivelPG : Lfnw;
    //   276: areturn
    //   277: getstatic fnw.ErroAoProcessar : Lfnw;
    //   280: areturn
    //   281: getstatic fnw.CanalBloqueadoPorFraude : Lfnw;
    //   284: areturn
    //   285: getstatic fnw.CanalBloqueadoPorDemaisMotivos : Lfnw;
    //   288: areturn
    //   289: aload_1
    //   290: invokevirtual d : ()Ljava/lang/String;
    //   293: ifnull -> 152
    //   296: aload_1
    //   297: invokevirtual d : ()Ljava/lang/String;
    //   300: invokevirtual isEmpty : ()Z
    //   303: ifne -> 152
    //   306: aload_1
    //   307: invokevirtual d : ()Ljava/lang/String;
    //   310: ldc '0'
    //   312: invokevirtual equals : (Ljava/lang/Object;)Z
    //   315: ifne -> 152
    //   318: aload_1
    //   319: invokevirtual d : ()Ljava/lang/String;
    //   322: astore_1
    //   323: aload_1
    //   324: invokevirtual hashCode : ()I
    //   327: tableswitch default -> 376, 48625 -> 427, 48626 -> 439, 48627 -> 453, 48628 -> 481, 48629 -> 376, 48630 -> 376, 48631 -> 509, 48632 -> 495, 48633 -> 467
    //   376: iconst_m1
    //   377: istore_2
    //   378: iload_2
    //   379: tableswitch default -> 420, 0 -> 423, 1 -> 524, 2 -> 528, 3 -> 528, 4 -> 532, 5 -> 536, 6 -> 540
    //   420: goto -> 152
    //   423: getstatic fnw.SenhaElegivelPG : Lfnw;
    //   426: areturn
    //   427: aload_1
    //   428: ldc '100'
    //   430: invokevirtual equals : (Ljava/lang/Object;)Z
    //   433: ifeq -> 376
    //   436: goto -> 378
    //   439: aload_1
    //   440: ldc '101'
    //   442: invokevirtual equals : (Ljava/lang/Object;)Z
    //   445: ifeq -> 376
    //   448: iconst_1
    //   449: istore_2
    //   450: goto -> 378
    //   453: aload_1
    //   454: ldc '102'
    //   456: invokevirtual equals : (Ljava/lang/Object;)Z
    //   459: ifeq -> 376
    //   462: iconst_2
    //   463: istore_2
    //   464: goto -> 378
    //   467: aload_1
    //   468: ldc '108'
    //   470: invokevirtual equals : (Ljava/lang/Object;)Z
    //   473: ifeq -> 376
    //   476: iconst_3
    //   477: istore_2
    //   478: goto -> 378
    //   481: aload_1
    //   482: ldc '103'
    //   484: invokevirtual equals : (Ljava/lang/Object;)Z
    //   487: ifeq -> 376
    //   490: iconst_4
    //   491: istore_2
    //   492: goto -> 378
    //   495: aload_1
    //   496: ldc '107'
    //   498: invokevirtual equals : (Ljava/lang/Object;)Z
    //   501: ifeq -> 376
    //   504: iconst_5
    //   505: istore_2
    //   506: goto -> 378
    //   509: aload_1
    //   510: ldc '106'
    //   512: invokevirtual equals : (Ljava/lang/Object;)Z
    //   515: ifeq -> 376
    //   518: bipush #6
    //   520: istore_2
    //   521: goto -> 378
    //   524: getstatic fnw.SenhaCancelada : Lfnw;
    //   527: areturn
    //   528: getstatic fnw.NaoCadastradoNoSN : Lfnw;
    //   531: areturn
    //   532: getstatic fnw.FezOptInNoCanal : Lfnw;
    //   535: areturn
    //   536: getstatic fnw.NaoFezOptInNoCanalComPendencia : Lfnw;
    //   539: areturn
    //   540: getstatic fnw.NaoFezOptInNoCanalSemPendencia : Lfnw;
    //   543: areturn
  }
  
  public abstract void a(Context paramContext, Activity paramActivity, fnx paramfnx, foh paramfoh);
  
  public abstract boolean a();
  
  protected boolean a(fny paramfny) {
    return (m(paramfny) == fnw.NaoFezOptInNoCanalSemPendencia);
  }
  
  public abstract boolean b();
  
  protected boolean b(fny paramfny) {
    return (m(paramfny) == fnw.NaoFezOptInNoCanalComPendencia);
  }
  
  protected boolean c(fny paramfny) {
    return (m(paramfny) == fnw.CpfNaoCadastradoEmPE);
  }
  
  protected boolean d(fny paramfny) {
    return (m(paramfny) == fnw.SenhaNaoElegivelPG);
  }
  
  protected boolean e(fny paramfny) {
    return (m(paramfny) == fnw.SenhaElegivelPG);
  }
  
  protected boolean f(fny paramfny) {
    return (m(paramfny) == fnw.ErroAoProcessar);
  }
  
  protected boolean g(fny paramfny) {
    return (m(paramfny) == fnw.NaoCadastradoNoSN);
  }
  
  protected boolean h(fny paramfny) {
    return (m(paramfny) == fnw.SenhaCancelada);
  }
  
  protected boolean i(fny paramfny) {
    return (m(paramfny) == fnw.NaoFezOptInNoCanal);
  }
  
  protected boolean j(fny paramfny) {
    return (m(paramfny) == fnw.FezOptInNoCanal);
  }
  
  protected boolean k(fny paramfny) {
    return (m(paramfny) == fnw.CanalBloqueadoPorFraude);
  }
  
  protected boolean l(fny paramfny) {
    return (m(paramfny) == fnw.CanalBloqueadoPorDemaisMotivos);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fnt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */