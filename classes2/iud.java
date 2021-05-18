import android.view.View;
import com.santander.app.homenaologada.presentation.HomeActivity;

public class iud implements View.OnClickListener {
  public iud(HomeActivity paramHomeActivity) {}
  
  public void onClick(View paramView) {
    // Byte code:
    //   0: aload_0
    //   1: getfield a : Lcom/santander/app/homenaologada/presentation/HomeActivity;
    //   4: invokestatic a : (Lcom/santander/app/homenaologada/presentation/HomeActivity;)Liun;
    //   7: invokeinterface j : ()Ljava/lang/String;
    //   12: astore #9
    //   14: ldc ''
    //   16: astore #8
    //   18: ldc ''
    //   20: astore #10
    //   22: ldc ''
    //   24: aload #9
    //   26: invokevirtual equals : (Ljava/lang/Object;)Z
    //   29: ifeq -> 50
    //   32: aload #10
    //   34: astore #6
    //   36: aload #8
    //   38: astore #7
    //   40: ldc '999'
    //   42: aload #9
    //   44: invokevirtual equals : (Ljava/lang/Object;)Z
    //   47: ifne -> 203
    //   50: invokestatic b : ()Landroid/content/Context;
    //   53: new java/lang/StringBuilder
    //   56: dup
    //   57: invokespecial <init> : ()V
    //   60: ldc 'banner'
    //   62: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: aload #9
    //   67: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual toString : ()Ljava/lang/String;
    //   73: iconst_0
    //   74: invokevirtual getSharedPreferences : (Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   77: astore #6
    //   79: aload #6
    //   81: ldc 'dataInicioVigencia'
    //   83: lconst_0
    //   84: invokeinterface getLong : (Ljava/lang/String;J)J
    //   89: lstore_2
    //   90: aload #6
    //   92: ldc 'dataFimVigencia'
    //   94: lconst_0
    //   95: invokeinterface getLong : (Ljava/lang/String;J)J
    //   100: lstore #4
    //   102: lload_2
    //   103: lconst_0
    //   104: lcmp
    //   105: ifne -> 123
    //   108: aload #10
    //   110: astore #6
    //   112: aload #8
    //   114: astore #7
    //   116: lload #4
    //   118: lconst_0
    //   119: lcmp
    //   120: ifeq -> 203
    //   123: new java/util/Date
    //   126: dup
    //   127: lload_2
    //   128: invokespecial <init> : (J)V
    //   131: astore #7
    //   133: new java/util/Date
    //   136: dup
    //   137: lload #4
    //   139: invokespecial <init> : (J)V
    //   142: astore #6
    //   144: aload #7
    //   146: ldc 'ddMMyyyy'
    //   148: invokestatic a : (Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    //   151: astore #7
    //   153: aload #6
    //   155: ldc 'ddMMyyyy'
    //   157: invokestatic a : (Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    //   160: astore #6
    //   162: new java/lang/StringBuilder
    //   165: dup
    //   166: invokespecial <init> : ()V
    //   169: ldc 'bannerHomNLog-'
    //   171: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: aload #9
    //   176: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: ldc '-'
    //   181: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: aload #7
    //   186: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: ldc '-'
    //   191: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: aload #6
    //   196: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: invokevirtual toString : ()Ljava/lang/String;
    //   202: pop
    //   203: ldc 'Login_Acao'
    //   205: ldc 'BannerHomeNaoLogada'
    //   207: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   210: aload_0
    //   211: getfield a : Lcom/santander/app/homenaologada/presentation/HomeActivity;
    //   214: astore #10
    //   216: new java/lang/StringBuilder
    //   219: dup
    //   220: invokespecial <init> : ()V
    //   223: ldc 'Marketing_Banner_'
    //   225: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: astore #11
    //   230: aload #7
    //   232: ifnull -> 243
    //   235: aload #7
    //   237: invokevirtual isEmpty : ()Z
    //   240: ifeq -> 400
    //   243: ldc 'Generico'
    //   245: astore #8
    //   247: aload #11
    //   249: aload #8
    //   251: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: ldc '_HomeNaoLogada_Vigencia_DataInicio_'
    //   256: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: astore #11
    //   261: aload #7
    //   263: ifnull -> 278
    //   266: aload #7
    //   268: astore #8
    //   270: aload #7
    //   272: invokevirtual isEmpty : ()Z
    //   275: ifeq -> 282
    //   278: ldc '00000000'
    //   280: astore #8
    //   282: aload #11
    //   284: aload #8
    //   286: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   289: ldc '_DataFim_'
    //   291: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   294: astore #8
    //   296: aload #6
    //   298: ifnull -> 313
    //   301: aload #6
    //   303: astore #7
    //   305: aload #6
    //   307: invokevirtual isEmpty : ()Z
    //   310: ifeq -> 317
    //   313: ldc '00000000'
    //   315: astore #7
    //   317: aload #8
    //   319: aload #7
    //   321: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: ldc '_'
    //   326: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   329: astore #7
    //   331: aload #9
    //   333: ifnonnull -> 407
    //   336: ldc ''
    //   338: astore #6
    //   340: aload #10
    //   342: aload #7
    //   344: aload #6
    //   346: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   349: invokevirtual toString : ()Ljava/lang/String;
    //   352: invokestatic a : (Lcom/santander/app/homenaologada/presentation/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    //   355: pop
    //   356: new java/lang/StringBuilder
    //   359: dup
    //   360: invokespecial <init> : ()V
    //   363: aload_0
    //   364: getfield a : Lcom/santander/app/homenaologada/presentation/HomeActivity;
    //   367: invokestatic b : (Lcom/santander/app/homenaologada/presentation/HomeActivity;)Ljava/lang/String;
    //   370: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   373: ldc '_Acao'
    //   375: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   378: invokevirtual toString : ()Ljava/lang/String;
    //   381: ldc 'Clique'
    //   383: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   386: aload_0
    //   387: getfield a : Lcom/santander/app/homenaologada/presentation/HomeActivity;
    //   390: invokestatic a : (Lcom/santander/app/homenaologada/presentation/HomeActivity;)Liun;
    //   393: aload_1
    //   394: invokeinterface a : (Landroid/view/View;)V
    //   399: return
    //   400: ldc 'Dinamico'
    //   402: astore #8
    //   404: goto -> 247
    //   407: aload #9
    //   409: astore #6
    //   411: goto -> 340
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iud.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */