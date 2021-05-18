import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class iju extends Fragment {
  private final String a = "FazerPagamentoConfirmacaoContas1Fragment";
  
  private String b;
  
  private String c;
  
  private fvi d;
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    // Byte code:
    //   0: aload_1
    //   1: ldc 2130969040
    //   3: aload_2
    //   4: iconst_0
    //   5: invokevirtual inflate : (ILandroid/view/ViewGroup;Z)Landroid/view/View;
    //   8: astore_3
    //   9: aload_0
    //   10: invokestatic a : ()Lhau;
    //   13: invokevirtual p : ()Lfvi;
    //   16: putfield d : Lfvi;
    //   19: aload_3
    //   20: ldc 2131757273
    //   22: invokevirtual findViewById : (I)Landroid/view/View;
    //   25: checkcast android/widget/TextView
    //   28: astore_1
    //   29: aload_0
    //   30: getfield d : Lfvi;
    //   33: invokevirtual b : ()Ljava/lang/String;
    //   36: ldc 'true'
    //   38: invokevirtual equals : (Ljava/lang/Object;)Z
    //   41: ifeq -> 477
    //   44: aload_1
    //   45: ldc 2131297109
    //   47: invokevirtual setText : (I)V
    //   50: aload_3
    //   51: ldc 2131757279
    //   53: invokevirtual findViewById : (I)Landroid/view/View;
    //   56: checkcast android/widget/TextView
    //   59: astore #4
    //   61: new java/text/SimpleDateFormat
    //   64: dup
    //   65: ldc 'dd/MM/yyyy'
    //   67: invokespecial <init> : (Ljava/lang/String;)V
    //   70: astore_2
    //   71: new java/text/SimpleDateFormat
    //   74: dup
    //   75: ldc 'yyyyMMdd'
    //   77: invokespecial <init> : (Ljava/lang/String;)V
    //   80: astore #5
    //   82: aload_0
    //   83: getfield d : Lfvi;
    //   86: invokevirtual g : ()Ljava/lang/String;
    //   89: astore_1
    //   90: aload_2
    //   91: aload #5
    //   93: aload_1
    //   94: invokevirtual parse : (Ljava/lang/String;)Ljava/util/Date;
    //   97: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   100: astore_2
    //   101: aload_2
    //   102: astore_1
    //   103: aload #4
    //   105: aload_1
    //   106: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   109: aload_3
    //   110: ldc 2131757271
    //   112: invokevirtual findViewById : (I)Landroid/view/View;
    //   115: checkcast android/widget/TextView
    //   118: aload_0
    //   119: getfield d : Lfvi;
    //   122: invokevirtual f : ()Ljava/lang/String;
    //   125: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   128: aload_3
    //   129: ldc 2131757277
    //   131: invokevirtual findViewById : (I)Landroid/view/View;
    //   134: checkcast android/widget/TextView
    //   137: aload_0
    //   138: getfield d : Lfvi;
    //   141: invokevirtual q : ()Ljava/lang/String;
    //   144: invokestatic t : (Ljava/lang/String;)Ljava/lang/String;
    //   147: invokestatic s : (Ljava/lang/String;)Ljava/lang/String;
    //   150: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   153: aload_3
    //   154: ldc 2131757272
    //   156: invokevirtual findViewById : (I)Landroid/view/View;
    //   159: checkcast android/widget/TextView
    //   162: astore_1
    //   163: aload_0
    //   164: aload_0
    //   165: getfield d : Lfvi;
    //   168: invokevirtual c : ()Ljava/lang/String;
    //   171: putfield b : Ljava/lang/String;
    //   174: aload_0
    //   175: new java/lang/StringBuilder
    //   178: dup
    //   179: invokespecial <init> : ()V
    //   182: aload_0
    //   183: getfield d : Lfvi;
    //   186: invokevirtual c : ()Ljava/lang/String;
    //   189: iconst_0
    //   190: aload_0
    //   191: getfield d : Lfvi;
    //   194: invokevirtual c : ()Ljava/lang/String;
    //   197: invokevirtual length : ()I
    //   200: iconst_2
    //   201: idiv
    //   202: invokevirtual substring : (II)Ljava/lang/String;
    //   205: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: ldc ' '
    //   210: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: aload_0
    //   214: getfield d : Lfvi;
    //   217: invokevirtual c : ()Ljava/lang/String;
    //   220: aload_0
    //   221: getfield d : Lfvi;
    //   224: invokevirtual c : ()Ljava/lang/String;
    //   227: invokevirtual length : ()I
    //   230: iconst_2
    //   231: idiv
    //   232: invokevirtual substring : (I)Ljava/lang/String;
    //   235: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: invokevirtual toString : ()Ljava/lang/String;
    //   241: putfield c : Ljava/lang/String;
    //   244: aload_0
    //   245: getfield b : Ljava/lang/String;
    //   248: ifnull -> 421
    //   251: aload_0
    //   252: getfield b : Ljava/lang/String;
    //   255: invokevirtual length : ()I
    //   258: bipush #37
    //   260: if_icmple -> 421
    //   263: aload_0
    //   264: ldc ''
    //   266: putfield c : Ljava/lang/String;
    //   269: aload_0
    //   270: new java/lang/StringBuilder
    //   273: dup
    //   274: invokespecial <init> : ()V
    //   277: aload_0
    //   278: getfield c : Ljava/lang/String;
    //   281: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   284: aload_0
    //   285: getfield b : Ljava/lang/String;
    //   288: iconst_0
    //   289: bipush #12
    //   291: invokevirtual substring : (II)Ljava/lang/String;
    //   294: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: invokevirtual toString : ()Ljava/lang/String;
    //   300: putfield c : Ljava/lang/String;
    //   303: aload_0
    //   304: new java/lang/StringBuilder
    //   307: dup
    //   308: invokespecial <init> : ()V
    //   311: aload_0
    //   312: getfield c : Ljava/lang/String;
    //   315: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: ldc ' '
    //   320: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: aload_0
    //   324: getfield b : Ljava/lang/String;
    //   327: bipush #12
    //   329: bipush #24
    //   331: invokevirtual substring : (II)Ljava/lang/String;
    //   334: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: invokevirtual toString : ()Ljava/lang/String;
    //   340: putfield c : Ljava/lang/String;
    //   343: aload_0
    //   344: new java/lang/StringBuilder
    //   347: dup
    //   348: invokespecial <init> : ()V
    //   351: aload_0
    //   352: getfield c : Ljava/lang/String;
    //   355: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   358: ldc ' '
    //   360: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   363: aload_0
    //   364: getfield b : Ljava/lang/String;
    //   367: bipush #24
    //   369: bipush #36
    //   371: invokevirtual substring : (II)Ljava/lang/String;
    //   374: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: invokevirtual toString : ()Ljava/lang/String;
    //   380: putfield c : Ljava/lang/String;
    //   383: aload_0
    //   384: new java/lang/StringBuilder
    //   387: dup
    //   388: invokespecial <init> : ()V
    //   391: aload_0
    //   392: getfield c : Ljava/lang/String;
    //   395: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   398: ldc ' '
    //   400: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   403: aload_0
    //   404: getfield b : Ljava/lang/String;
    //   407: bipush #36
    //   409: invokevirtual substring : (I)Ljava/lang/String;
    //   412: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: invokevirtual toString : ()Ljava/lang/String;
    //   418: putfield c : Ljava/lang/String;
    //   421: aload_1
    //   422: aload_0
    //   423: getfield c : Ljava/lang/String;
    //   426: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   429: aload_3
    //   430: ldc 2131757278
    //   432: invokevirtual findViewById : (I)Landroid/view/View;
    //   435: checkcast android/widget/TextView
    //   438: astore_1
    //   439: aload_0
    //   440: getfield d : Lfvi;
    //   443: invokevirtual s : ()Z
    //   446: ifeq -> 500
    //   449: aload_1
    //   450: aload_0
    //   451: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   454: ldc 2131296974
    //   456: invokevirtual getString : (I)Ljava/lang/String;
    //   459: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   462: aload_3
    //   463: ldc 2131757270
    //   465: invokevirtual findViewById : (I)Landroid/view/View;
    //   468: checkcast android/widget/LinearLayout
    //   471: iconst_0
    //   472: invokevirtual setVisibility : (I)V
    //   475: aload_3
    //   476: areturn
    //   477: aload_1
    //   478: ldc 2131297110
    //   480: invokevirtual setText : (I)V
    //   483: goto -> 50
    //   486: astore_2
    //   487: ldc 'Error'
    //   489: aload_2
    //   490: invokevirtual toString : ()Ljava/lang/String;
    //   493: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   496: pop
    //   497: goto -> 103
    //   500: aload_1
    //   501: aload_0
    //   502: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   505: ldc 2131296975
    //   507: invokevirtual getString : (I)Ljava/lang/String;
    //   510: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   513: aload_3
    //   514: ldc 2131757270
    //   516: invokevirtual findViewById : (I)Landroid/view/View;
    //   519: checkcast android/widget/LinearLayout
    //   522: bipush #8
    //   524: invokevirtual setVisibility : (I)V
    //   527: aload_3
    //   528: areturn
    // Exception table:
    //   from	to	target	type
    //   90	101	486	java/text/ParseException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iju.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */