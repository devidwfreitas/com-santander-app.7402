import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.datami.smi.SmiSdk;
import com.santander.app.geolocalizacao.service.GeolocalizacaoService;
import com.santander.app.transfergolden.service.TransferGoldenService;

public class myn {
  public static void a(alh paramalh) {
    if (paramalh.b() != null) {
      paramalh.b();
      return;
    } 
  }
  
  public static void a(Application paramApplication) {
    if (e(paramApplication))
      SmiSdk.getAppSDAuth("ab2413b3afc961e0a87dcb8f67494528fadd4230", (Context)paramApplication, "abc@def.com", Boolean.valueOf(false).booleanValue()); 
  }
  
  public static void a(Application paramApplication, ala paramala) {
    alb.a((Context)paramApplication, Uri.parse("content://com.santander.app.idsantander.idsantanderprovedor/" + "819B98B42786BFBEC717C789AF7B3"), paramala);
  }
  
  public static void a(Application paramApplication, Activity paramActivity) {
    GeolocalizacaoService.a = paramActivity;
    paramApplication.startService(new Intent((Context)paramApplication, GeolocalizacaoService.class));
  }
  
  public static void b(alh paramalh) {
    if (paramalh.d() != null) {
      if (paramalh.d().a().booleanValue()) {
        frq.e(paramalh.d().b(), paramalh.d().c());
        return;
      } 
    } else {
      return;
    } 
    frq.a(paramalh.d().b(), paramalh.d().c(), paramalh.d().d());
  }
  
  public static void b(Application paramApplication) {
    paramApplication.startService(new Intent((Context)paramApplication, TransferGoldenService.class));
  }
  
  public static void c(Application paramApplication) {
    bhv.a((Context)paramApplication);
  }
  
  public static void d(Application paramApplication) {
    clj.a((Context)paramApplication, "932838380", "Feq9CN2OkmQQ7PfnvAM", "0.00", true);
  }
  
  private static boolean e(Application paramApplication) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: invokestatic a : ()Lipi;
    //   5: astore_2
    //   6: aload_0
    //   7: ldc 'novidadesSegmentada'
    //   9: iconst_0
    //   10: invokevirtual getSharedPreferences : (Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   13: astore_3
    //   14: aload_3
    //   15: ldc 'segPrimario'
    //   17: ldc 'CL'
    //   19: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   24: astore_0
    //   25: aload_3
    //   26: ldc 'segSecundario'
    //   28: ldc 'CL'
    //   30: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   35: astore_3
    //   36: aload_0
    //   37: invokevirtual hashCode : ()I
    //   40: lookupswitch default -> 108, 2153 -> 179, 2374 -> 235, 2485 -> 250, 2562 -> 221, 2642 -> 207, 2713 -> 167, 2737 -> 193
    //   108: iconst_m1
    //   109: istore_1
    //   110: iload_1
    //   111: tableswitch default -> 156, 0 -> 265, 1 -> 156, 2 -> 156, 3 -> 271, 4 -> 292, 5 -> 298, 6 -> 304, 7 -> 310
    //   156: ldc '00000095'
    //   158: astore_0
    //   159: aload_2
    //   160: aload_0
    //   161: invokeinterface b : (Ljava/lang/String;)Z
    //   166: ireturn
    //   167: aload_0
    //   168: ldc 'UN'
    //   170: invokevirtual equals : (Ljava/lang/Object;)Z
    //   173: ifeq -> 108
    //   176: goto -> 110
    //   179: aload_0
    //   180: ldc 'CL'
    //   182: invokevirtual equals : (Ljava/lang/Object;)Z
    //   185: ifeq -> 108
    //   188: iconst_1
    //   189: istore_1
    //   190: goto -> 110
    //   193: aload_0
    //   194: ldc 'VG'
    //   196: invokevirtual equals : (Ljava/lang/Object;)Z
    //   199: ifeq -> 108
    //   202: iconst_3
    //   203: istore_1
    //   204: goto -> 110
    //   207: aload_0
    //   208: ldc 'SE'
    //   210: invokevirtual equals : (Ljava/lang/Object;)Z
    //   213: ifeq -> 108
    //   216: iconst_4
    //   217: istore_1
    //   218: goto -> 110
    //   221: aload_0
    //   222: ldc 'PR'
    //   224: invokevirtual equals : (Ljava/lang/Object;)Z
    //   227: ifeq -> 108
    //   230: iconst_5
    //   231: istore_1
    //   232: goto -> 110
    //   235: aload_0
    //   236: ldc 'JP'
    //   238: invokevirtual equals : (Ljava/lang/Object;)Z
    //   241: ifeq -> 108
    //   244: bipush #6
    //   246: istore_1
    //   247: goto -> 110
    //   250: aload_0
    //   251: ldc 'NC'
    //   253: invokevirtual equals : (Ljava/lang/Object;)Z
    //   256: ifeq -> 108
    //   259: bipush #7
    //   261: istore_1
    //   262: goto -> 110
    //   265: ldc '00000094'
    //   267: astore_0
    //   268: goto -> 159
    //   271: aload_3
    //   272: ldc 'VD'
    //   274: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   277: ifeq -> 286
    //   280: ldc '00000097'
    //   282: astore_0
    //   283: goto -> 159
    //   286: ldc '00000096'
    //   288: astore_0
    //   289: goto -> 159
    //   292: ldc '00000098'
    //   294: astore_0
    //   295: goto -> 159
    //   298: ldc '00000099'
    //   300: astore_0
    //   301: goto -> 159
    //   304: ldc '00000104'
    //   306: astore_0
    //   307: goto -> 159
    //   310: ldc '00000105'
    //   312: astore_0
    //   313: goto -> 159
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\myn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */