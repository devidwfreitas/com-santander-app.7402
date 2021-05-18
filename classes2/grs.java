import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.widget.Button;
import com.santander.app.ExitActivity;
import com.santander.app.MinhaConta;
import com.santander.app.components.view.zxing.CustomQrScannerActivity;
import com.santander.app.components.view.zxing.CustomScannerActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.idsantander.presentation.IdSantanderComprovanteActivity;
import com.santander.app.idsantander.presentation.IdSantanderEscolhaCelularActivity;
import java.io.FileNotFoundException;

@SuppressLint({"NewApi"})
public class grs extends AppCompatActivity {
  private static final int b = 131;
  
  private static final int c = 1234;
  
  public static final int j = 1;
  
  public static final int k = 2;
  
  public static final int l = 3;
  
  public static final int m = 4;
  
  public static final int n = 6;
  
  public static final int o = 7;
  
  public static final int p = 8;
  
  public static final int q = 9;
  
  public static final int r = 10;
  
  public static final int s = 11;
  
  public static final int t = 12;
  
  public static final int u = 13;
  
  private Uri a;
  
  public gry h;
  
  public Activity i;
  
  public mip v;
  
  private int a(int paramInt) {
    return (paramInt == 6) ? 90 : ((paramInt == 3) ? 180 : ((paramInt == 8) ? 270 : 0));
  }
  
  private void a() {
    gna gna = this.i.getClass().<gna>getAnnotation(gna.class);
    if (gna != null) {
      if (gna.a().equals("contacorrente_extrato")) {
        mxn.b(this.i, new grx(this), "Funcionalidade indisponivel no momento", "Ok");
        return;
      } 
    } else {
      return;
    } 
    m();
  }
  
  private void a(Intent paramIntent, int paramInt) {
    try {
      Bitmap bitmap = BitmapFactory.decodeStream(this.i.getContentResolver().openInputStream(paramIntent.getData()));
      gpu.a(bitmap);
      mym.a(bitmap, (Context)this, miq.C().f().k());
      mwe.a((Context)this, paramInt, true);
      return;
    } catch (FileNotFoundException fileNotFoundException) {
      Log.e("Error", fileNotFoundException.getMessage());
      return;
    } 
  }
  
  private void a(Uri paramUri, int paramInt) {
    Intent intent = new Intent("com.android.camera.action.CROP");
    intent.setDataAndType(paramUri, "image/*");
    intent.putExtra("crop", "true");
    intent.putExtra("aspectX", 1);
    intent.putExtra("aspectY", 1);
    intent.putExtra("outputX", 256);
    intent.putExtra("outputY", 256);
    intent.putExtra("return-data", true);
    if (paramInt == 131)
      b(intent, 131); 
    if (paramInt == 1234)
      a(intent, 1234); 
  }
  
  private void a(String paramString, int paramInt, boolean paramBoolean) {
    grt grt;
    grv grv;
    gru gru;
    grw grw;
    Dialog dialog = new Dialog((Context)this.i, 2131427876);
    dialog.setContentView(2130969210);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button1 = (Button)dialog.findViewById(2131755738);
    Button button2 = (Button)dialog.findViewById(2131758433);
    if (!paramBoolean) {
      button1.setText("Configurações");
      grt = new grt(this, dialog);
      button2.setText("Ok");
      gru = new gru(this, paramInt, dialog);
    } else {
      grt.setText("Ok");
      grv = new grv(this, paramInt, dialog);
      if (paramInt == 4)
        gru.setText("Voltar"); 
      grw = new grw(this, dialog, paramInt);
    } 
    mxn.a(this.i, dialog, "Atenção", paramString, grv, grw);
  }
  
  private void b(Intent paramIntent, int paramInt) {
    Bitmap bitmap = (Bitmap)paramIntent.getExtras().getParcelable("data");
    gpu.a(bitmap);
    mym.a(bitmap, (Context)this, miq.C().f().k());
    mwe.a((Context)this, paramInt, true);
  }
  
  public String a(int paramInt, String[] paramArrayOfString, int[] paramArrayOfint) {
    // Byte code:
    //   0: new java/util/ArrayList
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #6
    //   9: iconst_0
    //   10: istore #4
    //   12: iload #4
    //   14: aload_2
    //   15: arraylength
    //   16: if_icmpge -> 42
    //   19: aload_3
    //   20: iload #4
    //   22: iaload
    //   23: iconst_m1
    //   24: if_icmpne -> 992
    //   27: aload #6
    //   29: aload_2
    //   30: iload #4
    //   32: aaload
    //   33: invokeinterface add : (Ljava/lang/Object;)Z
    //   38: pop
    //   39: goto -> 992
    //   42: aload #6
    //   44: invokeinterface isEmpty : ()Z
    //   49: ifne -> 972
    //   52: ldc_w ''
    //   55: astore_2
    //   56: aload #6
    //   58: invokeinterface iterator : ()Ljava/util/Iterator;
    //   63: astore_3
    //   64: aload_3
    //   65: invokeinterface hasNext : ()Z
    //   70: ifeq -> 1043
    //   73: aload_3
    //   74: invokeinterface next : ()Ljava/lang/Object;
    //   79: checkcast java/lang/String
    //   82: astore #6
    //   84: aload #6
    //   86: invokevirtual hashCode : ()I
    //   89: lookupswitch default -> 1001, -406040016 -> 140, -63024214 -> 174, -5573545 -> 157, 463403621 -> 191, 1977429404 -> 208
    //   140: aload #6
    //   142: ldc_w 'android.permission.READ_EXTERNAL_STORAGE'
    //   145: invokevirtual equals : (Ljava/lang/Object;)Z
    //   148: ifeq -> 1001
    //   151: iconst_0
    //   152: istore #4
    //   154: goto -> 1004
    //   157: aload #6
    //   159: ldc_w 'android.permission.READ_PHONE_STATE'
    //   162: invokevirtual equals : (Ljava/lang/Object;)Z
    //   165: ifeq -> 1001
    //   168: iconst_1
    //   169: istore #4
    //   171: goto -> 1004
    //   174: aload #6
    //   176: ldc_w 'android.permission.ACCESS_COARSE_LOCATION'
    //   179: invokevirtual equals : (Ljava/lang/Object;)Z
    //   182: ifeq -> 1001
    //   185: iconst_2
    //   186: istore #4
    //   188: goto -> 1004
    //   191: aload #6
    //   193: ldc_w 'android.permission.CAMERA'
    //   196: invokevirtual equals : (Ljava/lang/Object;)Z
    //   199: ifeq -> 1001
    //   202: iconst_3
    //   203: istore #4
    //   205: goto -> 1004
    //   208: aload #6
    //   210: ldc_w 'android.permission.READ_CONTACTS'
    //   213: invokevirtual equals : (Ljava/lang/Object;)Z
    //   216: ifeq -> 1001
    //   219: iconst_4
    //   220: istore #4
    //   222: goto -> 1004
    //   225: ldc_w ''
    //   228: aload_2
    //   229: invokevirtual equals : (Ljava/lang/Object;)Z
    //   232: ifeq -> 259
    //   235: new java/lang/StringBuilder
    //   238: dup
    //   239: invokespecial <init> : ()V
    //   242: aload_2
    //   243: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: ldc_w ' armazenamento'
    //   249: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   252: invokevirtual toString : ()Ljava/lang/String;
    //   255: astore_2
    //   256: goto -> 1040
    //   259: new java/lang/StringBuilder
    //   262: dup
    //   263: invokespecial <init> : ()V
    //   266: aload_2
    //   267: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: ldc_w ', armazenamento'
    //   273: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: invokevirtual toString : ()Ljava/lang/String;
    //   279: astore_2
    //   280: goto -> 1040
    //   283: ldc_w ''
    //   286: aload_2
    //   287: invokevirtual equals : (Ljava/lang/Object;)Z
    //   290: ifeq -> 317
    //   293: new java/lang/StringBuilder
    //   296: dup
    //   297: invokespecial <init> : ()V
    //   300: aload_2
    //   301: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   304: ldc_w ' telefone'
    //   307: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: invokevirtual toString : ()Ljava/lang/String;
    //   313: astore_2
    //   314: goto -> 1040
    //   317: new java/lang/StringBuilder
    //   320: dup
    //   321: invokespecial <init> : ()V
    //   324: aload_2
    //   325: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   328: ldc_w ', telefone'
    //   331: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: invokevirtual toString : ()Ljava/lang/String;
    //   337: astore_2
    //   338: goto -> 1040
    //   341: ldc_w ''
    //   344: aload_2
    //   345: invokevirtual equals : (Ljava/lang/Object;)Z
    //   348: ifeq -> 375
    //   351: new java/lang/StringBuilder
    //   354: dup
    //   355: invokespecial <init> : ()V
    //   358: aload_2
    //   359: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: ldc_w ' localização '
    //   365: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   368: invokevirtual toString : ()Ljava/lang/String;
    //   371: astore_2
    //   372: goto -> 1040
    //   375: aload_2
    //   376: ldc_w ','
    //   379: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   382: arraylength
    //   383: iconst_1
    //   384: if_icmple -> 411
    //   387: new java/lang/StringBuilder
    //   390: dup
    //   391: invokespecial <init> : ()V
    //   394: aload_2
    //   395: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   398: ldc_w ' e localização '
    //   401: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   404: invokevirtual toString : ()Ljava/lang/String;
    //   407: astore_2
    //   408: goto -> 1040
    //   411: new java/lang/StringBuilder
    //   414: dup
    //   415: invokespecial <init> : ()V
    //   418: aload_2
    //   419: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   422: ldc_w ', localização'
    //   425: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   428: invokevirtual toString : ()Ljava/lang/String;
    //   431: astore_2
    //   432: goto -> 1040
    //   435: ldc_w ''
    //   438: aload_2
    //   439: invokevirtual equals : (Ljava/lang/Object;)Z
    //   442: ifeq -> 469
    //   445: new java/lang/StringBuilder
    //   448: dup
    //   449: invokespecial <init> : ()V
    //   452: aload_2
    //   453: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   456: ldc_w ' câmera'
    //   459: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   462: invokevirtual toString : ()Ljava/lang/String;
    //   465: astore_2
    //   466: goto -> 1040
    //   469: new java/lang/StringBuilder
    //   472: dup
    //   473: invokespecial <init> : ()V
    //   476: aload_2
    //   477: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   480: ldc_w ', câmera'
    //   483: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   486: invokevirtual toString : ()Ljava/lang/String;
    //   489: astore_2
    //   490: goto -> 1040
    //   493: ldc_w ''
    //   496: aload_2
    //   497: invokevirtual equals : (Ljava/lang/Object;)Z
    //   500: ifeq -> 527
    //   503: new java/lang/StringBuilder
    //   506: dup
    //   507: invokespecial <init> : ()V
    //   510: aload_2
    //   511: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   514: ldc_w ' contatos'
    //   517: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   520: invokevirtual toString : ()Ljava/lang/String;
    //   523: astore_2
    //   524: goto -> 1040
    //   527: new java/lang/StringBuilder
    //   530: dup
    //   531: invokespecial <init> : ()V
    //   534: aload_2
    //   535: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   538: ldc_w ', contatos'
    //   541: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   544: invokevirtual toString : ()Ljava/lang/String;
    //   547: astore_2
    //   548: goto -> 1040
    //   551: new java/lang/StringBuilder
    //   554: dup
    //   555: invokespecial <init> : ()V
    //   558: aload_2
    //   559: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   562: ldc_w '#'
    //   565: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   568: iload #5
    //   570: invokevirtual append : (Z)Ljava/lang/StringBuilder;
    //   573: invokevirtual toString : ()Ljava/lang/String;
    //   576: areturn
    //   577: aload_0
    //   578: getfield i : Landroid/app/Activity;
    //   581: ldc_w 'android.permission.CAMERA'
    //   584: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   587: istore #5
    //   589: new java/lang/StringBuilder
    //   592: dup
    //   593: invokespecial <init> : ()V
    //   596: ldc_w 'Se você negar ao aplicativo o acesso à '
    //   599: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   602: aload_2
    //   603: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   606: ldc_w ', você não poderá realizar tirar foto para o perfil'
    //   609: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   612: invokevirtual toString : ()Ljava/lang/String;
    //   615: astore_2
    //   616: goto -> 551
    //   619: aload_0
    //   620: getfield i : Landroid/app/Activity;
    //   623: ldc_w 'android.permission.CAMERA'
    //   626: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   629: istore #5
    //   631: new java/lang/StringBuilder
    //   634: dup
    //   635: invokespecial <init> : ()V
    //   638: ldc_w 'Se você negar ao aplicativo o acesso à '
    //   641: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   644: aload_2
    //   645: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   648: ldc_w ', você não poderá realizar pagamentos usando o leitor de código de barras'
    //   651: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   654: invokevirtual toString : ()Ljava/lang/String;
    //   657: astore_2
    //   658: goto -> 551
    //   661: aload_0
    //   662: getfield i : Landroid/app/Activity;
    //   665: ldc_w 'android.permission.READ_CONTACTS'
    //   668: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   671: istore #5
    //   673: new java/lang/StringBuilder
    //   676: dup
    //   677: invokespecial <init> : ()V
    //   680: ldc_w 'Se você negar ao aplicativo o acesso aos '
    //   683: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   686: aload_2
    //   687: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   690: ldc_w ', você não poderá selecionar um número a partir de seus contatos para realizar a Recarga'
    //   693: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   696: invokevirtual toString : ()Ljava/lang/String;
    //   699: astore_2
    //   700: goto -> 551
    //   703: aload_0
    //   704: getfield i : Landroid/app/Activity;
    //   707: ldc_w 'android.permission.ACCESS_COARSE_LOCATION'
    //   710: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   713: ifne -> 1118
    //   716: aload_0
    //   717: getfield i : Landroid/app/Activity;
    //   720: ldc_w 'android.permission.READ_EXTERNAL_STORAGE'
    //   723: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   726: ifne -> 1118
    //   729: aload_0
    //   730: getfield i : Landroid/app/Activity;
    //   733: ldc_w 'android.permission.READ_PHONE_STATE'
    //   736: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   739: ifeq -> 1124
    //   742: goto -> 1118
    //   745: new java/lang/StringBuilder
    //   748: dup
    //   749: invokespecial <init> : ()V
    //   752: ldc_w 'Se você negar ao aplicativo o acesso ao '
    //   755: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   758: aload_2
    //   759: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   762: ldc_w ', não será possível iniciar o aplicativo. '
    //   765: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   768: invokevirtual toString : ()Ljava/lang/String;
    //   771: astore_2
    //   772: goto -> 551
    //   775: aload_0
    //   776: getfield i : Landroid/app/Activity;
    //   779: ldc_w 'android.permission.USE_FINGERPRINT'
    //   782: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   785: istore #5
    //   787: new java/lang/StringBuilder
    //   790: dup
    //   791: invokespecial <init> : ()V
    //   794: ldc_w 'Se você negar ao aplicativo o acesso à '
    //   797: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   800: aload_2
    //   801: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   804: ldc_w ', você não poderá realizar o login utilizando o touch id'
    //   807: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   810: invokevirtual toString : ()Ljava/lang/String;
    //   813: astore_2
    //   814: goto -> 551
    //   817: aload_0
    //   818: getfield i : Landroid/app/Activity;
    //   821: ldc_w 'android.permission.READ_SMS'
    //   824: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   827: ifne -> 1130
    //   830: aload_0
    //   831: getfield i : Landroid/app/Activity;
    //   834: ldc_w 'android.permission.RECEIVE_SMS'
    //   837: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   840: ifeq -> 1140
    //   843: goto -> 1130
    //   846: aload_0
    //   847: getfield i : Landroid/app/Activity;
    //   850: ldc_w 'android.permission.USE_FINGERPRINT'
    //   853: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   856: istore #5
    //   858: new java/lang/StringBuilder
    //   861: dup
    //   862: invokespecial <init> : ()V
    //   865: ldc_w 'Se você negar ao aplicativo o acesso à '
    //   868: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   871: aload_2
    //   872: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   875: ldc_w ', você não poderá realizar a busca de agências por localização'
    //   878: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   881: invokevirtual toString : ()Ljava/lang/String;
    //   884: astore_2
    //   885: goto -> 551
    //   888: aload_0
    //   889: getfield i : Landroid/app/Activity;
    //   892: ldc_w 'android.permission.CAMERA'
    //   895: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   898: istore #5
    //   900: new java/lang/StringBuilder
    //   903: dup
    //   904: invokespecial <init> : ()V
    //   907: ldc_w 'Se você negar ao aplicativo o acesso à '
    //   910: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   913: aload_2
    //   914: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   917: ldc_w ', o app Santander não poderá ler QR Codes e nem código de barras de contas.'
    //   920: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   923: invokevirtual toString : ()Ljava/lang/String;
    //   926: astore_2
    //   927: goto -> 551
    //   930: aload_0
    //   931: getfield i : Landroid/app/Activity;
    //   934: ldc_w 'android.permission.READ_EXTERNAL_STORAGE'
    //   937: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   940: istore #5
    //   942: new java/lang/StringBuilder
    //   945: dup
    //   946: invokespecial <init> : ()V
    //   949: ldc_w 'Se você negar ao aplicativo o acesso ao '
    //   952: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   955: aload_2
    //   956: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   959: ldc_w ', o app Santander não poderá comparilhar.'
    //   962: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   965: invokevirtual toString : ()Ljava/lang/String;
    //   968: astore_2
    //   969: goto -> 551
    //   972: ldc_w ''
    //   975: areturn
    //   976: astore_2
    //   977: ldc_w 'VALIDAR_PERMISSOES'
    //   980: aload_2
    //   981: invokevirtual getMessage : ()Ljava/lang/String;
    //   984: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   987: pop
    //   988: ldc_w ''
    //   991: areturn
    //   992: iload #4
    //   994: iconst_1
    //   995: iadd
    //   996: istore #4
    //   998: goto -> 12
    //   1001: iconst_m1
    //   1002: istore #4
    //   1004: iload #4
    //   1006: tableswitch default -> 1040, 0 -> 225, 1 -> 283, 2 -> 341, 3 -> 435, 4 -> 493
    //   1040: goto -> 64
    //   1043: iload_1
    //   1044: tableswitch default -> 1108, 1 -> 577, 2 -> 619, 3 -> 661, 4 -> 703, 5 -> 1108, 6 -> 775, 7 -> 817, 8 -> 930, 9 -> 846, 10 -> 1108, 11 -> 1108, 12 -> 888
    //   1108: ldc_w ''
    //   1111: astore_2
    //   1112: iconst_1
    //   1113: istore #5
    //   1115: goto -> 551
    //   1118: iconst_1
    //   1119: istore #5
    //   1121: goto -> 745
    //   1124: iconst_0
    //   1125: istore #5
    //   1127: goto -> 745
    //   1130: iconst_1
    //   1131: istore #5
    //   1133: ldc_w 'sms_denied'
    //   1136: astore_2
    //   1137: goto -> 551
    //   1140: iconst_0
    //   1141: istore #5
    //   1143: goto -> 1133
    // Exception table:
    //   from	to	target	type
    //   0	9	976	java/lang/NullPointerException
    //   12	19	976	java/lang/NullPointerException
    //   27	39	976	java/lang/NullPointerException
    //   42	52	976	java/lang/NullPointerException
    //   56	64	976	java/lang/NullPointerException
    //   64	140	976	java/lang/NullPointerException
    //   140	151	976	java/lang/NullPointerException
    //   157	168	976	java/lang/NullPointerException
    //   174	185	976	java/lang/NullPointerException
    //   191	202	976	java/lang/NullPointerException
    //   208	219	976	java/lang/NullPointerException
    //   225	256	976	java/lang/NullPointerException
    //   259	280	976	java/lang/NullPointerException
    //   283	314	976	java/lang/NullPointerException
    //   317	338	976	java/lang/NullPointerException
    //   341	372	976	java/lang/NullPointerException
    //   375	408	976	java/lang/NullPointerException
    //   411	432	976	java/lang/NullPointerException
    //   435	466	976	java/lang/NullPointerException
    //   469	490	976	java/lang/NullPointerException
    //   493	524	976	java/lang/NullPointerException
    //   527	548	976	java/lang/NullPointerException
    //   551	577	976	java/lang/NullPointerException
    //   577	616	976	java/lang/NullPointerException
    //   619	658	976	java/lang/NullPointerException
    //   661	700	976	java/lang/NullPointerException
    //   703	742	976	java/lang/NullPointerException
    //   745	772	976	java/lang/NullPointerException
    //   775	814	976	java/lang/NullPointerException
    //   817	843	976	java/lang/NullPointerException
    //   846	885	976	java/lang/NullPointerException
    //   888	927	976	java/lang/NullPointerException
    //   930	969	976	java/lang/NullPointerException
  }
  
  public void c(@StringRes int paramInt) {
    c(getString(paramInt));
  }
  
  public void c(String paramString) {
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null) {
      actionBar.setDisplayShowTitleEnabled(false);
      actionBar.setDisplayHomeAsUpEnabled(false);
      actionBar.setDisplayShowHomeEnabled(false);
      gpu.a((Activity)this, actionBar, paramString);
    } 
  }
  
  public void i_() {
    this.h.b();
  }
  
  public void m() {}
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    if (paramInt1 == 131 && paramInt2 == -1) {
      b(paramIntent, 131);
      return;
    } 
    if (paramInt1 == 1234 && paramInt2 == -1) {
      this.a = paramIntent.getData();
      a(this.a, 1234);
      return;
    } 
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (MinhaConta.b() == null)
      MinhaConta.a(getApplicationContext()); 
    this.i = (Activity)this;
    this.v = (mip)miq.C();
    a();
  }
  
  public void onPause() {
    super.onPause();
    MinhaConta.a(true);
  }
  
  @SuppressLint({"Override"})
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfint) {
    String str1;
    evq evq2;
    mxg mxg;
    boolean bool;
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfint);
    Log.i("LOG_PERMISSAO", "Passou aqui");
    String str2 = a(paramInt, paramArrayOfString, paramArrayOfint);
    if (!"".equals(str2)) {
      str1 = str2.split("#")[0];
      bool = Boolean.valueOf(str2.split("#")[1]).booleanValue();
    } else {
      str1 = "";
      bool = false;
    } 
    if (!"".equals(str1)) {
      Intent intent;
      if (str1.equals("sms_denied")) {
        intent = new Intent((Context)this, IdSantanderComprovanteActivity.class);
        intent.putExtra("id", iut.PROCESSO_INTERROMPIDO);
        intent.putExtra("content", "permissaoSms");
        startActivity(intent);
      } 
      a((String)intent, paramInt, bool);
      return;
    } 
    switch (paramInt) {
      case 4:
      case 11:
        return;
      default:
        return;
      case 1:
        gpu.e();
        return;
      case 2:
        evq2 = new evq((Activity)this);
        evq2.b(false);
        evq2.a(CustomScannerActivity.class);
        evq2.d();
        return;
      case 3:
        mxg = new mxg();
        mxg.a(this.i);
        mxg.a();
        return;
      case 6:
        ((HomeLogadaActivity)this.i).o();
        return;
      case 7:
        startActivity(new Intent((Context)this, IdSantanderEscolhaCelularActivity.class));
        return;
      case 8:
        if (this.i instanceof gro) {
          ((gro)this.i).k();
          return;
        } 
      case 9:
        gpu.h();
        return;
      case 12:
        break;
    } 
    evq evq1 = new evq((Activity)this);
    evq1.b(false);
    evq1.a(true);
    evq1.a(CustomQrScannerActivity.class);
    evq1.b(evq.d);
  }
  
  public void onResume() {
    super.onResume();
    gpu.b((Activity)this);
    MinhaConta.a(false);
    if (MinhaConta.f()) {
      Intent intent = new Intent((Context)this, ExitActivity.class);
      intent.addFlags(268435456);
      intent.addFlags(67108864);
      intent.putExtra("errorMessage", MinhaConta.d());
      intent.putExtra("showHome", MinhaConta.e());
      startActivity(intent);
    } 
  }
  
  public void onUserInteraction() {
    Log.d("SessionControl", "UIdetected");
    if (this.h == null) {
      this.h = new gry(null);
      (new Thread(this.h)).start();
    } 
    this.h.a();
    super.onUserInteraction();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\grs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */