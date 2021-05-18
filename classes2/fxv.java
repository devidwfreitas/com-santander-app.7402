import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.santander.app.cadastrocanal.activity.QuizStartActivity;
import java.util.List;

public class fxv extends ArrayAdapter<fyk> {
  public static Boolean a = Boolean.valueOf(true);
  
  public fyg b = new fyg();
  
  public int c = 0;
  
  private List<fyk> d;
  
  private int e;
  
  private Context f;
  
  private fye g;
  
  public fxv(fye paramfye, Context paramContext, int paramInt, List<fyk> paramList) {
    super(paramContext, 2130969363, paramList);
    this.g = paramfye;
    this.f = paramContext;
    this.d = paramList;
    this.e = paramInt;
    a = Boolean.valueOf(true);
    QuizStartActivity.o().clear();
  }
  
  public fyk a(int paramInt) {
    return (fyk)super.getItem(paramInt);
  }
  
  public void a(fyk paramfyk) {
    boolean bool = true;
    if (paramfyk.h() == true)
      bool = false; 
    paramfyk.a(bool);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    // Byte code:
    //   0: aload_0
    //   1: getfield d : Ljava/util/List;
    //   4: ifnull -> 1934
    //   7: aload_2
    //   8: astore_3
    //   9: aload_2
    //   10: ifnonnull -> 79
    //   13: aload_0
    //   14: invokevirtual getContext : ()Landroid/content/Context;
    //   17: invokestatic from : (Landroid/content/Context;)Landroid/view/LayoutInflater;
    //   20: aload_0
    //   21: getfield e : I
    //   24: aconst_null
    //   25: invokevirtual inflate : (ILandroid/view/ViewGroup;)Landroid/view/View;
    //   28: astore_3
    //   29: aload_3
    //   30: astore_2
    //   31: new fyd
    //   34: dup
    //   35: invokespecial <init> : ()V
    //   38: pop
    //   39: aload_3
    //   40: astore_2
    //   41: new fyd
    //   44: dup
    //   45: invokespecial <init> : ()V
    //   48: astore #4
    //   50: aload_3
    //   51: astore_2
    //   52: aload #4
    //   54: aload_0
    //   55: getfield d : Ljava/util/List;
    //   58: iload_1
    //   59: invokeinterface get : (I)Ljava/lang/Object;
    //   64: checkcast fyk
    //   67: invokestatic a : (Lfyd;Lfyk;)Lfyk;
    //   70: pop
    //   71: aload_3
    //   72: astore_2
    //   73: aload_3
    //   74: aload #4
    //   76: invokevirtual setTag : (Ljava/lang/Object;)V
    //   79: aload_3
    //   80: astore_2
    //   81: aload_3
    //   82: invokevirtual getTag : ()Ljava/lang/Object;
    //   85: checkcast fyd
    //   88: astore #4
    //   90: aload_3
    //   91: astore_2
    //   92: aload #4
    //   94: aload_3
    //   95: ldc 2131759077
    //   97: invokevirtual findViewById : (I)Landroid/view/View;
    //   100: checkcast android/widget/TextView
    //   103: invokestatic a : (Lfyd;Landroid/widget/TextView;)Landroid/widget/TextView;
    //   106: pop
    //   107: aload_3
    //   108: astore_2
    //   109: aload #4
    //   111: invokestatic b : (Lfyd;)Landroid/widget/TextView;
    //   114: aload #4
    //   116: invokestatic a : (Lfyd;)Lfyk;
    //   119: invokevirtual c : ()Ljava/lang/String;
    //   122: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   125: aload_3
    //   126: astore_2
    //   127: aload #4
    //   129: invokestatic a : (Lfyd;)Lfyk;
    //   132: invokevirtual h : ()Z
    //   135: ifeq -> 1890
    //   138: aload_3
    //   139: astore_2
    //   140: aload #4
    //   142: invokestatic b : (Lfyd;)Landroid/widget/TextView;
    //   145: iconst_0
    //   146: invokevirtual setVisibility : (I)V
    //   149: aload_3
    //   150: astore_2
    //   151: aload #4
    //   153: aload_3
    //   154: ldc 2131759078
    //   156: invokevirtual findViewById : (I)Landroid/view/View;
    //   159: checkcast android/widget/EditText
    //   162: invokestatic a : (Lfyd;Landroid/widget/EditText;)Landroid/widget/EditText;
    //   165: pop
    //   166: aload_3
    //   167: astore_2
    //   168: aload #4
    //   170: invokestatic a : (Lfyd;)Lfyk;
    //   173: invokevirtual h : ()Z
    //   176: ifeq -> 1919
    //   179: aload_3
    //   180: astore_2
    //   181: aload #4
    //   183: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   186: iconst_0
    //   187: invokevirtual setVisibility : (I)V
    //   190: aload_3
    //   191: astore_2
    //   192: aload #4
    //   194: aload_3
    //   195: ldc 2131759076
    //   197: invokevirtual findViewById : (I)Landroid/view/View;
    //   200: checkcast android/widget/CheckBox
    //   203: invokestatic a : (Lfyd;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    //   206: pop
    //   207: aload_3
    //   208: astore_2
    //   209: aload #4
    //   211: invokestatic a : (Lfyd;)Lfyk;
    //   214: invokevirtual b : ()Ljava/lang/String;
    //   217: ldc '01'
    //   219: invokevirtual matches : (Ljava/lang/String;)Z
    //   222: ifeq -> 481
    //   225: aload_3
    //   226: astore_2
    //   227: aload_0
    //   228: getfield c : I
    //   231: ifne -> 418
    //   234: aload_3
    //   235: astore_2
    //   236: aload_0
    //   237: aload_0
    //   238: getfield c : I
    //   241: iconst_1
    //   242: iadd
    //   243: putfield c : I
    //   246: aload_3
    //   247: astore_2
    //   248: aload #4
    //   250: invokestatic a : (Lfyd;)Lfyk;
    //   253: invokevirtual b : ()Ljava/lang/String;
    //   256: invokevirtual toString : ()Ljava/lang/String;
    //   259: invokestatic k : (Ljava/lang/String;)V
    //   262: aload_3
    //   263: astore_2
    //   264: aload #4
    //   266: invokestatic a : (Lfyd;)Lfyk;
    //   269: invokevirtual f : ()Ljava/lang/String;
    //   272: invokevirtual toString : ()Ljava/lang/String;
    //   275: invokestatic d : (Ljava/lang/String;)V
    //   278: aload_3
    //   279: astore_2
    //   280: aload #4
    //   282: invokestatic a : (Lfyd;)Lfyk;
    //   285: invokevirtual g : ()Ljava/lang/String;
    //   288: invokevirtual toString : ()Ljava/lang/String;
    //   291: invokestatic a : (Ljava/lang/String;)V
    //   294: aload_3
    //   295: astore_2
    //   296: aload #4
    //   298: invokestatic a : (Lfyd;)Lfyk;
    //   301: invokevirtual a : ()Ljava/lang/String;
    //   304: invokevirtual toString : ()Ljava/lang/String;
    //   307: invokestatic b : (Ljava/lang/String;)V
    //   310: aload_3
    //   311: astore_2
    //   312: new fyg
    //   315: dup
    //   316: invokespecial <init> : ()V
    //   319: invokestatic a : (Lfyg;)V
    //   322: aload_3
    //   323: astore_2
    //   324: invokestatic n : ()Lfyg;
    //   327: invokestatic k : ()Ljava/lang/String;
    //   330: invokevirtual a : (Ljava/lang/String;)V
    //   333: aload_3
    //   334: astore_2
    //   335: invokestatic n : ()Lfyg;
    //   338: invokestatic d : ()Ljava/lang/String;
    //   341: invokevirtual b : (Ljava/lang/String;)V
    //   344: aload_3
    //   345: astore_2
    //   346: invokestatic n : ()Lfyg;
    //   349: invokestatic a : ()Ljava/lang/String;
    //   352: invokevirtual d : (Ljava/lang/String;)V
    //   355: aload_3
    //   356: astore_2
    //   357: invokestatic n : ()Lfyg;
    //   360: invokestatic b : ()Ljava/lang/String;
    //   363: invokevirtual e : (Ljava/lang/String;)V
    //   366: aload_3
    //   367: astore_2
    //   368: invokestatic n : ()Lfyg;
    //   371: aload #4
    //   373: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   376: invokevirtual getText : ()Landroid/text/Editable;
    //   379: invokevirtual toString : ()Ljava/lang/String;
    //   382: invokevirtual c : (Ljava/lang/String;)V
    //   385: aload_3
    //   386: astore_2
    //   387: invokestatic n : ()Lfyg;
    //   390: aload #4
    //   392: invokestatic a : (Lfyd;)Lfyk;
    //   395: invokevirtual d : ()Ljava/lang/String;
    //   398: invokevirtual toString : ()Ljava/lang/String;
    //   401: invokevirtual g : (Ljava/lang/String;)V
    //   404: aload_3
    //   405: astore_2
    //   406: invokestatic o : ()Ljava/util/List;
    //   409: invokestatic n : ()Lfyg;
    //   412: invokeinterface add : (Ljava/lang/Object;)Z
    //   417: pop
    //   418: aload_3
    //   419: astore_2
    //   420: new android/text/InputFilter$LengthFilter
    //   423: dup
    //   424: bipush #10
    //   426: invokespecial <init> : (I)V
    //   429: astore #5
    //   431: aload_3
    //   432: astore_2
    //   433: aload #4
    //   435: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   438: iconst_1
    //   439: anewarray android/text/InputFilter
    //   442: dup
    //   443: iconst_0
    //   444: aload #5
    //   446: aastore
    //   447: invokevirtual setFilters : ([Landroid/text/InputFilter;)V
    //   450: aload_3
    //   451: astore_2
    //   452: aload #4
    //   454: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   457: iconst_2
    //   458: invokevirtual setInputType : (I)V
    //   461: aload_3
    //   462: astore_2
    //   463: aload #4
    //   465: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   468: new fxw
    //   471: dup
    //   472: aload_0
    //   473: aload #4
    //   475: invokespecial <init> : (Lfxv;Lfyd;)V
    //   478: invokevirtual addTextChangedListener : (Landroid/text/TextWatcher;)V
    //   481: aload_3
    //   482: astore_2
    //   483: aload #4
    //   485: invokestatic a : (Lfyd;)Lfyk;
    //   488: invokevirtual b : ()Ljava/lang/String;
    //   491: ldc '05'
    //   493: invokevirtual matches : (Ljava/lang/String;)Z
    //   496: ifeq -> 733
    //   499: aload_3
    //   500: astore_2
    //   501: aload #4
    //   503: invokestatic a : (Lfyd;)Lfyk;
    //   506: invokevirtual b : ()Ljava/lang/String;
    //   509: invokevirtual toString : ()Ljava/lang/String;
    //   512: invokestatic k : (Ljava/lang/String;)V
    //   515: aload_3
    //   516: astore_2
    //   517: aload #4
    //   519: invokestatic a : (Lfyd;)Lfyk;
    //   522: invokevirtual f : ()Ljava/lang/String;
    //   525: invokevirtual toString : ()Ljava/lang/String;
    //   528: invokestatic d : (Ljava/lang/String;)V
    //   531: aload_3
    //   532: astore_2
    //   533: aload #4
    //   535: invokestatic a : (Lfyd;)Lfyk;
    //   538: invokevirtual g : ()Ljava/lang/String;
    //   541: invokevirtual toString : ()Ljava/lang/String;
    //   544: invokestatic a : (Ljava/lang/String;)V
    //   547: aload_3
    //   548: astore_2
    //   549: aload #4
    //   551: invokestatic a : (Lfyd;)Lfyk;
    //   554: invokevirtual a : ()Ljava/lang/String;
    //   557: invokevirtual toString : ()Ljava/lang/String;
    //   560: invokestatic b : (Ljava/lang/String;)V
    //   563: aload_3
    //   564: astore_2
    //   565: new fyg
    //   568: dup
    //   569: invokespecial <init> : ()V
    //   572: invokestatic a : (Lfyg;)V
    //   575: aload_3
    //   576: astore_2
    //   577: invokestatic n : ()Lfyg;
    //   580: invokestatic k : ()Ljava/lang/String;
    //   583: invokevirtual a : (Ljava/lang/String;)V
    //   586: aload_3
    //   587: astore_2
    //   588: invokestatic n : ()Lfyg;
    //   591: invokestatic d : ()Ljava/lang/String;
    //   594: invokevirtual b : (Ljava/lang/String;)V
    //   597: aload_3
    //   598: astore_2
    //   599: invokestatic n : ()Lfyg;
    //   602: invokestatic a : ()Ljava/lang/String;
    //   605: invokevirtual d : (Ljava/lang/String;)V
    //   608: aload_3
    //   609: astore_2
    //   610: invokestatic n : ()Lfyg;
    //   613: invokestatic b : ()Ljava/lang/String;
    //   616: invokevirtual e : (Ljava/lang/String;)V
    //   619: aload_3
    //   620: astore_2
    //   621: invokestatic n : ()Lfyg;
    //   624: aload #4
    //   626: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   629: invokevirtual getText : ()Landroid/text/Editable;
    //   632: invokevirtual toString : ()Ljava/lang/String;
    //   635: invokevirtual c : (Ljava/lang/String;)V
    //   638: aload_3
    //   639: astore_2
    //   640: invokestatic n : ()Lfyg;
    //   643: aload #4
    //   645: invokestatic a : (Lfyd;)Lfyk;
    //   648: invokevirtual d : ()Ljava/lang/String;
    //   651: invokevirtual toString : ()Ljava/lang/String;
    //   654: invokevirtual g : (Ljava/lang/String;)V
    //   657: aload_3
    //   658: astore_2
    //   659: invokestatic o : ()Ljava/util/List;
    //   662: invokestatic n : ()Lfyg;
    //   665: invokeinterface add : (Ljava/lang/Object;)Z
    //   670: pop
    //   671: aload_3
    //   672: astore_2
    //   673: aload #4
    //   675: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   678: iconst_3
    //   679: invokevirtual setInputType : (I)V
    //   682: aload_3
    //   683: astore_2
    //   684: new android/text/InputFilter$LengthFilter
    //   687: dup
    //   688: iconst_4
    //   689: invokespecial <init> : (I)V
    //   692: astore #5
    //   694: aload_3
    //   695: astore_2
    //   696: aload #4
    //   698: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   701: iconst_1
    //   702: anewarray android/text/InputFilter
    //   705: dup
    //   706: iconst_0
    //   707: aload #5
    //   709: aastore
    //   710: invokevirtual setFilters : ([Landroid/text/InputFilter;)V
    //   713: aload_3
    //   714: astore_2
    //   715: aload #4
    //   717: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   720: new fxx
    //   723: dup
    //   724: aload_0
    //   725: aload #4
    //   727: invokespecial <init> : (Lfxv;Lfyd;)V
    //   730: invokevirtual addTextChangedListener : (Landroid/text/TextWatcher;)V
    //   733: aload_3
    //   734: astore_2
    //   735: aload #4
    //   737: invokestatic a : (Lfyd;)Lfyk;
    //   740: invokevirtual b : ()Ljava/lang/String;
    //   743: ldc '06'
    //   745: invokevirtual matches : (Ljava/lang/String;)Z
    //   748: ifeq -> 986
    //   751: aload_3
    //   752: astore_2
    //   753: aload #4
    //   755: invokestatic a : (Lfyd;)Lfyk;
    //   758: invokevirtual b : ()Ljava/lang/String;
    //   761: invokevirtual toString : ()Ljava/lang/String;
    //   764: invokestatic k : (Ljava/lang/String;)V
    //   767: aload_3
    //   768: astore_2
    //   769: aload #4
    //   771: invokestatic a : (Lfyd;)Lfyk;
    //   774: invokevirtual f : ()Ljava/lang/String;
    //   777: invokevirtual toString : ()Ljava/lang/String;
    //   780: invokestatic d : (Ljava/lang/String;)V
    //   783: aload_3
    //   784: astore_2
    //   785: aload #4
    //   787: invokestatic a : (Lfyd;)Lfyk;
    //   790: invokevirtual g : ()Ljava/lang/String;
    //   793: invokevirtual toString : ()Ljava/lang/String;
    //   796: invokestatic a : (Ljava/lang/String;)V
    //   799: aload_3
    //   800: astore_2
    //   801: aload #4
    //   803: invokestatic a : (Lfyd;)Lfyk;
    //   806: invokevirtual a : ()Ljava/lang/String;
    //   809: invokevirtual toString : ()Ljava/lang/String;
    //   812: invokestatic b : (Ljava/lang/String;)V
    //   815: aload_3
    //   816: astore_2
    //   817: new fyg
    //   820: dup
    //   821: invokespecial <init> : ()V
    //   824: invokestatic a : (Lfyg;)V
    //   827: aload_3
    //   828: astore_2
    //   829: invokestatic n : ()Lfyg;
    //   832: invokestatic k : ()Ljava/lang/String;
    //   835: invokevirtual a : (Ljava/lang/String;)V
    //   838: aload_3
    //   839: astore_2
    //   840: invokestatic n : ()Lfyg;
    //   843: invokestatic d : ()Ljava/lang/String;
    //   846: invokevirtual b : (Ljava/lang/String;)V
    //   849: aload_3
    //   850: astore_2
    //   851: invokestatic n : ()Lfyg;
    //   854: invokestatic a : ()Ljava/lang/String;
    //   857: invokevirtual d : (Ljava/lang/String;)V
    //   860: aload_3
    //   861: astore_2
    //   862: invokestatic n : ()Lfyg;
    //   865: invokestatic b : ()Ljava/lang/String;
    //   868: invokevirtual e : (Ljava/lang/String;)V
    //   871: aload_3
    //   872: astore_2
    //   873: invokestatic n : ()Lfyg;
    //   876: aload #4
    //   878: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   881: invokevirtual getText : ()Landroid/text/Editable;
    //   884: invokevirtual toString : ()Ljava/lang/String;
    //   887: invokevirtual c : (Ljava/lang/String;)V
    //   890: aload_3
    //   891: astore_2
    //   892: invokestatic n : ()Lfyg;
    //   895: aload #4
    //   897: invokestatic a : (Lfyd;)Lfyk;
    //   900: invokevirtual d : ()Ljava/lang/String;
    //   903: invokevirtual toString : ()Ljava/lang/String;
    //   906: invokevirtual g : (Ljava/lang/String;)V
    //   909: aload_3
    //   910: astore_2
    //   911: invokestatic o : ()Ljava/util/List;
    //   914: invokestatic n : ()Lfyg;
    //   917: invokeinterface add : (Ljava/lang/Object;)Z
    //   922: pop
    //   923: aload_3
    //   924: astore_2
    //   925: aload #4
    //   927: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   930: iconst_3
    //   931: invokevirtual setInputType : (I)V
    //   934: aload_3
    //   935: astore_2
    //   936: new android/text/InputFilter$LengthFilter
    //   939: dup
    //   940: bipush #12
    //   942: invokespecial <init> : (I)V
    //   945: astore #5
    //   947: aload_3
    //   948: astore_2
    //   949: aload #4
    //   951: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   954: iconst_1
    //   955: anewarray android/text/InputFilter
    //   958: dup
    //   959: iconst_0
    //   960: aload #5
    //   962: aastore
    //   963: invokevirtual setFilters : ([Landroid/text/InputFilter;)V
    //   966: aload_3
    //   967: astore_2
    //   968: aload #4
    //   970: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   973: new fxy
    //   976: dup
    //   977: aload_0
    //   978: aload #4
    //   980: invokespecial <init> : (Lfxv;Lfyd;)V
    //   983: invokevirtual addTextChangedListener : (Landroid/text/TextWatcher;)V
    //   986: aload_3
    //   987: astore_2
    //   988: aload #4
    //   990: invokestatic a : (Lfyd;)Lfyk;
    //   993: invokevirtual b : ()Ljava/lang/String;
    //   996: ldc_w '02'
    //   999: invokevirtual matches : (Ljava/lang/String;)Z
    //   1002: ifeq -> 1239
    //   1005: aload_3
    //   1006: astore_2
    //   1007: aload #4
    //   1009: invokestatic a : (Lfyd;)Lfyk;
    //   1012: invokevirtual b : ()Ljava/lang/String;
    //   1015: invokevirtual toString : ()Ljava/lang/String;
    //   1018: invokestatic k : (Ljava/lang/String;)V
    //   1021: aload_3
    //   1022: astore_2
    //   1023: aload #4
    //   1025: invokestatic a : (Lfyd;)Lfyk;
    //   1028: invokevirtual f : ()Ljava/lang/String;
    //   1031: invokevirtual toString : ()Ljava/lang/String;
    //   1034: invokestatic d : (Ljava/lang/String;)V
    //   1037: aload_3
    //   1038: astore_2
    //   1039: aload #4
    //   1041: invokestatic a : (Lfyd;)Lfyk;
    //   1044: invokevirtual g : ()Ljava/lang/String;
    //   1047: invokevirtual toString : ()Ljava/lang/String;
    //   1050: invokestatic a : (Ljava/lang/String;)V
    //   1053: aload_3
    //   1054: astore_2
    //   1055: aload #4
    //   1057: invokestatic a : (Lfyd;)Lfyk;
    //   1060: invokevirtual a : ()Ljava/lang/String;
    //   1063: invokevirtual toString : ()Ljava/lang/String;
    //   1066: invokestatic b : (Ljava/lang/String;)V
    //   1069: aload_3
    //   1070: astore_2
    //   1071: new fyg
    //   1074: dup
    //   1075: invokespecial <init> : ()V
    //   1078: invokestatic a : (Lfyg;)V
    //   1081: aload_3
    //   1082: astore_2
    //   1083: invokestatic n : ()Lfyg;
    //   1086: invokestatic k : ()Ljava/lang/String;
    //   1089: invokevirtual a : (Ljava/lang/String;)V
    //   1092: aload_3
    //   1093: astore_2
    //   1094: invokestatic n : ()Lfyg;
    //   1097: invokestatic d : ()Ljava/lang/String;
    //   1100: invokevirtual b : (Ljava/lang/String;)V
    //   1103: aload_3
    //   1104: astore_2
    //   1105: invokestatic n : ()Lfyg;
    //   1108: invokestatic a : ()Ljava/lang/String;
    //   1111: invokevirtual d : (Ljava/lang/String;)V
    //   1114: aload_3
    //   1115: astore_2
    //   1116: invokestatic n : ()Lfyg;
    //   1119: invokestatic b : ()Ljava/lang/String;
    //   1122: invokevirtual e : (Ljava/lang/String;)V
    //   1125: aload_3
    //   1126: astore_2
    //   1127: invokestatic n : ()Lfyg;
    //   1130: aload #4
    //   1132: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1135: invokevirtual getText : ()Landroid/text/Editable;
    //   1138: invokevirtual toString : ()Ljava/lang/String;
    //   1141: invokevirtual c : (Ljava/lang/String;)V
    //   1144: aload_3
    //   1145: astore_2
    //   1146: invokestatic n : ()Lfyg;
    //   1149: aload #4
    //   1151: invokestatic a : (Lfyd;)Lfyk;
    //   1154: invokevirtual d : ()Ljava/lang/String;
    //   1157: invokevirtual toString : ()Ljava/lang/String;
    //   1160: invokevirtual g : (Ljava/lang/String;)V
    //   1163: aload_3
    //   1164: astore_2
    //   1165: invokestatic o : ()Ljava/util/List;
    //   1168: invokestatic n : ()Lfyg;
    //   1171: invokeinterface add : (Ljava/lang/Object;)Z
    //   1176: pop
    //   1177: aload_3
    //   1178: astore_2
    //   1179: aload #4
    //   1181: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1184: iconst_3
    //   1185: invokevirtual setInputType : (I)V
    //   1188: aload_3
    //   1189: astore_2
    //   1190: new android/text/InputFilter$LengthFilter
    //   1193: dup
    //   1194: iconst_4
    //   1195: invokespecial <init> : (I)V
    //   1198: astore #5
    //   1200: aload_3
    //   1201: astore_2
    //   1202: aload #4
    //   1204: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1207: iconst_1
    //   1208: anewarray android/text/InputFilter
    //   1211: dup
    //   1212: iconst_0
    //   1213: aload #5
    //   1215: aastore
    //   1216: invokevirtual setFilters : ([Landroid/text/InputFilter;)V
    //   1219: aload_3
    //   1220: astore_2
    //   1221: aload #4
    //   1223: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1226: new fxz
    //   1229: dup
    //   1230: aload_0
    //   1231: aload #4
    //   1233: invokespecial <init> : (Lfxv;Lfyd;)V
    //   1236: invokevirtual addTextChangedListener : (Landroid/text/TextWatcher;)V
    //   1239: aload_3
    //   1240: astore_2
    //   1241: aload #4
    //   1243: invokestatic a : (Lfyd;)Lfyk;
    //   1246: invokevirtual e : ()Ljava/lang/String;
    //   1249: ldc '01'
    //   1251: invokevirtual matches : (Ljava/lang/String;)Z
    //   1254: ifeq -> 1326
    //   1257: aload_3
    //   1258: astore_2
    //   1259: aload #4
    //   1261: invokestatic a : (Lfyd;)Lfyk;
    //   1264: invokevirtual a : ()Ljava/lang/String;
    //   1267: ldc_w 'OPC'
    //   1270: invokevirtual matches : (Ljava/lang/String;)Z
    //   1273: ifne -> 1295
    //   1276: aload_3
    //   1277: astore_2
    //   1278: aload #4
    //   1280: invokestatic a : (Lfyd;)Lfyk;
    //   1283: invokevirtual a : ()Ljava/lang/String;
    //   1286: ldc_w 'OCL'
    //   1289: invokevirtual matches : (Ljava/lang/String;)Z
    //   1292: ifeq -> 1326
    //   1295: aload_3
    //   1296: astore_2
    //   1297: getstatic fxv.a : Ljava/lang/Boolean;
    //   1300: invokevirtual booleanValue : ()Z
    //   1303: ifeq -> 1326
    //   1306: aload_3
    //   1307: astore_2
    //   1308: aload #4
    //   1310: invokestatic d : (Lfyd;)Landroid/widget/CheckBox;
    //   1313: iconst_0
    //   1314: invokevirtual setVisibility : (I)V
    //   1317: aload_3
    //   1318: astore_2
    //   1319: iconst_0
    //   1320: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   1323: putstatic fxv.a : Ljava/lang/Boolean;
    //   1326: aload_3
    //   1327: astore_2
    //   1328: aload #4
    //   1330: invokestatic a : (Lfyd;)Lfyk;
    //   1333: invokevirtual b : ()Ljava/lang/String;
    //   1336: ldc_w '03'
    //   1339: invokevirtual matches : (Ljava/lang/String;)Z
    //   1342: ifeq -> 1592
    //   1345: aload_3
    //   1346: astore_2
    //   1347: aload #4
    //   1349: invokestatic a : (Lfyd;)Lfyk;
    //   1352: invokevirtual b : ()Ljava/lang/String;
    //   1355: invokevirtual toString : ()Ljava/lang/String;
    //   1358: invokestatic k : (Ljava/lang/String;)V
    //   1361: aload_3
    //   1362: astore_2
    //   1363: aload #4
    //   1365: invokestatic a : (Lfyd;)Lfyk;
    //   1368: invokevirtual f : ()Ljava/lang/String;
    //   1371: invokevirtual toString : ()Ljava/lang/String;
    //   1374: invokestatic d : (Ljava/lang/String;)V
    //   1377: aload_3
    //   1378: astore_2
    //   1379: aload #4
    //   1381: invokestatic a : (Lfyd;)Lfyk;
    //   1384: invokevirtual g : ()Ljava/lang/String;
    //   1387: invokevirtual toString : ()Ljava/lang/String;
    //   1390: invokestatic a : (Ljava/lang/String;)V
    //   1393: aload_3
    //   1394: astore_2
    //   1395: aload #4
    //   1397: invokestatic a : (Lfyd;)Lfyk;
    //   1400: invokevirtual a : ()Ljava/lang/String;
    //   1403: invokevirtual toString : ()Ljava/lang/String;
    //   1406: invokestatic b : (Ljava/lang/String;)V
    //   1409: aload_3
    //   1410: astore_2
    //   1411: new fyg
    //   1414: dup
    //   1415: invokespecial <init> : ()V
    //   1418: invokestatic a : (Lfyg;)V
    //   1421: aload_3
    //   1422: astore_2
    //   1423: invokestatic n : ()Lfyg;
    //   1426: invokestatic k : ()Ljava/lang/String;
    //   1429: invokevirtual a : (Ljava/lang/String;)V
    //   1432: aload_3
    //   1433: astore_2
    //   1434: invokestatic n : ()Lfyg;
    //   1437: invokestatic d : ()Ljava/lang/String;
    //   1440: invokevirtual b : (Ljava/lang/String;)V
    //   1443: aload_3
    //   1444: astore_2
    //   1445: invokestatic n : ()Lfyg;
    //   1448: invokestatic a : ()Ljava/lang/String;
    //   1451: invokevirtual d : (Ljava/lang/String;)V
    //   1454: aload_3
    //   1455: astore_2
    //   1456: invokestatic n : ()Lfyg;
    //   1459: invokestatic b : ()Ljava/lang/String;
    //   1462: invokevirtual e : (Ljava/lang/String;)V
    //   1465: aload_3
    //   1466: astore_2
    //   1467: invokestatic n : ()Lfyg;
    //   1470: aload #4
    //   1472: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1475: invokevirtual getText : ()Landroid/text/Editable;
    //   1478: invokevirtual toString : ()Ljava/lang/String;
    //   1481: invokevirtual c : (Ljava/lang/String;)V
    //   1484: aload_3
    //   1485: astore_2
    //   1486: invokestatic n : ()Lfyg;
    //   1489: aload #4
    //   1491: invokestatic a : (Lfyd;)Lfyk;
    //   1494: invokevirtual d : ()Ljava/lang/String;
    //   1497: invokevirtual toString : ()Ljava/lang/String;
    //   1500: invokevirtual g : (Ljava/lang/String;)V
    //   1503: aload_3
    //   1504: astore_2
    //   1505: invokestatic o : ()Ljava/util/List;
    //   1508: invokestatic n : ()Lfyg;
    //   1511: invokeinterface add : (Ljava/lang/Object;)Z
    //   1516: pop
    //   1517: aload_3
    //   1518: astore_2
    //   1519: aload #4
    //   1521: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1524: iconst_3
    //   1525: invokevirtual setInputType : (I)V
    //   1528: aload_3
    //   1529: astore_2
    //   1530: aload #4
    //   1532: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1535: invokestatic getInstance : ()Landroid/text/method/PasswordTransformationMethod;
    //   1538: invokevirtual setTransformationMethod : (Landroid/text/method/TransformationMethod;)V
    //   1541: aload_3
    //   1542: astore_2
    //   1543: new android/text/InputFilter$LengthFilter
    //   1546: dup
    //   1547: iconst_3
    //   1548: invokespecial <init> : (I)V
    //   1551: astore #5
    //   1553: aload_3
    //   1554: astore_2
    //   1555: aload #4
    //   1557: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1560: iconst_1
    //   1561: anewarray android/text/InputFilter
    //   1564: dup
    //   1565: iconst_0
    //   1566: aload #5
    //   1568: aastore
    //   1569: invokevirtual setFilters : ([Landroid/text/InputFilter;)V
    //   1572: aload_3
    //   1573: astore_2
    //   1574: aload #4
    //   1576: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1579: new fya
    //   1582: dup
    //   1583: aload_0
    //   1584: aload #4
    //   1586: invokespecial <init> : (Lfxv;Lfyd;)V
    //   1589: invokevirtual addTextChangedListener : (Landroid/text/TextWatcher;)V
    //   1592: aload_3
    //   1593: astore_2
    //   1594: aload #4
    //   1596: invokestatic a : (Lfyd;)Lfyk;
    //   1599: invokevirtual b : ()Ljava/lang/String;
    //   1602: ldc_w '04'
    //   1605: invokevirtual matches : (Ljava/lang/String;)Z
    //   1608: ifeq -> 1870
    //   1611: aload_3
    //   1612: astore_2
    //   1613: aload #4
    //   1615: invokestatic a : (Lfyd;)Lfyk;
    //   1618: invokevirtual b : ()Ljava/lang/String;
    //   1621: invokevirtual toString : ()Ljava/lang/String;
    //   1624: invokestatic k : (Ljava/lang/String;)V
    //   1627: aload_3
    //   1628: astore_2
    //   1629: aload #4
    //   1631: invokestatic a : (Lfyd;)Lfyk;
    //   1634: invokevirtual f : ()Ljava/lang/String;
    //   1637: invokevirtual toString : ()Ljava/lang/String;
    //   1640: invokestatic d : (Ljava/lang/String;)V
    //   1643: aload_3
    //   1644: astore_2
    //   1645: aload #4
    //   1647: invokestatic a : (Lfyd;)Lfyk;
    //   1650: invokevirtual g : ()Ljava/lang/String;
    //   1653: invokevirtual toString : ()Ljava/lang/String;
    //   1656: invokestatic a : (Ljava/lang/String;)V
    //   1659: aload_3
    //   1660: astore_2
    //   1661: aload #4
    //   1663: invokestatic a : (Lfyd;)Lfyk;
    //   1666: invokevirtual a : ()Ljava/lang/String;
    //   1669: invokevirtual toString : ()Ljava/lang/String;
    //   1672: invokestatic b : (Ljava/lang/String;)V
    //   1675: aload_3
    //   1676: astore_2
    //   1677: new fyg
    //   1680: dup
    //   1681: invokespecial <init> : ()V
    //   1684: invokestatic a : (Lfyg;)V
    //   1687: aload_3
    //   1688: astore_2
    //   1689: invokestatic n : ()Lfyg;
    //   1692: invokestatic k : ()Ljava/lang/String;
    //   1695: invokevirtual a : (Ljava/lang/String;)V
    //   1698: aload_3
    //   1699: astore_2
    //   1700: invokestatic n : ()Lfyg;
    //   1703: invokestatic d : ()Ljava/lang/String;
    //   1706: invokevirtual b : (Ljava/lang/String;)V
    //   1709: aload_3
    //   1710: astore_2
    //   1711: invokestatic n : ()Lfyg;
    //   1714: invokestatic a : ()Ljava/lang/String;
    //   1717: invokevirtual d : (Ljava/lang/String;)V
    //   1720: aload_3
    //   1721: astore_2
    //   1722: invokestatic n : ()Lfyg;
    //   1725: invokestatic b : ()Ljava/lang/String;
    //   1728: invokevirtual e : (Ljava/lang/String;)V
    //   1731: aload_3
    //   1732: astore_2
    //   1733: invokestatic n : ()Lfyg;
    //   1736: aload #4
    //   1738: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1741: invokevirtual getText : ()Landroid/text/Editable;
    //   1744: invokevirtual toString : ()Ljava/lang/String;
    //   1747: invokevirtual c : (Ljava/lang/String;)V
    //   1750: aload_3
    //   1751: astore_2
    //   1752: invokestatic n : ()Lfyg;
    //   1755: aload #4
    //   1757: invokestatic a : (Lfyd;)Lfyk;
    //   1760: invokevirtual d : ()Ljava/lang/String;
    //   1763: invokevirtual toString : ()Ljava/lang/String;
    //   1766: invokevirtual g : (Ljava/lang/String;)V
    //   1769: aload_3
    //   1770: astore_2
    //   1771: invokestatic o : ()Ljava/util/List;
    //   1774: invokestatic n : ()Lfyg;
    //   1777: invokeinterface add : (Ljava/lang/Object;)Z
    //   1782: pop
    //   1783: aload_3
    //   1784: astore_2
    //   1785: aload #4
    //   1787: invokestatic d : (Lfyd;)Landroid/widget/CheckBox;
    //   1790: bipush #8
    //   1792: invokevirtual setVisibility : (I)V
    //   1795: aload_3
    //   1796: astore_2
    //   1797: aload #4
    //   1799: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1802: iconst_3
    //   1803: invokevirtual setInputType : (I)V
    //   1806: aload_3
    //   1807: astore_2
    //   1808: aload #4
    //   1810: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1813: invokestatic getInstance : ()Landroid/text/method/PasswordTransformationMethod;
    //   1816: invokevirtual setTransformationMethod : (Landroid/text/method/TransformationMethod;)V
    //   1819: aload_3
    //   1820: astore_2
    //   1821: new android/text/InputFilter$LengthFilter
    //   1824: dup
    //   1825: iconst_4
    //   1826: invokespecial <init> : (I)V
    //   1829: astore #5
    //   1831: aload_3
    //   1832: astore_2
    //   1833: aload #4
    //   1835: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1838: iconst_1
    //   1839: anewarray android/text/InputFilter
    //   1842: dup
    //   1843: iconst_0
    //   1844: aload #5
    //   1846: aastore
    //   1847: invokevirtual setFilters : ([Landroid/text/InputFilter;)V
    //   1850: aload_3
    //   1851: astore_2
    //   1852: aload #4
    //   1854: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1857: new fyb
    //   1860: dup
    //   1861: aload_0
    //   1862: aload #4
    //   1864: invokespecial <init> : (Lfxv;Lfyd;)V
    //   1867: invokevirtual addTextChangedListener : (Landroid/text/TextWatcher;)V
    //   1870: aload_3
    //   1871: astore_2
    //   1872: aload #4
    //   1874: invokestatic d : (Lfyd;)Landroid/widget/CheckBox;
    //   1877: new fyc
    //   1880: dup
    //   1881: aload_0
    //   1882: invokespecial <init> : (Lfxv;)V
    //   1885: invokevirtual setOnCheckedChangeListener : (Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    //   1888: aload_3
    //   1889: areturn
    //   1890: aload_3
    //   1891: astore_2
    //   1892: aload #4
    //   1894: invokestatic b : (Lfyd;)Landroid/widget/TextView;
    //   1897: bipush #8
    //   1899: invokevirtual setVisibility : (I)V
    //   1902: goto -> 149
    //   1905: astore_3
    //   1906: ldc_w 'Error'
    //   1909: aload_3
    //   1910: invokevirtual toString : ()Ljava/lang/String;
    //   1913: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1916: pop
    //   1917: aload_2
    //   1918: areturn
    //   1919: aload_3
    //   1920: astore_2
    //   1921: aload #4
    //   1923: invokestatic c : (Lfyd;)Landroid/widget/EditText;
    //   1926: bipush #8
    //   1928: invokevirtual setVisibility : (I)V
    //   1931: goto -> 190
    //   1934: aload_2
    //   1935: areturn
    // Exception table:
    //   from	to	target	type
    //   13	29	1905	java/lang/Exception
    //   31	39	1905	java/lang/Exception
    //   41	50	1905	java/lang/Exception
    //   52	71	1905	java/lang/Exception
    //   73	79	1905	java/lang/Exception
    //   81	90	1905	java/lang/Exception
    //   92	107	1905	java/lang/Exception
    //   109	125	1905	java/lang/Exception
    //   127	138	1905	java/lang/Exception
    //   140	149	1905	java/lang/Exception
    //   151	166	1905	java/lang/Exception
    //   168	179	1905	java/lang/Exception
    //   181	190	1905	java/lang/Exception
    //   192	207	1905	java/lang/Exception
    //   209	225	1905	java/lang/Exception
    //   227	234	1905	java/lang/Exception
    //   236	246	1905	java/lang/Exception
    //   248	262	1905	java/lang/Exception
    //   264	278	1905	java/lang/Exception
    //   280	294	1905	java/lang/Exception
    //   296	310	1905	java/lang/Exception
    //   312	322	1905	java/lang/Exception
    //   324	333	1905	java/lang/Exception
    //   335	344	1905	java/lang/Exception
    //   346	355	1905	java/lang/Exception
    //   357	366	1905	java/lang/Exception
    //   368	385	1905	java/lang/Exception
    //   387	404	1905	java/lang/Exception
    //   406	418	1905	java/lang/Exception
    //   420	431	1905	java/lang/Exception
    //   433	450	1905	java/lang/Exception
    //   452	461	1905	java/lang/Exception
    //   463	481	1905	java/lang/Exception
    //   483	499	1905	java/lang/Exception
    //   501	515	1905	java/lang/Exception
    //   517	531	1905	java/lang/Exception
    //   533	547	1905	java/lang/Exception
    //   549	563	1905	java/lang/Exception
    //   565	575	1905	java/lang/Exception
    //   577	586	1905	java/lang/Exception
    //   588	597	1905	java/lang/Exception
    //   599	608	1905	java/lang/Exception
    //   610	619	1905	java/lang/Exception
    //   621	638	1905	java/lang/Exception
    //   640	657	1905	java/lang/Exception
    //   659	671	1905	java/lang/Exception
    //   673	682	1905	java/lang/Exception
    //   684	694	1905	java/lang/Exception
    //   696	713	1905	java/lang/Exception
    //   715	733	1905	java/lang/Exception
    //   735	751	1905	java/lang/Exception
    //   753	767	1905	java/lang/Exception
    //   769	783	1905	java/lang/Exception
    //   785	799	1905	java/lang/Exception
    //   801	815	1905	java/lang/Exception
    //   817	827	1905	java/lang/Exception
    //   829	838	1905	java/lang/Exception
    //   840	849	1905	java/lang/Exception
    //   851	860	1905	java/lang/Exception
    //   862	871	1905	java/lang/Exception
    //   873	890	1905	java/lang/Exception
    //   892	909	1905	java/lang/Exception
    //   911	923	1905	java/lang/Exception
    //   925	934	1905	java/lang/Exception
    //   936	947	1905	java/lang/Exception
    //   949	966	1905	java/lang/Exception
    //   968	986	1905	java/lang/Exception
    //   988	1005	1905	java/lang/Exception
    //   1007	1021	1905	java/lang/Exception
    //   1023	1037	1905	java/lang/Exception
    //   1039	1053	1905	java/lang/Exception
    //   1055	1069	1905	java/lang/Exception
    //   1071	1081	1905	java/lang/Exception
    //   1083	1092	1905	java/lang/Exception
    //   1094	1103	1905	java/lang/Exception
    //   1105	1114	1905	java/lang/Exception
    //   1116	1125	1905	java/lang/Exception
    //   1127	1144	1905	java/lang/Exception
    //   1146	1163	1905	java/lang/Exception
    //   1165	1177	1905	java/lang/Exception
    //   1179	1188	1905	java/lang/Exception
    //   1190	1200	1905	java/lang/Exception
    //   1202	1219	1905	java/lang/Exception
    //   1221	1239	1905	java/lang/Exception
    //   1241	1257	1905	java/lang/Exception
    //   1259	1276	1905	java/lang/Exception
    //   1278	1295	1905	java/lang/Exception
    //   1297	1306	1905	java/lang/Exception
    //   1308	1317	1905	java/lang/Exception
    //   1319	1326	1905	java/lang/Exception
    //   1328	1345	1905	java/lang/Exception
    //   1347	1361	1905	java/lang/Exception
    //   1363	1377	1905	java/lang/Exception
    //   1379	1393	1905	java/lang/Exception
    //   1395	1409	1905	java/lang/Exception
    //   1411	1421	1905	java/lang/Exception
    //   1423	1432	1905	java/lang/Exception
    //   1434	1443	1905	java/lang/Exception
    //   1445	1454	1905	java/lang/Exception
    //   1456	1465	1905	java/lang/Exception
    //   1467	1484	1905	java/lang/Exception
    //   1486	1503	1905	java/lang/Exception
    //   1505	1517	1905	java/lang/Exception
    //   1519	1528	1905	java/lang/Exception
    //   1530	1541	1905	java/lang/Exception
    //   1543	1553	1905	java/lang/Exception
    //   1555	1572	1905	java/lang/Exception
    //   1574	1592	1905	java/lang/Exception
    //   1594	1611	1905	java/lang/Exception
    //   1613	1627	1905	java/lang/Exception
    //   1629	1643	1905	java/lang/Exception
    //   1645	1659	1905	java/lang/Exception
    //   1661	1675	1905	java/lang/Exception
    //   1677	1687	1905	java/lang/Exception
    //   1689	1698	1905	java/lang/Exception
    //   1700	1709	1905	java/lang/Exception
    //   1711	1720	1905	java/lang/Exception
    //   1722	1731	1905	java/lang/Exception
    //   1733	1750	1905	java/lang/Exception
    //   1752	1769	1905	java/lang/Exception
    //   1771	1783	1905	java/lang/Exception
    //   1785	1795	1905	java/lang/Exception
    //   1797	1806	1905	java/lang/Exception
    //   1808	1819	1905	java/lang/Exception
    //   1821	1831	1905	java/lang/Exception
    //   1833	1850	1905	java/lang/Exception
    //   1852	1870	1905	java/lang/Exception
    //   1872	1888	1905	java/lang/Exception
    //   1892	1902	1905	java/lang/Exception
    //   1921	1931	1905	java/lang/Exception
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */