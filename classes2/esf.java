import android.annotation.TargetApi;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public final class esf {
  private static final String a = "CameraConfiguration";
  
  private static final Pattern b = Pattern.compile(";");
  
  private static final float c = 1.5F;
  
  private static final float d = 0.0F;
  
  private static final int e = 10;
  
  private static final int f = 20;
  
  private static final int g = 400;
  
  public static String a(CharSequence paramCharSequence) {
    StringBuilder stringBuilder = new StringBuilder(1000);
    stringBuilder.append("BOARD=").append(Build.BOARD).append('\n');
    stringBuilder.append("BRAND=").append(Build.BRAND).append('\n');
    stringBuilder.append("CPU_ABI=").append(Build.CPU_ABI).append('\n');
    stringBuilder.append("DEVICE=").append(Build.DEVICE).append('\n');
    stringBuilder.append("DISPLAY=").append(Build.DISPLAY).append('\n');
    stringBuilder.append("FINGERPRINT=").append(Build.FINGERPRINT).append('\n');
    stringBuilder.append("HOST=").append(Build.HOST).append('\n');
    stringBuilder.append("ID=").append(Build.ID).append('\n');
    stringBuilder.append("MANUFACTURER=").append(Build.MANUFACTURER).append('\n');
    stringBuilder.append("MODEL=").append(Build.MODEL).append('\n');
    stringBuilder.append("PRODUCT=").append(Build.PRODUCT).append('\n');
    stringBuilder.append("TAGS=").append(Build.TAGS).append('\n');
    stringBuilder.append("TIME=").append(Build.TIME).append('\n');
    stringBuilder.append("TYPE=").append(Build.TYPE).append('\n');
    stringBuilder.append("USER=").append(Build.USER).append('\n');
    stringBuilder.append("VERSION.CODENAME=").append(Build.VERSION.CODENAME).append('\n');
    stringBuilder.append("VERSION.INCREMENTAL=").append(Build.VERSION.INCREMENTAL).append('\n');
    stringBuilder.append("VERSION.RELEASE=").append(Build.VERSION.RELEASE).append('\n');
    stringBuilder.append("VERSION.SDK_INT=").append(Build.VERSION.SDK_INT).append('\n');
    if (paramCharSequence != null) {
      String[] arrayOfString = b.split(paramCharSequence);
      Arrays.sort((Object[])arrayOfString);
      int j = arrayOfString.length;
      for (int i = 0; i < j; i++)
        stringBuilder.append(arrayOfString[i]).append('\n'); 
    } 
    return stringBuilder.toString();
  }
  
  @TargetApi(15)
  private static String a(Iterable<Camera.Area> paramIterable) {
    if (paramIterable == null)
      return null; 
    StringBuilder stringBuilder = new StringBuilder();
    for (Camera.Area area : paramIterable)
      stringBuilder.append(area.rect).append(':').append(area.weight).append(' '); 
    return stringBuilder.toString();
  }
  
  private static String a(String paramString, Collection<String> paramCollection, String... paramVarArgs) {
    Log.i("CameraConfiguration", "Requesting " + paramString + " value from among: " + Arrays.toString((Object[])paramVarArgs));
    Log.i("CameraConfiguration", "Supported " + paramString + " values: " + paramCollection);
    if (paramCollection != null) {
      int j = paramVarArgs.length;
      for (int i = 0; i < j; i++) {
        String str = paramVarArgs[i];
        if (paramCollection.contains(str)) {
          Log.i("CameraConfiguration", "Can set " + paramString + " to: " + str);
          return str;
        } 
      } 
    } 
    Log.i("CameraConfiguration", "No supported values match");
    return null;
  }
  
  private static String a(Collection<int[]> paramCollection) {
    if (paramCollection == null || paramCollection.isEmpty())
      return "[]"; 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append('[');
    Iterator<int> iterator = paramCollection.iterator();
    while (iterator.hasNext()) {
      stringBuilder.append(Arrays.toString((int[])iterator.next()));
      if (iterator.hasNext())
        stringBuilder.append(", "); 
    } 
    stringBuilder.append(']');
    return stringBuilder.toString();
  }
  
  @TargetApi(15)
  private static List<Camera.Area> a(int paramInt) {
    return Collections.singletonList(new Camera.Area(new Rect(-paramInt, -paramInt, paramInt, paramInt), 1));
  }
  
  public static void a(Camera.Parameters paramParameters) {
    a(paramParameters, 10, 20);
  }
  
  public static void a(Camera.Parameters paramParameters, double paramDouble) {
    if (paramParameters.isZoomSupported()) {
      Integer integer = b(paramParameters, paramDouble);
      if (integer == null)
        return; 
      if (paramParameters.getZoom() == integer.intValue()) {
        Log.i("CameraConfiguration", "Zoom is already set to " + integer);
        return;
      } 
      Log.i("CameraConfiguration", "Setting zoom to " + integer);
      paramParameters.setZoom(integer.intValue());
      return;
    } 
    Log.i("CameraConfiguration", "Zoom is not supported");
  }
  
  public static void a(Camera.Parameters paramParameters, int paramInt1, int paramInt2) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getSupportedPreviewFpsRange : ()Ljava/util/List;
    //   4: astore #5
    //   6: ldc 'CameraConfiguration'
    //   8: new java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial <init> : ()V
    //   15: ldc_w 'Supported FPS ranges: '
    //   18: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: aload #5
    //   23: invokestatic a : (Ljava/util/Collection;)Ljava/lang/String;
    //   26: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: invokevirtual toString : ()Ljava/lang/String;
    //   32: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   35: pop
    //   36: aload #5
    //   38: ifnull -> 126
    //   41: aload #5
    //   43: invokeinterface isEmpty : ()Z
    //   48: ifne -> 126
    //   51: aload #5
    //   53: invokeinterface iterator : ()Ljava/util/Iterator;
    //   58: astore #6
    //   60: aload #6
    //   62: invokeinterface hasNext : ()Z
    //   67: ifeq -> 222
    //   70: aload #6
    //   72: invokeinterface next : ()Ljava/lang/Object;
    //   77: checkcast [I
    //   80: astore #5
    //   82: aload #5
    //   84: iconst_0
    //   85: iaload
    //   86: istore_3
    //   87: aload #5
    //   89: iconst_1
    //   90: iaload
    //   91: istore #4
    //   93: iload_3
    //   94: iload_1
    //   95: sipush #1000
    //   98: imul
    //   99: if_icmplt -> 60
    //   102: iload #4
    //   104: iload_2
    //   105: sipush #1000
    //   108: imul
    //   109: if_icmpgt -> 60
    //   112: aload #5
    //   114: ifnonnull -> 127
    //   117: ldc 'CameraConfiguration'
    //   119: ldc_w 'No suitable FPS range?'
    //   122: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   125: pop
    //   126: return
    //   127: iconst_2
    //   128: newarray int
    //   130: astore #6
    //   132: aload_0
    //   133: aload #6
    //   135: invokevirtual getPreviewFpsRange : ([I)V
    //   138: aload #6
    //   140: aload #5
    //   142: invokestatic equals : ([I[I)Z
    //   145: ifeq -> 179
    //   148: ldc 'CameraConfiguration'
    //   150: new java/lang/StringBuilder
    //   153: dup
    //   154: invokespecial <init> : ()V
    //   157: ldc_w 'FPS range already set to '
    //   160: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: aload #5
    //   165: invokestatic toString : ([I)Ljava/lang/String;
    //   168: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: invokevirtual toString : ()Ljava/lang/String;
    //   174: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   177: pop
    //   178: return
    //   179: ldc 'CameraConfiguration'
    //   181: new java/lang/StringBuilder
    //   184: dup
    //   185: invokespecial <init> : ()V
    //   188: ldc_w 'Setting FPS range to '
    //   191: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: aload #5
    //   196: invokestatic toString : ([I)Ljava/lang/String;
    //   199: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: invokevirtual toString : ()Ljava/lang/String;
    //   205: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   208: pop
    //   209: aload_0
    //   210: aload #5
    //   212: iconst_0
    //   213: iaload
    //   214: aload #5
    //   216: iconst_1
    //   217: iaload
    //   218: invokevirtual setPreviewFpsRange : (II)V
    //   221: return
    //   222: aconst_null
    //   223: astore #5
    //   225: goto -> 112
  }
  
  public static void a(Camera.Parameters paramParameters, fem paramfem, boolean paramBoolean) {
    List<String> list = paramParameters.getSupportedFocusModes();
    String str2 = null;
    if (paramBoolean || paramfem == fem.AUTO) {
      str2 = a("focus mode", list, new String[] { "auto" });
    } else if (paramfem == fem.CONTINUOUS) {
      str2 = a("focus mode", list, new String[] { "continuous-picture", "continuous-video", "auto" });
    } else if (paramfem == fem.INFINITY) {
      str2 = a("focus mode", list, new String[] { "infinity" });
    } else if (paramfem == fem.MACRO) {
      str2 = a("focus mode", list, new String[] { "macro" });
    } 
    String str1 = str2;
    if (!paramBoolean) {
      str1 = str2;
      if (str2 == null)
        str1 = a("focus mode", list, new String[] { "macro", "edof" }); 
    } 
    if (str1 != null) {
      if (str1.equals(paramParameters.getFocusMode())) {
        Log.i("CameraConfiguration", "Focus mode already set to " + str1);
        return;
      } 
    } else {
      return;
    } 
    paramParameters.setFocusMode(str1);
  }
  
  public static void a(Camera.Parameters paramParameters, boolean paramBoolean) {
    String str;
    List<String> list = paramParameters.getSupportedFlashModes();
    if (paramBoolean) {
      str = a("flash mode", list, new String[] { "torch", "on" });
    } else {
      str = a("flash mode", (Collection<String>)str, new String[] { "off" });
    } 
    if (str != null) {
      if (str.equals(paramParameters.getFlashMode())) {
        Log.i("CameraConfiguration", "Flash mode already set to " + str);
        return;
      } 
    } else {
      return;
    } 
    Log.i("CameraConfiguration", "Setting flash mode to " + str);
    paramParameters.setFlashMode(str);
  }
  
  private static Integer b(Camera.Parameters paramParameters, double paramDouble) {
    List<Integer> list = paramParameters.getZoomRatios();
    Log.i("CameraConfiguration", "Zoom ratios: " + list);
    int i = paramParameters.getMaxZoom();
    if (list == null || list.isEmpty() || list.size() != i + 1) {
      Log.w("CameraConfiguration", "Invalid zoom ratios!");
      return null;
    } 
    double d = Double.POSITIVE_INFINITY;
    int j = 0;
    i = 0;
    while (i < list.size()) {
      double d2 = Math.abs(((Integer)list.get(i)).intValue() - 100.0D * paramDouble);
      double d1 = d;
      if (d2 < d) {
        j = i;
        d1 = d2;
      } 
      i++;
      d = d1;
    } 
    Log.i("CameraConfiguration", "Chose zoom ratio of " + (((Integer)list.get(j)).intValue() / 100.0D));
    return Integer.valueOf(j);
  }
  
  @TargetApi(15)
  public static void b(Camera.Parameters paramParameters) {
    if (paramParameters.getMaxNumFocusAreas() > 0) {
      Log.i("CameraConfiguration", "Old focus areas: " + a(paramParameters.getFocusAreas()));
      List<Camera.Area> list = a(400);
      Log.i("CameraConfiguration", "Setting focus area to : " + a(list));
      paramParameters.setFocusAreas(list);
      return;
    } 
    Log.i("CameraConfiguration", "Device does not support focus areas");
  }
  
  public static void b(Camera.Parameters paramParameters, boolean paramBoolean) {
    float f1 = 0.0F;
    int i = paramParameters.getMinExposureCompensation();
    int j = paramParameters.getMaxExposureCompensation();
    float f2 = paramParameters.getExposureCompensationStep();
    if ((i != 0 || j != 0) && f2 > 0.0F) {
      if (!paramBoolean)
        f1 = 1.5F; 
      int k = Math.round(f1 / f2);
      f1 = f2 * k;
      i = Math.max(Math.min(k, j), i);
      if (paramParameters.getExposureCompensation() == i) {
        Log.i("CameraConfiguration", "Exposure compensation already set to " + i + " / " + f1);
        return;
      } 
      Log.i("CameraConfiguration", "Setting exposure compensation to " + i + " / " + f1);
      paramParameters.setExposureCompensation(i);
      return;
    } 
    Log.i("CameraConfiguration", "Camera does not support exposure compensation");
  }
  
  @TargetApi(15)
  public static void c(Camera.Parameters paramParameters) {
    if (paramParameters.getMaxNumMeteringAreas() > 0) {
      Log.i("CameraConfiguration", "Old metering areas: " + paramParameters.getMeteringAreas());
      List<Camera.Area> list = a(400);
      Log.i("CameraConfiguration", "Setting metering area to : " + a(list));
      paramParameters.setMeteringAreas(list);
      return;
    } 
    Log.i("CameraConfiguration", "Device does not support metering areas");
  }
  
  @TargetApi(15)
  public static void d(Camera.Parameters paramParameters) {
    if (paramParameters.isVideoStabilizationSupported()) {
      if (paramParameters.getVideoStabilization()) {
        Log.i("CameraConfiguration", "Video stabilization already enabled");
        return;
      } 
      Log.i("CameraConfiguration", "Enabling video stabilization...");
      paramParameters.setVideoStabilization(true);
      return;
    } 
    Log.i("CameraConfiguration", "This device does not support video stabilization");
  }
  
  public static void e(Camera.Parameters paramParameters) {
    if ("barcode".equals(paramParameters.getSceneMode())) {
      Log.i("CameraConfiguration", "Barcode scene mode already set");
      return;
    } 
    String str = a("scene mode", paramParameters.getSupportedSceneModes(), new String[] { "barcode" });
    if (str != null) {
      paramParameters.setSceneMode(str);
      return;
    } 
  }
  
  public static void f(Camera.Parameters paramParameters) {
    if ("negative".equals(paramParameters.getColorEffect())) {
      Log.i("CameraConfiguration", "Negative effect already set");
      return;
    } 
    String str = a("color effect", paramParameters.getSupportedColorEffects(), new String[] { "negative" });
    if (str != null) {
      paramParameters.setColorEffect(str);
      return;
    } 
  }
  
  public static String g(Camera.Parameters paramParameters) {
    return a(paramParameters.flatten());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */