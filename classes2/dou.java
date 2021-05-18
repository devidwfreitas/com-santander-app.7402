import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.google.android.gms.internal.zzatd;
import com.google.android.gms.internal.zzato;
import com.google.android.gms.internal.zzatq;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.security.auth.x500.X500Principal;

public class dou extends dmu {
  private final AtomicLong a = new AtomicLong(0L);
  
  private int b;
  
  dou(dlv paramdlv) {
    super(paramdlv);
  }
  
  private Object a(int paramInt, Object paramObject, boolean paramBoolean) {
    if (paramObject == null)
      return null; 
    Object object = paramObject;
    if (!(paramObject instanceof Long)) {
      object = paramObject;
      if (!(paramObject instanceof Double)) {
        if (paramObject instanceof Integer)
          return Long.valueOf(((Integer)paramObject).intValue()); 
        if (paramObject instanceof Byte)
          return Long.valueOf(((Byte)paramObject).byteValue()); 
        if (paramObject instanceof Short)
          return Long.valueOf(((Short)paramObject).shortValue()); 
        if (paramObject instanceof Boolean) {
          if (((Boolean)paramObject).booleanValue()) {
            long l1 = 1L;
            return Long.valueOf(l1);
          } 
          long l = 0L;
          return Long.valueOf(l);
        } 
        return (paramObject instanceof Float) ? Double.valueOf(((Float)paramObject).doubleValue()) : ((paramObject instanceof String || paramObject instanceof Character || paramObject instanceof CharSequence) ? a(String.valueOf(paramObject), paramInt, paramBoolean) : null);
      } 
    } 
    return object;
  }
  
  public static Object a(Object paramObject) {
    ObjectInputStream objectInputStream;
    ObjectOutputStream objectOutputStream;
    if (paramObject == null)
      return null; 
    try {
      objectInputStream = (ObjectInputStream)new ByteArrayOutputStream();
    } finally {
      paramObject = null;
      objectInputStream = null;
    } 
    if (objectOutputStream != null)
      objectOutputStream.close(); 
    if (objectInputStream != null)
      objectInputStream.close(); 
    throw paramObject;
  }
  
  public static String a(dox paramdox) {
    int i = 0;
    if (paramdox == null)
      return "null"; 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("\nevent_filter {\n");
    a(stringBuilder, 0, "filter_id", paramdox.a);
    a(stringBuilder, 0, "event_name", paramdox.b);
    a(stringBuilder, 1, "event_count_filter", paramdox.e);
    stringBuilder.append("  filters {\n");
    doy[] arrayOfDoy = paramdox.c;
    int j = arrayOfDoy.length;
    while (i < j) {
      a(stringBuilder, 2, arrayOfDoy[i]);
      i++;
    } 
    a(stringBuilder, 1);
    stringBuilder.append("}\n}\n");
    return stringBuilder.toString();
  }
  
  public static String a(dpa paramdpa) {
    if (paramdpa == null)
      return "null"; 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("\nproperty_filter {\n");
    a(stringBuilder, 0, "filter_id", paramdpa.a);
    a(stringBuilder, 0, "property_name", paramdpa.b);
    a(stringBuilder, 1, paramdpa.c);
    stringBuilder.append("}\n");
    return stringBuilder.toString();
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt) {
    for (int i = 0; i < paramInt; i++)
      paramStringBuilder.append("  "); 
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, doy paramdoy) {
    if (paramdoy == null)
      return; 
    a(paramStringBuilder, paramInt);
    paramStringBuilder.append("filter {\n");
    a(paramStringBuilder, paramInt, "complement", paramdoy.c);
    a(paramStringBuilder, paramInt, "param_name", paramdoy.d);
    a(paramStringBuilder, paramInt + 1, "string_filter", paramdoy.a);
    a(paramStringBuilder, paramInt + 1, "number_filter", paramdoy.b);
    a(paramStringBuilder, paramInt);
    paramStringBuilder.append("}\n");
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, dpl paramdpl) {
    if (paramdpl == null)
      return; 
    a(paramStringBuilder, paramInt);
    paramStringBuilder.append("bundle {\n");
    a(paramStringBuilder, paramInt, "protocol_version", paramdpl.a);
    a(paramStringBuilder, paramInt, "platform", paramdpl.i);
    a(paramStringBuilder, paramInt, "gmp_version", paramdpl.q);
    a(paramStringBuilder, paramInt, "uploading_gmp_version", paramdpl.r);
    a(paramStringBuilder, paramInt, "config_version", paramdpl.G);
    a(paramStringBuilder, paramInt, "gmp_app_id", paramdpl.y);
    a(paramStringBuilder, paramInt, "app_id", paramdpl.o);
    a(paramStringBuilder, paramInt, "app_version", paramdpl.p);
    a(paramStringBuilder, paramInt, "app_version_major", paramdpl.C);
    a(paramStringBuilder, paramInt, "app_version_minor", paramdpl.D);
    a(paramStringBuilder, paramInt, "app_version_release", paramdpl.E);
    a(paramStringBuilder, paramInt, "firebase_instance_id", paramdpl.B);
    a(paramStringBuilder, paramInt, "dev_cert_hash", paramdpl.v);
    a(paramStringBuilder, paramInt, "app_store", paramdpl.n);
    a(paramStringBuilder, paramInt, "upload_timestamp_millis", paramdpl.d);
    a(paramStringBuilder, paramInt, "start_timestamp_millis", paramdpl.e);
    a(paramStringBuilder, paramInt, "end_timestamp_millis", paramdpl.f);
    a(paramStringBuilder, paramInt, "previous_bundle_start_timestamp_millis", paramdpl.g);
    a(paramStringBuilder, paramInt, "previous_bundle_end_timestamp_millis", paramdpl.h);
    a(paramStringBuilder, paramInt, "app_instance_id", paramdpl.u);
    a(paramStringBuilder, paramInt, "resettable_device_id", paramdpl.s);
    a(paramStringBuilder, paramInt, "device_id", paramdpl.F);
    a(paramStringBuilder, paramInt, "limited_ad_tracking", paramdpl.t);
    a(paramStringBuilder, paramInt, "os_version", paramdpl.j);
    a(paramStringBuilder, paramInt, "device_model", paramdpl.k);
    a(paramStringBuilder, paramInt, "user_default_language", paramdpl.l);
    a(paramStringBuilder, paramInt, "time_zone_offset_minutes", paramdpl.m);
    a(paramStringBuilder, paramInt, "bundle_sequential_index", paramdpl.w);
    a(paramStringBuilder, paramInt, "service_upload", paramdpl.z);
    a(paramStringBuilder, paramInt, "health_monitor", paramdpl.x);
    if (paramdpl.H.longValue() != 0L)
      a(paramStringBuilder, paramInt, "android_id", paramdpl.H); 
    a(paramStringBuilder, paramInt, paramdpl.c);
    a(paramStringBuilder, paramInt, paramdpl.A);
    a(paramStringBuilder, paramInt, paramdpl.b);
    a(paramStringBuilder, paramInt);
    paramStringBuilder.append("}\n");
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, String paramString, doz paramdoz) {
    // Byte code:
    //   0: aload_3
    //   1: ifnonnull -> 5
    //   4: return
    //   5: aload_0
    //   6: iload_1
    //   7: invokestatic a : (Ljava/lang/StringBuilder;I)V
    //   10: aload_0
    //   11: aload_2
    //   12: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: pop
    //   16: aload_0
    //   17: ldc_w ' {\\n'
    //   20: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: pop
    //   24: aload_3
    //   25: getfield a : Ljava/lang/Integer;
    //   28: ifnull -> 81
    //   31: ldc_w 'UNKNOWN_COMPARISON_TYPE'
    //   34: astore_2
    //   35: aload_3
    //   36: getfield a : Ljava/lang/Integer;
    //   39: invokevirtual intValue : ()I
    //   42: tableswitch default -> 72, 1 -> 142, 2 -> 149, 3 -> 156, 4 -> 163
    //   72: aload_0
    //   73: iload_1
    //   74: ldc_w 'comparison_type'
    //   77: aload_2
    //   78: invokestatic a : (Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    //   81: aload_0
    //   82: iload_1
    //   83: ldc_w 'match_as_float'
    //   86: aload_3
    //   87: getfield b : Ljava/lang/Boolean;
    //   90: invokestatic a : (Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    //   93: aload_0
    //   94: iload_1
    //   95: ldc_w 'comparison_value'
    //   98: aload_3
    //   99: getfield c : Ljava/lang/String;
    //   102: invokestatic a : (Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    //   105: aload_0
    //   106: iload_1
    //   107: ldc_w 'min_comparison_value'
    //   110: aload_3
    //   111: getfield d : Ljava/lang/String;
    //   114: invokestatic a : (Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    //   117: aload_0
    //   118: iload_1
    //   119: ldc_w 'max_comparison_value'
    //   122: aload_3
    //   123: getfield e : Ljava/lang/String;
    //   126: invokestatic a : (Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    //   129: aload_0
    //   130: iload_1
    //   131: invokestatic a : (Ljava/lang/StringBuilder;I)V
    //   134: aload_0
    //   135: ldc '}\\n'
    //   137: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: pop
    //   141: return
    //   142: ldc_w 'LESS_THAN'
    //   145: astore_2
    //   146: goto -> 72
    //   149: ldc_w 'GREATER_THAN'
    //   152: astore_2
    //   153: goto -> 72
    //   156: ldc_w 'EQUAL'
    //   159: astore_2
    //   160: goto -> 72
    //   163: ldc_w 'BETWEEN'
    //   166: astore_2
    //   167: goto -> 72
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, String paramString, dpb paramdpb) {
    // Byte code:
    //   0: aload_3
    //   1: ifnonnull -> 5
    //   4: return
    //   5: aload_0
    //   6: iload_1
    //   7: invokestatic a : (Ljava/lang/StringBuilder;I)V
    //   10: aload_0
    //   11: aload_2
    //   12: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: pop
    //   16: aload_0
    //   17: ldc_w ' {\\n'
    //   20: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: pop
    //   24: aload_3
    //   25: getfield a : Ljava/lang/Integer;
    //   28: ifnull -> 89
    //   31: ldc_w 'UNKNOWN_MATCH_TYPE'
    //   34: astore_2
    //   35: aload_3
    //   36: getfield a : Ljava/lang/Integer;
    //   39: invokevirtual intValue : ()I
    //   42: tableswitch default -> 80, 1 -> 190, 2 -> 197, 3 -> 204, 4 -> 211, 5 -> 218, 6 -> 225
    //   80: aload_0
    //   81: iload_1
    //   82: ldc_w 'match_type'
    //   85: aload_2
    //   86: invokestatic a : (Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    //   89: aload_0
    //   90: iload_1
    //   91: ldc_w 'expression'
    //   94: aload_3
    //   95: getfield b : Ljava/lang/String;
    //   98: invokestatic a : (Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    //   101: aload_0
    //   102: iload_1
    //   103: ldc_w 'case_sensitive'
    //   106: aload_3
    //   107: getfield c : Ljava/lang/Boolean;
    //   110: invokestatic a : (Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    //   113: aload_3
    //   114: getfield d : [Ljava/lang/String;
    //   117: arraylength
    //   118: ifle -> 239
    //   121: aload_0
    //   122: iload_1
    //   123: iconst_1
    //   124: iadd
    //   125: invokestatic a : (Ljava/lang/StringBuilder;I)V
    //   128: aload_0
    //   129: ldc_w 'expression_list {\\n'
    //   132: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: pop
    //   136: aload_3
    //   137: getfield d : [Ljava/lang/String;
    //   140: astore_2
    //   141: aload_2
    //   142: arraylength
    //   143: istore #5
    //   145: iconst_0
    //   146: istore #4
    //   148: iload #4
    //   150: iload #5
    //   152: if_icmpge -> 232
    //   155: aload_2
    //   156: iload #4
    //   158: aaload
    //   159: astore_3
    //   160: aload_0
    //   161: iload_1
    //   162: iconst_2
    //   163: iadd
    //   164: invokestatic a : (Ljava/lang/StringBuilder;I)V
    //   167: aload_0
    //   168: aload_3
    //   169: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: pop
    //   173: aload_0
    //   174: ldc_w '\\n'
    //   177: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: pop
    //   181: iload #4
    //   183: iconst_1
    //   184: iadd
    //   185: istore #4
    //   187: goto -> 148
    //   190: ldc_w 'REGEXP'
    //   193: astore_2
    //   194: goto -> 80
    //   197: ldc_w 'BEGINS_WITH'
    //   200: astore_2
    //   201: goto -> 80
    //   204: ldc_w 'ENDS_WITH'
    //   207: astore_2
    //   208: goto -> 80
    //   211: ldc_w 'PARTIAL'
    //   214: astore_2
    //   215: goto -> 80
    //   218: ldc_w 'EXACT'
    //   221: astore_2
    //   222: goto -> 80
    //   225: ldc_w 'IN_LIST'
    //   228: astore_2
    //   229: goto -> 80
    //   232: aload_0
    //   233: ldc '}\\n'
    //   235: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: pop
    //   239: aload_0
    //   240: iload_1
    //   241: invokestatic a : (Ljava/lang/StringBuilder;I)V
    //   244: aload_0
    //   245: ldc '}\\n'
    //   247: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   250: pop
    //   251: return
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, String paramString, dpm paramdpm) {
    byte b = 0;
    if (paramdpm == null)
      return; 
    int i = paramInt + 1;
    a(paramStringBuilder, i);
    paramStringBuilder.append(paramString);
    paramStringBuilder.append(" {\n");
    if (paramdpm.b != null) {
      a(paramStringBuilder, i + 1);
      paramStringBuilder.append("results: ");
      long[] arrayOfLong = paramdpm.b;
      int k = arrayOfLong.length;
      int j = 0;
      for (paramInt = 0; j < k; paramInt++) {
        long l = arrayOfLong[j];
        if (paramInt != 0)
          paramStringBuilder.append(", "); 
        paramStringBuilder.append(Long.valueOf(l));
        j++;
      } 
      paramStringBuilder.append('\n');
    } 
    if (paramdpm.a != null) {
      a(paramStringBuilder, i + 1);
      paramStringBuilder.append("status: ");
      long[] arrayOfLong = paramdpm.a;
      int k = arrayOfLong.length;
      paramInt = 0;
      int j = b;
      while (j < k) {
        long l = arrayOfLong[j];
        if (paramInt != 0)
          paramStringBuilder.append(", "); 
        paramStringBuilder.append(Long.valueOf(l));
        j++;
        paramInt++;
      } 
      paramStringBuilder.append('\n');
    } 
    a(paramStringBuilder, i);
    paramStringBuilder.append("}\n");
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, String paramString, Object paramObject) {
    if (paramObject == null)
      return; 
    a(paramStringBuilder, paramInt + 1);
    paramStringBuilder.append(paramString);
    paramStringBuilder.append(": ");
    paramStringBuilder.append(paramObject);
    paramStringBuilder.append('\n');
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, dph[] paramArrayOfdph) {
    if (paramArrayOfdph != null) {
      int i = paramInt + 1;
      int j = paramArrayOfdph.length;
      paramInt = 0;
      while (true) {
        if (paramInt < j) {
          dph dph1 = paramArrayOfdph[paramInt];
          if (dph1 != null) {
            a(paramStringBuilder, i);
            paramStringBuilder.append("audience_membership {\n");
            a(paramStringBuilder, i, "audience_id", dph1.a);
            a(paramStringBuilder, i, "new_audience", dph1.d);
            a(paramStringBuilder, i, "current_data", dph1.b);
            a(paramStringBuilder, i, "previous_data", dph1.c);
            a(paramStringBuilder, i);
            paramStringBuilder.append("}\n");
          } 
          paramInt++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, dpi[] paramArrayOfdpi) {
    if (paramArrayOfdpi != null) {
      int i = paramInt + 1;
      int j = paramArrayOfdpi.length;
      paramInt = 0;
      while (true) {
        if (paramInt < j) {
          dpi dpi1 = paramArrayOfdpi[paramInt];
          if (dpi1 != null) {
            a(paramStringBuilder, i);
            paramStringBuilder.append("event {\n");
            a(paramStringBuilder, i, "name", dpi1.b);
            a(paramStringBuilder, i, "timestamp_millis", dpi1.c);
            a(paramStringBuilder, i, "previous_timestamp_millis", dpi1.d);
            a(paramStringBuilder, i, "count", dpi1.e);
            a(paramStringBuilder, i, dpi1.a);
            a(paramStringBuilder, i);
            paramStringBuilder.append("}\n");
          } 
          paramInt++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, dpj[] paramArrayOfdpj) {
    if (paramArrayOfdpj != null) {
      int i = paramInt + 1;
      int j = paramArrayOfdpj.length;
      paramInt = 0;
      while (true) {
        if (paramInt < j) {
          dpj dpj1 = paramArrayOfdpj[paramInt];
          if (dpj1 != null) {
            a(paramStringBuilder, i);
            paramStringBuilder.append("param {\n");
            a(paramStringBuilder, i, "name", dpj1.a);
            a(paramStringBuilder, i, "string_value", dpj1.b);
            a(paramStringBuilder, i, "int_value", dpj1.c);
            a(paramStringBuilder, i, "double_value", dpj1.e);
            a(paramStringBuilder, i);
            paramStringBuilder.append("}\n");
          } 
          paramInt++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, dpn[] paramArrayOfdpn) {
    if (paramArrayOfdpn != null) {
      int i = paramInt + 1;
      int j = paramArrayOfdpn.length;
      paramInt = 0;
      while (true) {
        if (paramInt < j) {
          dpn dpn1 = paramArrayOfdpn[paramInt];
          if (dpn1 != null) {
            a(paramStringBuilder, i);
            paramStringBuilder.append("user_property {\n");
            a(paramStringBuilder, i, "set_timestamp_millis", dpn1.a);
            a(paramStringBuilder, i, "name", dpn1.b);
            a(paramStringBuilder, i, "string_value", dpn1.c);
            a(paramStringBuilder, i, "int_value", dpn1.d);
            a(paramStringBuilder, i, "double_value", dpn1.f);
            a(paramStringBuilder, i);
            paramStringBuilder.append("}\n");
          } 
          paramInt++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public static boolean a(Context paramContext, String paramString) {
    try {
      PackageManager packageManager = paramContext.getPackageManager();
      if (packageManager == null)
        return false; 
      ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(paramContext, paramString), 4);
      if (serviceInfo != null) {
        boolean bool = serviceInfo.enabled;
        if (bool)
          return true; 
      } 
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {}
    return false;
  }
  
  public static boolean a(Context paramContext, String paramString, boolean paramBoolean) {
    try {
      PackageManager packageManager = paramContext.getPackageManager();
      if (packageManager == null)
        return false; 
      ActivityInfo activityInfo = packageManager.getReceiverInfo(new ComponentName(paramContext, paramString), 2);
      if (activityInfo != null && activityInfo.enabled)
        if (paramBoolean) {
          paramBoolean = activityInfo.exported;
          if (paramBoolean)
            return true; 
        } else {
          return true;
        }  
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {}
    return false;
  }
  
  static boolean a(String paramString) {
    boolean bool = false;
    csp.a(paramString);
    if (paramString.charAt(0) != '_')
      bool = true; 
    return bool;
  }
  
  public static boolean a(long[] paramArrayOflong, int paramInt) {
    return (paramInt < paramArrayOflong.length * 64 && (paramArrayOflong[paramInt / 64] & 1L << paramInt % 64) != 0L);
  }
  
  public static long[] a(BitSet paramBitSet) {
    int j = (paramBitSet.length() + 63) / 64;
    long[] arrayOfLong = new long[j];
    int i = 0;
    label15: while (i < j) {
      arrayOfLong[i] = 0L;
      for (int k = 0;; k++) {
        if (k >= 64 || i * 64 + k >= paramBitSet.length()) {
          i++;
          continue label15;
        } 
        if (paramBitSet.get(i * 64 + k))
          arrayOfLong[i] = arrayOfLong[i] | 1L << k; 
      } 
    } 
    return arrayOfLong;
  }
  
  public static String b(dpk paramdpk) {
    if (paramdpk == null)
      return ""; 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("\nbatch {\n");
    if (paramdpk.a != null)
      for (dpl dpl : paramdpk.a) {
        if (dpl != null)
          a(stringBuilder, 1, dpl); 
      }  
    stringBuilder.append("}\n");
    return stringBuilder.toString();
  }
  
  static long c(byte[] paramArrayOfbyte) {
    boolean bool;
    int j = 0;
    csp.a(paramArrayOfbyte);
    if (paramArrayOfbyte.length > 0) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.a(bool);
    long l = 0L;
    for (int i = paramArrayOfbyte.length - 1; i >= 0 && i >= paramArrayOfbyte.length - 8; i--) {
      l += (paramArrayOfbyte[i] & 0xFFL) << j;
      j += 8;
    } 
    return l;
  }
  
  public static boolean c(String paramString1, String paramString2) {
    return (paramString1 == null && paramString2 == null) ? true : ((paramString1 == null) ? false : paramString1.equals(paramString2));
  }
  
  static MessageDigest j(String paramString) {
    for (int i = 0; i < 2; i++) {
      try {
        MessageDigest messageDigest = MessageDigest.getInstance(paramString);
        if (messageDigest != null)
          return messageDigest; 
      } catch (NoSuchAlgorithmException noSuchAlgorithmException) {}
    } 
    return null;
  }
  
  public static boolean l(String paramString) {
    return (!TextUtils.isEmpty(paramString) && paramString.startsWith("_"));
  }
  
  static boolean n(String paramString) {
    return (paramString != null && paramString.matches("(\\+|-)?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && paramString.length() <= 310);
  }
  
  private int r(String paramString) {
    return "_ldl".equals(paramString) ? w().E() : w().D();
  }
  
  public Bundle a(@NonNull Uri paramUri) {
    Bundle bundle = null;
    if (paramUri != null)
      try {
        CharSequence charSequence1;
        CharSequence charSequence2;
        CharSequence charSequence3;
        CharSequence charSequence4;
        if (paramUri.isHierarchical()) {
          charSequence4 = paramUri.getQueryParameter("utm_campaign");
          charSequence3 = paramUri.getQueryParameter("utm_source");
          charSequence2 = paramUri.getQueryParameter("utm_medium");
          charSequence1 = paramUri.getQueryParameter("gclid");
        } else {
          charSequence1 = null;
          charSequence2 = null;
          charSequence3 = null;
          charSequence4 = null;
        } 
        if (!TextUtils.isEmpty(charSequence4) || !TextUtils.isEmpty(charSequence3) || !TextUtils.isEmpty(charSequence2) || !TextUtils.isEmpty(charSequence1)) {
          Bundle bundle1 = new Bundle();
          if (!TextUtils.isEmpty(charSequence4))
            bundle1.putString("campaign", (String)charSequence4); 
          if (!TextUtils.isEmpty(charSequence3))
            bundle1.putString("source", (String)charSequence3); 
          if (!TextUtils.isEmpty(charSequence2))
            bundle1.putString("medium", (String)charSequence2); 
          if (!TextUtils.isEmpty(charSequence1))
            bundle1.putString("gclid", (String)charSequence1); 
          charSequence1 = paramUri.getQueryParameter("utm_term");
          if (!TextUtils.isEmpty(charSequence1))
            bundle1.putString("term", (String)charSequence1); 
          charSequence1 = paramUri.getQueryParameter("utm_content");
          if (!TextUtils.isEmpty(charSequence1))
            bundle1.putString("content", (String)charSequence1); 
          charSequence1 = paramUri.getQueryParameter("aclid");
          if (!TextUtils.isEmpty(charSequence1))
            bundle1.putString("aclid", (String)charSequence1); 
          charSequence1 = paramUri.getQueryParameter("cp1");
          if (!TextUtils.isEmpty(charSequence1))
            bundle1.putString("cp1", (String)charSequence1); 
          String str = paramUri.getQueryParameter("anid");
          bundle = bundle1;
          if (!TextUtils.isEmpty(str)) {
            bundle1.putString("anid", str);
            return bundle1;
          } 
        } 
        return bundle;
      } catch (UnsupportedOperationException unsupportedOperationException) {
        u().z().a("Install referrer url isn't a hierarchical URI", unsupportedOperationException);
        return null;
      }  
    return bundle;
  }
  
  Bundle a(Bundle paramBundle) {
    Bundle bundle = new Bundle();
    if (paramBundle != null)
      for (String str : paramBundle.keySet()) {
        Object object = q().b(str, paramBundle.get(str));
        if (object == null) {
          u().z().a("Param value can't be null", str);
          continue;
        } 
        q().a(bundle, str, object);
      }  
    return bundle;
  }
  
  public Bundle a(String paramString, Bundle paramBundle, @Nullable List<String> paramList, boolean paramBoolean) {
    Bundle bundle = null;
    if (paramBundle != null) {
      bundle = new Bundle(paramBundle);
      w().x();
      Iterator<String> iterator = paramBundle.keySet().iterator();
      int i = 0;
      while (true) {
        if (iterator.hasNext()) {
          boolean bool;
          String str = iterator.next();
          if (paramList == null || !paramList.contains(str)) {
            byte b;
            if (paramBoolean) {
              b = f(str);
            } else {
              b = 0;
            } 
            bool = b;
            if (!b)
              bool = g(str); 
          } else {
            bool = false;
          } 
          if (bool) {
            if (a(bundle, bool)) {
              bundle.putString("_ev", a(str, w().A(), true));
              if (bool == 3)
                a(bundle, str); 
            } 
            bundle.remove(str);
            continue;
          } 
          if (!a(str, paramBundle.get(str)) && !"_ev".equals(str)) {
            if (a(bundle, 4)) {
              bundle.putString("_ev", a(str, w().A(), true));
              a(bundle, paramBundle.get(str));
            } 
            bundle.remove(str);
            continue;
          } 
          int j = i;
          if (a(str)) {
            j = ++i;
            if (i > 25) {
              String str1 = (new StringBuilder(48)).append("Event can't contain more then ").append(25).append(" params").toString();
              u().x().a(str1, paramString, paramBundle);
              a(bundle, 5);
              bundle.remove(str);
              continue;
            } 
          } 
          i = j;
          continue;
        } 
        return bundle;
      } 
    } 
    return bundle;
  }
  
  <T extends Parcelable> T a(byte[] paramArrayOfbyte, Parcelable.Creator<T> paramCreator) {
    if (paramArrayOfbyte == null)
      return null; 
    Parcel parcel = Parcel.obtain();
    try {
      parcel.unmarshall(paramArrayOfbyte, 0, paramArrayOfbyte.length);
      parcel.setDataPosition(0);
      return (T)paramCreator.createFromParcel(parcel);
    } catch (csc csc) {
      u().x().a("Failed to load parcelable from buffer");
      return null;
    } finally {
      parcel.recycle();
    } 
  }
  
  zzatq a(String paramString1, Bundle paramBundle, String paramString2, long paramLong, boolean paramBoolean1, boolean paramBoolean2) {
    if (TextUtils.isEmpty(paramString1))
      return null; 
    if (q().c(paramString1) != 0) {
      u().x().a("Invalid conditional property event name", paramString1);
      throw new IllegalArgumentException();
    } 
    if (paramBundle != null) {
      paramBundle = new Bundle(paramBundle);
    } else {
      paramBundle = new Bundle();
    } 
    paramBundle.putString("_o", paramString2);
    List<String> list = cvp.a("_o");
    paramBundle = q().a(paramString1, paramBundle, list, paramBoolean2);
    if (paramBoolean1)
      paramBundle = a(paramBundle); 
    return new zzatq(paramString1, new zzato(paramBundle), paramString2, paramLong);
  }
  
  public String a(String paramString, int paramInt, boolean paramBoolean) {
    String str = paramString;
    if (paramString.length() > paramInt) {
      if (paramBoolean)
        return String.valueOf(paramString.substring(0, paramInt)).concat("..."); 
    } else {
      return str;
    } 
    return null;
  }
  
  protected void a() {
    SecureRandom secureRandom = new SecureRandom();
    long l2 = secureRandom.nextLong();
    long l1 = l2;
    if (l2 == 0L) {
      l2 = secureRandom.nextLong();
      l1 = l2;
      if (l2 == 0L) {
        u().z().a("Utils falling back to Random for random id");
        l1 = l2;
      } 
    } 
    this.a.set(l1);
  }
  
  public void a(int paramInt1, String paramString1, String paramString2, int paramInt2) {
    a(null, paramInt1, paramString1, paramString2, paramInt2);
  }
  
  public void a(Bundle paramBundle, Object paramObject) {
    csp.a(paramBundle);
    if (paramObject != null && (paramObject instanceof String || paramObject instanceof CharSequence))
      paramBundle.putLong("_el", String.valueOf(paramObject).length()); 
  }
  
  public void a(Bundle paramBundle, String paramString, Object paramObject) {
    if (paramBundle != null) {
      if (paramObject instanceof Long) {
        paramBundle.putLong(paramString, ((Long)paramObject).longValue());
        return;
      } 
      if (paramObject instanceof String) {
        paramBundle.putString(paramString, String.valueOf(paramObject));
        return;
      } 
      if (paramObject instanceof Double) {
        paramBundle.putDouble(paramString, ((Double)paramObject).doubleValue());
        return;
      } 
      if (paramString != null) {
        if (paramObject != null) {
          String str = paramObject.getClass().getSimpleName();
        } else {
          paramBundle = null;
        } 
        u().A().a("Not putting event parameter. Invalid value type. name, type", paramString, paramBundle);
        return;
      } 
    } 
  }
  
  public void a(dpj paramdpj, Object paramObject) {
    csp.a(paramObject);
    paramdpj.b = null;
    paramdpj.c = null;
    paramdpj.e = null;
    if (paramObject instanceof String) {
      paramdpj.b = (String)paramObject;
      return;
    } 
    if (paramObject instanceof Long) {
      paramdpj.c = (Long)paramObject;
      return;
    } 
    if (paramObject instanceof Double) {
      paramdpj.e = (Double)paramObject;
      return;
    } 
    u().x().a("Ignoring invalid (type) event param value", paramObject);
  }
  
  public void a(dpn paramdpn, Object paramObject) {
    csp.a(paramObject);
    paramdpn.c = null;
    paramdpn.d = null;
    paramdpn.f = null;
    if (paramObject instanceof String) {
      paramdpn.c = (String)paramObject;
      return;
    } 
    if (paramObject instanceof Long) {
      paramdpn.d = (Long)paramObject;
      return;
    } 
    if (paramObject instanceof Double) {
      paramdpn.f = (Double)paramObject;
      return;
    } 
    u().x().a("Ignoring invalid (type) user attribute value", paramObject);
  }
  
  public void a(String paramString1, int paramInt1, String paramString2, String paramString3, int paramInt2) {
    Bundle bundle = new Bundle();
    a(bundle, paramInt1);
    if (!TextUtils.isEmpty(paramString2))
      bundle.putString(paramString2, paramString3); 
    if (paramInt1 == 6 || paramInt1 == 7 || paramInt1 == 2)
      bundle.putLong("_el", paramInt2); 
    this.n.d().V();
    this.n.l().a("auto", "_err", bundle);
  }
  
  public boolean a(long paramLong1, long paramLong2) {
    return !(paramLong1 != 0L && paramLong2 > 0L && Math.abs(m().a() - paramLong1) <= paramLong2);
  }
  
  public boolean a(Intent paramIntent) {
    String str = paramIntent.getStringExtra("android.intent.extra.REFERRER_NAME");
    return ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(str) || "https://www.google.com".equals(str) || "android-app://com.google.appcrawler".equals(str));
  }
  
  public boolean a(Bundle paramBundle, int paramInt) {
    if (paramBundle != null && paramBundle.getLong("_err") == 0L) {
      paramBundle.putLong("_err", paramInt);
      return true;
    } 
    return false;
  }
  
  @WorkerThread
  boolean a(zzatq paramzzatq, zzatd paramzzatd) {
    csp.a(paramzzatq);
    csp.a(paramzzatd);
    if (TextUtils.isEmpty(paramzzatd.b)) {
      w().V();
      return false;
    } 
    return true;
  }
  
  boolean a(String paramString1, int paramInt, String paramString2) {
    if (paramString2 == null) {
      u().x().a("Name is required and can't be null. Type", paramString1);
      return false;
    } 
    if (paramString2.length() > paramInt) {
      u().x().a("Name is too long. Type, maximum supported length, name", paramString1, Integer.valueOf(paramInt), paramString2);
      return false;
    } 
    return true;
  }
  
  public boolean a(String paramString, Object paramObject) {
    return l(paramString) ? a("param", paramString, w().C(), paramObject) : a("param", paramString, w().B(), paramObject);
  }
  
  boolean a(String paramString1, String paramString2) {
    if (paramString2 == null) {
      u().x().a("Name is required and can't be null. Type", paramString1);
      return false;
    } 
    if (paramString2.length() == 0) {
      u().x().a("Name is required and can't be empty. Type", paramString1);
      return false;
    } 
    int i = paramString2.codePointAt(0);
    if (!Character.isLetter(i)) {
      u().x().a("Name must start with a letter. Type, name", paramString1, paramString2);
      return false;
    } 
    int j = paramString2.length();
    for (i = Character.charCount(i); i < j; i += Character.charCount(k)) {
      int k = paramString2.codePointAt(i);
      if (k != 95 && !Character.isLetterOrDigit(k)) {
        u().x().a("Name must consist of letters, digits or _ (underscores). Type, name", paramString1, paramString2);
        return false;
      } 
    } 
    return true;
  }
  
  boolean a(String paramString1, String paramString2, int paramInt, Object paramObject) {
    if (paramObject != null && !(paramObject instanceof Long) && !(paramObject instanceof Float) && !(paramObject instanceof Integer) && !(paramObject instanceof Byte) && !(paramObject instanceof Short) && !(paramObject instanceof Boolean) && !(paramObject instanceof Double)) {
      if (paramObject instanceof String || paramObject instanceof Character || paramObject instanceof CharSequence) {
        paramObject = String.valueOf(paramObject);
        if (paramObject.length() > paramInt) {
          u().z().a("Value is too long; discarded. Value kind, name, value length", paramString1, paramString2, Integer.valueOf(paramObject.length()));
          return false;
        } 
        return true;
      } 
      return false;
    } 
    return true;
  }
  
  boolean a(String paramString1, Map<String, String> paramMap, String paramString2) {
    if (paramString2 == null) {
      u().x().a("Name is required and can't be null. Type", paramString1);
      return false;
    } 
    if (paramString2.startsWith("firebase_")) {
      u().x().a("Name starts with reserved prefix. Type, name", paramString1, paramString2);
      return false;
    } 
    if (paramMap != null && paramMap.containsKey(paramString2)) {
      u().x().a("Name is reserved. Type, name", paramString1, paramString2);
      return false;
    } 
    return true;
  }
  
  byte[] a(Parcelable paramParcelable) {
    if (paramParcelable == null)
      return null; 
    Parcel parcel = Parcel.obtain();
    try {
      paramParcelable.writeToParcel(parcel, 0);
      return parcel.marshall();
    } finally {
      parcel.recycle();
    } 
  }
  
  public byte[] a(dpk paramdpk) {
    try {
      byte[] arrayOfByte = new byte[paramdpk.g()];
      dqw dqw = dqw.a(arrayOfByte);
      paramdpk.a(dqw);
      dqw.b();
      return arrayOfByte;
    } catch (IOException iOException) {
      u().x().a("Data loss. Failed to serialize batch", iOException);
      return null;
    } 
  }
  
  public byte[] a(byte[] paramArrayOfbyte) {
    try {
      ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
      GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
      gZIPOutputStream.write(paramArrayOfbyte);
      gZIPOutputStream.close();
      byteArrayOutputStream.close();
      return byteArrayOutputStream.toByteArray();
    } catch (IOException iOException) {
      u().x().a("Failed to gzip content", iOException);
      throw iOException;
    } 
  }
  
  public int b(String paramString) {
    if (a("event", paramString)) {
      if (!a("event", egf.a, paramString))
        return 13; 
      if (a("event", w().y(), paramString))
        return 0; 
    } 
    return 2;
  }
  
  @WorkerThread
  long b(Context paramContext, String paramString) {
    e();
    csp.a(paramContext);
    csp.a(paramString);
    PackageManager packageManager = paramContext.getPackageManager();
    MessageDigest messageDigest = j("MD5");
    if (messageDigest == null) {
      u().x().a("Could not get MD5 instance");
      return -1L;
    } 
    if (packageManager != null)
      try {
        if (!c(paramContext, paramString)) {
          PackageInfo packageInfo = dgl.b(paramContext).b(n().getPackageName(), 64);
          if (packageInfo.signatures != null && packageInfo.signatures.length > 0)
            return c(messageDigest.digest(packageInfo.signatures[0].toByteArray())); 
          u().z().a("Could not get signatures");
          return -1L;
        } 
      } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
        u().x().a("Package name not found", nameNotFoundException);
      }  
    return 0L;
  }
  
  public Object b(String paramString, Object paramObject) {
    if ("_ev".equals(paramString))
      return a(w().C(), paramObject, true); 
    if (l(paramString)) {
      int j = w().C();
      return a(j, paramObject, false);
    } 
    int i = w().B();
    return a(i, paramObject, false);
  }
  
  boolean b(String paramString1, String paramString2) {
    if (paramString2 == null) {
      u().x().a("Name is required and can't be null. Type", paramString1);
      return false;
    } 
    if (paramString2.length() == 0) {
      u().x().a("Name is required and can't be empty. Type", paramString1);
      return false;
    } 
    int i = paramString2.codePointAt(0);
    if (!Character.isLetter(i) && i != 95) {
      u().x().a("Name must start with a letter or _ (underscore). Type, name", paramString1, paramString2);
      return false;
    } 
    int j = paramString2.length();
    for (i = Character.charCount(i); i < j; i += Character.charCount(k)) {
      int k = paramString2.codePointAt(i);
      if (k != 95 && !Character.isLetterOrDigit(k)) {
        u().x().a("Name must consist of letters, digits or _ (underscores). Type, name", paramString1, paramString2);
        return false;
      } 
    } 
    return true;
  }
  
  public byte[] b(byte[] paramArrayOfbyte) {
    try {
      ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(paramArrayOfbyte);
      GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
      ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte = new byte[1024];
      while (true) {
        int i = gZIPInputStream.read(arrayOfByte);
        if (i <= 0) {
          gZIPInputStream.close();
          byteArrayInputStream.close();
          return byteArrayOutputStream.toByteArray();
        } 
        byteArrayOutputStream.write(arrayOfByte, 0, i);
      } 
    } catch (IOException iOException) {
      u().x().a("Failed to ungzip content", iOException);
      throw iOException;
    } 
  }
  
  public int c(String paramString) {
    if (b("event", paramString)) {
      if (!a("event", egf.a, paramString))
        return 13; 
      if (a("event", w().y(), paramString))
        return 0; 
    } 
    return 2;
  }
  
  public int c(String paramString, Object paramObject) {
    boolean bool;
    if ("_ldl".equals(paramString)) {
      bool = a("user property referrer", paramString, r(paramString), paramObject);
    } else {
      bool = a("user property", paramString, r(paramString), paramObject);
    } 
    return bool ? 0 : 7;
  }
  
  boolean c(Context paramContext, String paramString) {
    X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
    try {
      PackageInfo packageInfo = dgl.b(paramContext).b(paramString, 64);
      if (packageInfo != null && packageInfo.signatures != null && packageInfo.signatures.length > 0) {
        Signature signature = packageInfo.signatures[0];
        return ((X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signature.toByteArray()))).getSubjectX500Principal().equals(x500Principal);
      } 
    } catch (CertificateException certificateException) {
      u().x().a("Error obtaining certificate", certificateException);
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      u().x().a("Package name not found", nameNotFoundException);
    } 
    return true;
  }
  
  public int d(String paramString) {
    if (a("user property", paramString)) {
      if (!a("user property", egl.a, paramString))
        return 15; 
      if (a("user property", w().z(), paramString))
        return 0; 
    } 
    return 6;
  }
  
  @WorkerThread
  public long d(byte[] paramArrayOfbyte) {
    csp.a(paramArrayOfbyte);
    e();
    MessageDigest messageDigest = j("MD5");
    if (messageDigest == null) {
      u().x().a("Failed to get MD5");
      return 0L;
    } 
    return c(messageDigest.digest(paramArrayOfbyte));
  }
  
  public Object d(String paramString, Object paramObject) {
    return "_ldl".equals(paramString) ? a(r(paramString), paramObject, true) : a(r(paramString), paramObject, false);
  }
  
  public int e(String paramString) {
    if (b("user property", paramString)) {
      if (!a("user property", egl.a, paramString))
        return 15; 
      if (a("user property", w().z(), paramString))
        return 0; 
    } 
    return 6;
  }
  
  public int f(String paramString) {
    if (a("event param", paramString)) {
      if (!a("event param", (Map<String, String>)null, paramString))
        return 14; 
      if (a("event param", w().A(), paramString))
        return 0; 
    } 
    return 3;
  }
  
  public int g(String paramString) {
    if (b("event param", paramString)) {
      if (!a("event param", (Map<String, String>)null, paramString))
        return 14; 
      if (a("event param", w().A(), paramString))
        return 0; 
    } 
    return 3;
  }
  
  public boolean h(String paramString) {
    if (TextUtils.isEmpty(paramString)) {
      u().x().a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
      return false;
    } 
    if (!i(paramString)) {
      u().x().a("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", paramString);
      return false;
    } 
    return true;
  }
  
  boolean i(String paramString) {
    csp.a(paramString);
    return paramString.matches("^1:\\d+:android:[a-f0-9]+$");
  }
  
  @WorkerThread
  public boolean k(String paramString) {
    e();
    if (dgl.b(n()).a(paramString) == 0)
      return true; 
    u().C().a("Permission not granted", paramString);
    return false;
  }
  
  public boolean m(String paramString) {
    if (TextUtils.isEmpty(paramString))
      return false; 
    String str = w().au();
    w().V();
    return str.equals(paramString);
  }
  
  boolean o(String paramString) {
    return "1".equals(r().a(paramString, "measurement.upload.blacklist_internal"));
  }
  
  boolean p(String paramString) {
    return "1".equals(r().a(paramString, "measurement.upload.blacklist_public"));
  }
  
  @WorkerThread
  boolean q(String paramString) {
    boolean bool = true;
    csp.a(paramString);
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            bool = false;
            break;
          case 0:
          case 1:
          case 2:
            break;
        } 
        return bool;
      case 94660:
        if (paramString.equals("_in"))
          b = 0; 
      case 95027:
        if (paramString.equals("_ui"))
          b = 1; 
      case 95025:
        break;
    } 
    if (paramString.equals("_ug"))
      b = 2; 
  }
  
  public long x() {
    if (this.a.get() == 0L)
      synchronized (this.a) {
        long l1 = (new Random(System.nanoTime() ^ m().a())).nextLong();
        int i = this.b + 1;
        this.b = i;
        long l2 = i;
        return l1 + l2;
      }  
    synchronized (this.a) {
      this.a.compareAndSet(-1L, 1L);
      return this.a.getAndIncrement();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dou.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */