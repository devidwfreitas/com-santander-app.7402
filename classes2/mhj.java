import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.design.widget.Snackbar;
import android.support.design.widget.TextInputEditText;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import com.santander.app.seguros.utils.CustomTypefaceSpan;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.Normalizer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.InputMismatchException;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.FileUtils;

public class mhj {
  public static final String a = "dd/MM/yyyy";
  
  public static final String b = "print.jpg";
  
  private static final String c = "##,###,###,##0.00";
  
  public static Double A(String paramString) {
    try {
      return Double.valueOf(paramString);
    } catch (Exception exception) {
      exception.printStackTrace();
      return null;
    } 
  }
  
  public static Integer B(String paramString) {
    try {
      return Integer.valueOf(paramString);
    } catch (Exception exception) {
      exception.printStackTrace();
      return null;
    } 
  }
  
  public static Float C(String paramString) {
    try {
      return Float.valueOf(paramString);
    } catch (Exception exception) {
      exception.printStackTrace();
      return null;
    } 
  }
  
  public static boolean D(String paramString) {
    Charset charset = Charset.forName("US-ASCII");
    return !(new String(paramString.getBytes(charset), charset)).equals(paramString);
  }
  
  public static int E(String paramString) {
    try {
      return Integer.parseInt(paramString);
    } catch (Exception exception) {
      exception.printStackTrace();
      return -1;
    } 
  }
  
  public static String F(String paramString) {
    try {
      byte[] arrayOfByte = paramString.getBytes("ISO-8859-1");
      return !b(arrayOfByte) ? paramString : new String(arrayOfByte, "UTF-8");
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      unsupportedEncodingException.printStackTrace();
      return paramString;
    } 
  }
  
  public static String G(String paramString) {
    try {
      String str = paramString.substring(0, paramString.length() - 2);
      paramString = paramString.substring(paramString.length() - 2, paramString.length());
      return str + "." + paramString;
    } catch (Exception exception) {
      exception.printStackTrace();
      return "0";
    } 
  }
  
  public static kqn H(String paramString) {
    kqn kqn = null;
    for (kqn kqn1 : kqn.values()) {
      if (kqn1.getCode().equals(paramString))
        kqn = kqn1; 
    } 
    return kqn;
  }
  
  public static String I(String paramString) {
    paramString = paramString.toLowerCase();
    StringBuilder stringBuilder = new StringBuilder(paramString.length());
    int i = 0;
    for (boolean bool = true; i < paramString.length(); bool = bool1) {
      char c;
      boolean bool1;
      char c1 = paramString.charAt(i);
      if (c1 == '.' || c1 == '?' || c1 == '!' || c1 == ';') {
        bool1 = true;
        c = c1;
      } else {
        bool1 = bool;
        c = c1;
        if (bool) {
          bool1 = bool;
          c = c1;
          if (Character.isAlphabetic(c1)) {
            c = Character.toUpperCase(c1);
            bool1 = false;
          } 
        } 
      } 
      stringBuilder.append(c);
      i++;
    } 
    return stringBuilder.toString();
  }
  
  public static int J(String paramString) {
    int i = -1;
    if (mgt.e(paramString))
      return 2131297019; 
    switch (mzr.d()) {
      default:
        if (mgt.a(paramString))
          return 2131297020; 
        break;
      case 3:
        return mgt.a(paramString) ? 2131297021 : (mgt.b(paramString) ? 2131297017 : (mgt.d(paramString) ? 2131297024 : i));
      case 2:
        return mgt.a(paramString) ? 2131297022 : (mgt.b(paramString) ? 2131297018 : (mgt.d(paramString) ? 2131297025 : i));
      case 5:
        return mgt.a(paramString) ? 2131297022 : (mgt.b(paramString) ? 2131297018 : (mgt.d(paramString) ? 2131297025 : i));
    } 
    return mgt.b(paramString) ? 2131297016 : (mgt.d(paramString) ? 2131297023 : i);
  }
  
  public static float a(Context paramContext, float paramFloat) {
    return paramFloat / (paramContext.getResources().getDisplayMetrics()).scaledDensity;
  }
  
  public static int a(int paramInt, Context paramContext) {
    DisplayMetrics displayMetrics = paramContext.getResources().getDisplayMetrics();
    float f = paramInt;
    return (int)((displayMetrics.density * f) + 0.5D);
  }
  
  public static int a(Date paramDate1, Date paramDate2) {
    if (paramDate1.after(paramDate2))
      return 0; 
    long l = paramDate1.getTime();
    return (int)((paramDate2.getTime() - l) / 86400000L) + 1;
  }
  
  public static Dialog a(grs paramgrs) {
    return mxn.b((Activity)paramgrs);
  }
  
  public static Bitmap a(Bitmap paramBitmap, float paramFloat) {
    Matrix matrix = new Matrix();
    matrix.postRotate(paramFloat);
    return Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), matrix, true);
  }
  
  public static Bitmap a(Bitmap paramBitmap, float paramFloat, int paramInt1, int paramInt2) {
    Matrix matrix = new Matrix();
    matrix.postRotate(paramFloat);
    paramBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), matrix, true);
    return (paramBitmap.getWidth() >= paramBitmap.getHeight()) ? Bitmap.createBitmap(paramBitmap, paramInt1 / 2 - paramInt2 / 2, 0, paramInt1, paramInt2) : Bitmap.createBitmap(paramBitmap, 0, paramInt1 / 2 - paramInt2 / 2, paramInt1, paramInt2);
  }
  
  public static Bitmap a(Drawable paramDrawable) {
    return ((BitmapDrawable)paramDrawable).getBitmap();
  }
  
  public static Bitmap a(grs paramgrs, Uri paramUri) {
    Bitmap bitmap;
    BitmapFactory.Options options;
    try {
      InputStream inputStream1 = paramgrs.getContentResolver().openInputStream(paramUri);
      options = new BitmapFactory.Options();
      options.inJustDecodeBounds = true;
      BitmapFactory.decodeStream(inputStream1, null, options);
      if (inputStream1 != null)
        inputStream1.close(); 
    } catch (IOException iOException) {
      Log.e("", iOException.getMessage(), iOException);
      return null;
    } 
    int i;
    for (i = 1; (options.outWidth * options.outHeight) * 1.0D / Math.pow(i, 2.0D) > 1200000.0D; i++);
    InputStream inputStream = iOException.getContentResolver().openInputStream(paramUri);
    if (i > 1) {
      BitmapFactory.Options options1 = new BitmapFactory.Options();
      options1.inSampleSize = i - 1;
      Bitmap bitmap1 = BitmapFactory.decodeStream(inputStream, null, options1);
      i = bitmap1.getHeight();
      int j = bitmap1.getWidth();
      double d1 = Math.sqrt(1200000.0D / j / i);
      double d2 = d1 / i;
      bitmap = Bitmap.createScaledBitmap(bitmap1, (int)(j * d2), (int)d1, true);
      bitmap1.recycle();
      System.gc();
    } else {
      bitmap = BitmapFactory.decodeStream(inputStream);
    } 
    if (inputStream != null) {
      inputStream.close();
      return bitmap;
    } 
    return bitmap;
  }
  
  public static Bitmap a(grs paramgrs, Uri paramUri, File paramFile) {
    try {
      switch ((new ExifInterface(paramFile.getPath())).getAttributeInt("Orientation", 0)) {
        case 6:
          return a(a(paramgrs, paramUri), 90.0F);
        case 3:
          return a(a(paramgrs, paramUri), 180.0F);
        case 8:
          return a(a(paramgrs, paramUri), 270.0F);
        case 1:
          return a(paramgrs, paramUri);
      } 
      return a(paramgrs, paramUri);
    } catch (Exception exception) {
      exception.printStackTrace();
      return a(paramgrs, paramUri);
    } 
  }
  
  public static Typeface a(Context paramContext, int paramInt) {
    switch (paramInt) {
      default:
        return Typeface.createFromAsset(paramContext.getAssets(), "fonts/opensans_regular.ttf");
      case 1:
        return Typeface.createFromAsset(paramContext.getAssets(), "fonts/opensans_bold.ttf");
      case 2:
        return Typeface.createFromAsset(paramContext.getAssets(), "fonts/opensans_italic.ttf");
      case 3:
        return Typeface.createFromAsset(paramContext.getAssets(), "fonts/opensans_bolditalic.ttf");
      case 0:
        break;
    } 
    return Typeface.createFromAsset(paramContext.getAssets(), "fonts/opensans_light.ttf");
  }
  
  public static Snackbar a(View paramView, String paramString1, int paramInt, String paramString2, View.OnClickListener paramOnClickListener) {
    Snackbar snackbar = Snackbar.make(paramView, paramString1, paramInt).setAction(paramString2, paramOnClickListener);
    if (paramView != null) {
      snackbar.getView().setBackgroundColor(-65536);
      snackbar.setActionTextColor(-1);
      snackbar.show();
    } 
    return snackbar;
  }
  
  public static Spannable a(Context paramContext, @ColorInt Integer paramInteger, String paramString, String... paramVarArgs) {
    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(paramString);
    int j = paramVarArgs.length;
    int i;
    for (i = 0; i < j; i++) {
      String str = paramVarArgs[i];
      if (paramString.toLowerCase().contains(str.toLowerCase())) {
        int k = paramString.toLowerCase().indexOf(str.toLowerCase());
        int m = str.length() + k;
        spannableStringBuilder.setSpan(new StyleSpan(1), k, m, 33);
        if (paramInteger != null && paramInteger.intValue() != 0)
          spannableStringBuilder.setSpan(new ForegroundColorSpan(paramInteger.intValue()), k, m, 33); 
      } 
    } 
    return (Spannable)spannableStringBuilder;
  }
  
  public static Spannable a(Context paramContext, String paramString1, @ColorInt Integer paramInteger, String paramString2, String... paramVarArgs) {
    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(paramString2);
    int j = paramVarArgs.length;
    int i;
    for (i = 0; i < j; i++) {
      String str = paramVarArgs[i];
      if (paramString2.toLowerCase().contains(str.toLowerCase())) {
        int k = paramString2.toLowerCase().indexOf(str.toLowerCase());
        int m = str.length() + k;
        spannableStringBuilder.setSpan(new CustomTypefaceSpan("", Typeface.createFromAsset(paramContext.getAssets(), paramString1)), k, m, 0);
        if (paramInteger != null && paramInteger.intValue() != 0)
          spannableStringBuilder.setSpan(new ForegroundColorSpan(paramInteger.intValue()), k, m, 33); 
      } 
    } 
    return (Spannable)spannableStringBuilder;
  }
  
  public static File a(View paramView, Context paramContext) {
    try {
      paramView.setDrawingCacheEnabled(true);
      Bitmap bitmap = Bitmap.createBitmap(paramView.getDrawingCache());
      paramView.setDrawingCacheEnabled(false);
      b(paramContext);
      File file = new File(paramContext.getExternalCacheDir(), "print.jpg");
      try {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
        fileOutputStream.flush();
        fileOutputStream.close();
        return file;
      } catch (Throwable null) {}
    } catch (Throwable throwable) {
      paramView = null;
    } 
    throwable.printStackTrace();
    if (paramView != null)
      paramView.delete(); 
    return null;
  }
  
  public static String a() {
    return "-";
  }
  
  public static String a(Context paramContext, String paramString) {
    try {
      InputStream inputStream = paramContext.getAssets().open(paramString);
      byte[] arrayOfByte = new byte[inputStream.available()];
      inputStream.read(arrayOfByte);
      inputStream.close();
      return new String(arrayOfByte, "UTF-8");
    } catch (IOException iOException) {
      iOException.printStackTrace();
      return null;
    } 
  }
  
  public static String a(Bitmap paramBitmap) {
    if (paramBitmap == null)
      return null; 
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
    return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
  }
  
  public static String a(grs paramgrs, is paramis) {
    String str;
    if (paramis != null && paramis.a() != null) {
      str = String.valueOf(paramis.a());
    } else {
      str = "0";
    } 
    Log.e("ERROR_SERVICE", str);
    return (paramis != null && !TextUtils.isEmpty(paramis.b())) ? paramis.b() : paramgrs.getResources().getString(2131297122);
  }
  
  public static String a(Double paramDouble) {
    return a(paramDouble, new Locale("pt", "BR"));
  }
  
  public static String a(Double paramDouble, Locale paramLocale) {
    String str = Currency.getInstance(paramLocale).getSymbol();
    return (paramDouble == null) ? a() : ((paramDouble.doubleValue() < 0.0D) ? ("-" + str + " " + b(Double.valueOf(-paramDouble.doubleValue()), paramLocale)) : (str + " " + b(paramDouble, paramLocale)));
  }
  
  public static String a(Float paramFloat) {
    return a(paramFloat, new Locale("pt", "BR"));
  }
  
  public static String a(Float paramFloat, Locale paramLocale) {
    String str = Currency.getInstance(paramLocale).getSymbol();
    return (paramFloat == null) ? a() : ((paramFloat.floatValue() < 0.0F) ? ("-" + str + " " + b(Float.valueOf(-paramFloat.floatValue()), paramLocale)) : (str + " " + b(paramFloat, paramLocale)));
  }
  
  public static String a(String paramString) {
    try {
      if (!TextUtils.isEmpty(paramString))
        return a(Double.valueOf(paramString.replace("R$", "").replaceAll(" ", "").replace(",", "."))); 
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    return "";
  }
  
  public static String a(String paramString, char paramChar, int paramInt) {
    StringBuilder stringBuilder = new StringBuilder(paramString);
    for (paramInt -= stringBuilder.length(); paramInt > 0; paramInt--)
      stringBuilder.insert(0, paramChar); 
    return stringBuilder.toString();
  }
  
  public static String a(String paramString, int paramInt) {
    paramString = paramString.trim();
    StringBuffer stringBuffer = new StringBuffer();
    int j = paramString.length();
    for (int i = 0; i < paramInt - j; i++)
      stringBuffer.append('0'); 
    return paramString + stringBuffer;
  }
  
  public static String a(String paramString1, String paramString2, String paramString3) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(paramString2);
    try {
      Date date = simpleDateFormat.parse(paramString1);
      return (new SimpleDateFormat(paramString3)).format(date);
    } catch (ParseException parseException) {
      return "";
    } 
  }
  
  public static String a(String paramString, String... paramVarArgs) {
    if (!TextUtils.isEmpty(paramString)) {
      StringBuilder stringBuilder = new StringBuilder();
      String[] arrayOfString = paramString.split("\\s+");
      for (int i = 0; i < arrayOfString.length; i++) {
        byte b;
        paramString = arrayOfString[i];
        if (Arrays.<String>asList(paramVarArgs).contains(paramString.toUpperCase())) {
          stringBuilder.append(paramString.toUpperCase());
        } else {
          String str = paramString.substring(0, 1).toUpperCase();
          if (paramString.length() > 1) {
            paramString = paramString.substring(1).toLowerCase();
          } else {
            paramString = "";
          } 
          stringBuilder.append(str.concat(paramString));
        } 
        if (arrayOfString.length > 0) {
          b = arrayOfString.length - 1;
        } else {
          b = 0;
        } 
        if (i < b)
          stringBuilder.append(" "); 
      } 
      return stringBuilder.toString();
    } 
    return "";
  }
  
  public static String a(Date paramDate) {
    return a(paramDate, "dd/MM/yyyy");
  }
  
  public static String a(Date paramDate, String paramString) {
    if (paramDate != null)
      try {
        return (new SimpleDateFormat(paramString, new Locale("pt", "BR"))).format(paramDate);
      } catch (Exception exception) {
        exception.printStackTrace();
      }  
    return "";
  }
  
  public static String a(byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte != null)
      try {
        return Base64.encodeToString(paramArrayOfbyte, 2);
      } catch (OutOfMemoryError outOfMemoryError) {
        outOfMemoryError.printStackTrace();
      }  
    return null;
  }
  
  public static String a(String... paramVarArgs) {
    String str = "";
    for (int i = 0; i < paramVarArgs.length; i++) {
      String str1 = str + paramVarArgs[i];
      str = str1;
      if (i < paramVarArgs.length - 1)
        str = str1 + ";"; 
    } 
    return str;
  }
  
  public static Date a(String paramString1, String paramString2) {
    try {
      if (!TextUtils.isEmpty(paramString1))
        return (new SimpleDateFormat(paramString2, new Locale("pt", "BR"))).parse(paramString1); 
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    return null;
  }
  
  @TargetApi(21)
  public static void a(@ColorRes int paramInt, Activity paramActivity) {
    if (Build.VERSION.SDK_INT >= 21)
      paramActivity.getWindow().setNavigationBarColor(paramActivity.getResources().getColor(paramInt)); 
  }
  
  @TargetApi(21)
  public static void a(int paramInt, String paramString, Activity paramActivity) {
    paramActivity.setTaskDescription(new ActivityManager.TaskDescription(paramString, null, paramActivity.getResources().getColor(paramInt)));
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2) {
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130969210);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button2 = (Button)dialog.findViewById(2131755738);
    Button button1 = (Button)dialog.findViewById(2131758433);
    button2.setText("Confirmar");
    mhq mhq = new mhq(dialog, paramString2, paramActivity);
    button1.setText("Cancelar");
    mxn.a(paramActivity, dialog, "Atenção", paramString1, mhq, new mhr(dialog));
  }
  
  public static void a(Context paramContext, Uri paramUri, String paramString) {
    Intent intent = new Intent();
    intent.setAction("android.intent.action.SEND");
    intent.putExtra("android.intent.extra.STREAM", (Parcelable)paramUri);
    intent.setType("image/jpg");
    paramContext.startActivity(Intent.createChooser(intent, paramString));
  }
  
  public static void a(Context paramContext, View paramView) {
    try {
      ((InputMethodManager)paramContext.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
      return;
    } catch (Exception exception) {
      Log.e("AndroidUtils", "Error occurred trying to hide the keyboard. Exception: " + exception);
      return;
    } 
  }
  
  public static void a(Context paramContext, String paramString, Runnable paramRunnable) {
    if (paramContext != null) {
      AlertDialog alertDialog = (new AlertDialog.Builder(paramContext)).setTitle(null).setMessage(paramString).setCancelable(false).setPositiveButton("OK", new mhm(paramRunnable)).create();
      alertDialog.setOnShowListener(new mhn(alertDialog, paramContext));
      alertDialog.show();
    } 
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3) {
    Intent intent2 = paramContext.getPackageManager().getLaunchIntentForPackage(paramString1);
    Intent intent1 = intent2;
    if (intent2 == null) {
      intent1 = new Intent("android.intent.action.VIEW");
      intent1.setData(Uri.parse("market://details?id=" + paramString1));
    } 
    intent1.addFlags(268435456);
    intent1.addFlags(67141632);
    if (paramString3 != null && paramString2 != null)
      intent1.putExtra(paramString2, paramString3); 
    paramContext.startActivity(intent1);
  }
  
  public static void a(TextInputEditText paramTextInputEditText) {
    if (paramTextInputEditText.getTransformationMethod() == PasswordTransformationMethod.getInstance()) {
      paramTextInputEditText.setTransformationMethod((TransformationMethod)HideReturnsTransformationMethod.getInstance());
    } else {
      paramTextInputEditText.setTransformationMethod((TransformationMethod)PasswordTransformationMethod.getInstance());
    } 
    paramTextInputEditText.setSelection(paramTextInputEditText.getText().length());
  }
  
  public static void a(FragmentActivity paramFragmentActivity, String paramString) {
    f((Context)paramFragmentActivity, paramString);
  }
  
  public static void a(AppCompatActivity paramAppCompatActivity, File paramFile) {
    Intent intent = new Intent("android.intent.action.VIEW");
    intent.setDataAndType(Uri.fromFile(paramFile), "application/pdf");
    intent.setFlags(1140883456);
    paramAppCompatActivity.startActivity(intent);
  }
  
  public static void a(View paramView) {
    a(paramView, (Animation.AnimationListener)null);
  }
  
  public static void a(View paramView, Animation.AnimationListener paramAnimationListener) {
    paramView.measure(-1, -2);
    int i = paramView.getMeasuredHeight();
    (paramView.getLayoutParams()).height = 0;
    paramView.setVisibility(0);
    mho mho = new mho(paramView, i);
    mho.setDuration(((int)(i / (paramView.getContext().getResources().getDisplayMetrics()).density) + 100));
    if (paramAnimationListener != null)
      mho.setAnimationListener(paramAnimationListener); 
    paramView.startAnimation(mho);
  }
  
  public static void a(grs paramgrs, File paramFile) {
    Intent intent = new Intent("android.intent.action.VIEW");
    intent.setDataAndType(Uri.fromFile(paramFile), "application/pdf");
    intent.setFlags(1140883456);
    paramgrs.startActivity(intent);
  }
  
  public static void a(String paramString, Context paramContext) {
    Intent intent = new Intent("android.intent.action.SEND");
    intent.setType("text/plain");
    intent.putExtra("android.intent.extra.TEXT", paramString);
    paramContext.startActivity(intent);
  }
  
  public static boolean a(Context paramContext) {
    AppOpsManager appOpsManager = (AppOpsManager)paramContext.getSystemService("appops");
    ApplicationInfo applicationInfo = paramContext.getApplicationInfo();
    String str = paramContext.getApplicationContext().getPackageName();
    int i = applicationInfo.uid;
    try {
      Class<?> clazz = Class.forName(AppOpsManager.class.getName());
      i = ((Integer)clazz.getMethod("checkOpNoThrow", new Class[] { int.class, int.class, String.class }).invoke(appOpsManager, new Object[] { Integer.valueOf(((Integer)clazz.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), str })).intValue();
      return (i == 0);
    } catch (ClassNotFoundException classNotFoundException) {
      classNotFoundException.printStackTrace();
    } catch (NoSuchMethodException noSuchMethodException) {
      noSuchMethodException.printStackTrace();
    } catch (NoSuchFieldException noSuchFieldException) {
      noSuchFieldException.printStackTrace();
    } catch (InvocationTargetException invocationTargetException) {
      invocationTargetException.printStackTrace();
    } catch (IllegalAccessException illegalAccessException) {
      illegalAccessException.printStackTrace();
    } 
    return false;
  }
  
  public static byte[] a(File paramFile) {
    try {
      return FileUtils.readFileToByteArray(paramFile);
    } catch (IOException iOException) {
      iOException.printStackTrace();
      return null;
    } 
  }
  
  public static float b(Context paramContext, float paramFloat) {
    return paramFloat / (paramContext.getResources().getDisplayMetrics()).density;
  }
  
  public static float b(File paramFile) {
    return (paramFile != null && paramFile.length() > 0L) ? ((float)paramFile.length() / 1024.0F / 1024.0F) : 0.0F;
  }
  
  public static Drawable b(Bitmap paramBitmap) {
    return (Drawable)new BitmapDrawable(paramBitmap);
  }
  
  public static String b() {
    return UUID.randomUUID().toString().replaceAll("-", "");
  }
  
  public static String b(Double paramDouble) {
    return a(paramDouble, new Locale("en", "US"));
  }
  
  public static String b(Double paramDouble, Locale paramLocale) {
    DecimalFormat decimalFormat = new DecimalFormat("##,###,###,##0.00", new DecimalFormatSymbols(paramLocale));
    decimalFormat.setMinimumFractionDigits(2);
    decimalFormat.setParseBigDecimal(true);
    return decimalFormat.format(paramDouble);
  }
  
  public static String b(Float paramFloat) {
    return a(paramFloat, new Locale("en", "US"));
  }
  
  public static String b(Float paramFloat, Locale paramLocale) {
    DecimalFormat decimalFormat = new DecimalFormat("##,###,###,##0.00", new DecimalFormatSymbols(paramLocale));
    decimalFormat.setMinimumFractionDigits(2);
    decimalFormat.setParseBigDecimal(true);
    return decimalFormat.format(paramFloat);
  }
  
  public static String b(String paramString) {
    return b(Double.valueOf(paramString.replace("R$", "").replaceAll(" ", "").replace(",", ".")), new Locale("pt", "BR"));
  }
  
  public static void b(Context paramContext) {
    File file = new File(paramContext.getExternalCacheDir(), "print.jpg");
    if (file.exists()) {
      file.delete();
      new File(paramContext.getExternalCacheDir(), "print.jpg");
    } 
  }
  
  public static void b(Context paramContext, View paramView) {
    ((InputMethodManager)paramContext.getSystemService("input_method")).toggleSoftInput(2, 1);
  }
  
  public static void b(View paramView) {
    b(paramView, (Animation.AnimationListener)null);
  }
  
  public static void b(View paramView, Animation.AnimationListener paramAnimationListener) {
    int i = paramView.getMeasuredHeight();
    mhp mhp = new mhp(paramView, i);
    mhp.setDuration(((int)(i / (paramView.getContext().getResources().getDisplayMetrics()).density) + 100));
    if (paramAnimationListener != null)
      mhp.setAnimationListener(paramAnimationListener); 
    paramView.startAnimation(mhp);
  }
  
  public static boolean b(byte[] paramArrayOfbyte) {
    // Byte code:
    //   0: aload_0
    //   1: arraylength
    //   2: iconst_3
    //   3: if_icmplt -> 179
    //   6: aload_0
    //   7: iconst_0
    //   8: baload
    //   9: sipush #255
    //   12: iand
    //   13: sipush #239
    //   16: if_icmpne -> 179
    //   19: aload_0
    //   20: iconst_1
    //   21: baload
    //   22: sipush #255
    //   25: iand
    //   26: sipush #187
    //   29: if_icmpne -> 88
    //   32: iconst_1
    //   33: istore_1
    //   34: aload_0
    //   35: iconst_2
    //   36: baload
    //   37: sipush #255
    //   40: iand
    //   41: sipush #191
    //   44: if_icmpne -> 93
    //   47: iconst_1
    //   48: istore_2
    //   49: iload_1
    //   50: iload_2
    //   51: iand
    //   52: ifeq -> 179
    //   55: iconst_3
    //   56: istore_1
    //   57: aload_0
    //   58: arraylength
    //   59: istore #4
    //   61: iload_1
    //   62: iload #4
    //   64: if_icmpge -> 177
    //   67: aload_0
    //   68: iload_1
    //   69: baload
    //   70: istore_2
    //   71: iload_2
    //   72: sipush #128
    //   75: iand
    //   76: ifne -> 98
    //   79: iload_1
    //   80: istore_3
    //   81: iload_3
    //   82: iconst_1
    //   83: iadd
    //   84: istore_1
    //   85: goto -> 61
    //   88: iconst_0
    //   89: istore_1
    //   90: goto -> 34
    //   93: iconst_0
    //   94: istore_2
    //   95: goto -> 49
    //   98: iload_2
    //   99: sipush #224
    //   102: iand
    //   103: sipush #192
    //   106: if_icmpne -> 141
    //   109: iload_1
    //   110: iconst_1
    //   111: iadd
    //   112: istore_2
    //   113: iload_1
    //   114: istore_3
    //   115: iload_1
    //   116: iload_2
    //   117: if_icmpge -> 81
    //   120: iload_1
    //   121: iconst_1
    //   122: iadd
    //   123: istore_3
    //   124: iload_3
    //   125: istore_1
    //   126: aload_0
    //   127: iload_3
    //   128: baload
    //   129: sipush #192
    //   132: iand
    //   133: sipush #128
    //   136: if_icmpeq -> 113
    //   139: iconst_0
    //   140: ireturn
    //   141: iload_2
    //   142: sipush #240
    //   145: iand
    //   146: sipush #224
    //   149: if_icmpne -> 159
    //   152: iload_1
    //   153: iconst_2
    //   154: iadd
    //   155: istore_2
    //   156: goto -> 113
    //   159: iload_2
    //   160: sipush #248
    //   163: iand
    //   164: sipush #240
    //   167: if_icmpne -> 139
    //   170: iload_1
    //   171: iconst_3
    //   172: iadd
    //   173: istore_2
    //   174: goto -> 113
    //   177: iconst_1
    //   178: ireturn
    //   179: iconst_0
    //   180: istore_1
    //   181: goto -> 57
  }
  
  public static byte[] b(Context paramContext, String paramString) {
    try {
      InputStream inputStream = paramContext.getAssets().open(paramString);
      byte[] arrayOfByte = new byte[inputStream.available()];
      inputStream.read(arrayOfByte);
      inputStream.close();
      return arrayOfByte;
    } catch (IOException iOException) {
      iOException.printStackTrace();
      return null;
    } 
  }
  
  public static float c(Context paramContext, float paramFloat) {
    return (paramContext.getResources().getDisplayMetrics()).density * paramFloat;
  }
  
  public static Bitmap c(View paramView) {
    try {
      paramView.setDrawingCacheEnabled(true);
      Bitmap bitmap = Bitmap.createBitmap(paramView.getDrawingCache());
      paramView.setDrawingCacheEnabled(false);
      return bitmap;
    } catch (Exception exception) {
      exception.printStackTrace();
      return null;
    } 
  }
  
  public static ColorMatrixColorFilter c() {
    ColorMatrix colorMatrix = new ColorMatrix();
    colorMatrix.setSaturation(0.0F);
    return new ColorMatrixColorFilter(colorMatrix);
  }
  
  public static String c(Double paramDouble) {
    return b(paramDouble, new Locale("pt", "BR"));
  }
  
  public static String c(Float paramFloat) {
    return b(paramFloat, new Locale("pt", "BR"));
  }
  
  public static void c(Context paramContext) {
    Intent intent = new Intent(paramContext, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", nat.USUARIO_CONSULTIVO);
    paramContext.startActivity(intent);
  }
  
  public static void c(Context paramContext, String paramString) {
    if (paramContext != null) {
      AlertDialog alertDialog = (new AlertDialog.Builder(paramContext)).setTitle(null).setMessage(paramString).setCancelable(false).setPositiveButton("OK", new mhk()).create();
      alertDialog.setOnShowListener(new mhl(alertDialog, paramContext));
      alertDialog.show();
    } 
  }
  
  public static boolean c(String paramString) {
    boolean bool = false;
    if (Pattern.compile("^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,4}$", 2).matcher(paramString).matches())
      bool = true; 
    return bool;
  }
  
  public static byte[] c(Bitmap paramBitmap) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 50, byteArrayOutputStream);
    return byteArrayOutputStream.toByteArray();
  }
  
  public static byte[] c(File paramFile) {
    try {
      return FileUtils.readFileToByteArray(paramFile);
    } catch (IOException iOException) {
      iOException.printStackTrace();
      return null;
    } 
  }
  
  public static String d(File paramFile) {
    String str = paramFile.getName();
    try {
      return str.substring(str.lastIndexOf(".") + 1);
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public static String d(Double paramDouble) {
    return b(paramDouble, new Locale("en", "US"));
  }
  
  public static String d(Float paramFloat) {
    return b(paramFloat, new Locale("en", "US"));
  }
  
  public static Locale d() {
    return new Locale("pt", "BR");
  }
  
  public static void d(View paramView) {
    paramView.setEnabled(false);
    paramView.setClickable(false);
    paramView.setActivated(false);
  }
  
  public static boolean d(Context paramContext, String paramString) {
    PackageManager packageManager = paramContext.getPackageManager();
    try {
      packageManager.getPackageInfo(paramString, 1);
      return true;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return false;
    } 
  }
  
  public static boolean d(String paramString) {
    byte b = 48;
    if (paramString.equals("00000000000") || paramString.equals("11111111111") || paramString.equals("22222222222") || paramString.equals("33333333333") || paramString.equals("44444444444") || paramString.equals("55555555555") || paramString.equals("66666666666") || paramString.equals("77777777777") || paramString.equals("88888888888") || paramString.equals("99999999999") || paramString.length() != 11)
      return false; 
    int j = 10;
    int i = 0;
    int k = 0;
    while (i < 9) {
      try {
        k += (paramString.charAt(i) - 48) * j;
        j--;
        i++;
      } catch (InputMismatchException inputMismatchException) {
        return false;
      } 
    } 
    i = 11 - k % 11;
    if (i == 10 || i == 11) {
      i = 48;
    } else {
      i = (char)(i + 48);
    } 
    j = 11;
    k = 0;
    int m = 0;
    while (k < 10) {
      m += (inputMismatchException.charAt(k) - 48) * j;
      j--;
      k++;
    } 
    k = 11 - m % 11;
    j = b;
    if (k != 10)
      if (k == 11) {
        j = b;
      } else {
        j = (char)(k + 48);
      }  
    if (i == inputMismatchException.charAt(9)) {
      i = inputMismatchException.charAt(10);
      if (j == i)
        return true; 
    } 
    return false;
  }
  
  public static Bitmap e(File paramFile) {
    return BitmapFactory.decodeFile(paramFile.getPath());
  }
  
  public static String e(Float paramFloat) {
    if (paramFloat != null) {
      if (paramFloat.floatValue() - Math.floor(paramFloat.floatValue()) == 0.0D)
        return paramFloat.intValue() + "%"; 
    } else {
      return "0%";
    } 
    return String.format(new Locale("pt", "BR"), "%.2f%%", new Object[] { paramFloat });
  }
  
  public static String e(String paramString) {
    return paramString.replaceAll("\\.", "").replaceAll("\\-", "");
  }
  
  public static void e(Context paramContext, String paramString) {
    Intent intent = new Intent("android.intent.action.VIEW");
    intent.setData(Uri.parse(paramString));
    paramContext.startActivity(intent);
  }
  
  public static void e(View paramView) {
    paramView.setEnabled(true);
    paramView.setClickable(true);
    paramView.setActivated(true);
  }
  
  public static boolean e() {
    boolean bool = false;
    Date date1 = new Date();
    Calendar calendar1 = Calendar.getInstance();
    calendar1.set(11, 19);
    calendar1.set(12, 30);
    calendar1.set(13, 0);
    calendar1.set(14, 0);
    Date date2 = calendar1.getTime();
    Calendar calendar2 = Calendar.getInstance();
    calendar2.set(11, 7);
    calendar2.set(12, 0);
    calendar2.set(13, 0);
    calendar2.set(14, 0);
    Date date3 = calendar2.getTime();
    if (date1.after(date2) || date1.before(date3))
      bool = true; 
    return bool;
  }
  
  private Bitmap f(File paramFile) {
    int i = 1;
    try {
      BitmapFactory.Options options = new BitmapFactory.Options();
      options.inJustDecodeBounds = true;
      BitmapFactory.decodeStream(new FileInputStream(paramFile), null, options);
      while (options.outWidth / i / 2 >= 70 && options.outHeight / i / 2 >= 70)
        i *= 2; 
      options = new BitmapFactory.Options();
      options.inSampleSize = i;
      BitmapFactory.decodeStream(new FileInputStream(paramFile), null, options);
      return null;
    } catch (FileNotFoundException fileNotFoundException) {
      fileNotFoundException.printStackTrace();
      return null;
    } 
  }
  
  public static String f(String paramString) {
    return paramString.replaceAll("\\(", "").replaceAll("\\)", "").replaceAll("-", "");
  }
  
  public static boolean f(Context paramContext, String paramString) {
    try {
      Intent intent = new Intent("android.intent.action.DIAL");
      intent.setData(Uri.parse("tel:" + paramString));
      paramContext.startActivity(intent);
      return true;
    } catch (Exception exception) {
      return false;
    } 
  }
  
  public static String g(String paramString) {
    if (paramString.contains(" ")) {
      int j = paramString.indexOf(" ");
      return paramString.substring(0, j);
    } 
    int i = paramString.length();
    return paramString.substring(0, i);
  }
  
  public static String h(String paramString) {
    return paramString.contains(" ") ? paramString.substring(paramString.lastIndexOf(" ") + 1) : " ";
  }
  
  public static boolean i(String paramString) {
    return !h(paramString).equals(" ");
  }
  
  public static String j(String paramString) {
    return paramString.replace(".", "").replace("-", "");
  }
  
  public static boolean k(String paramString) {
    boolean bool = false;
    String str = (new StringBuilder()).append(paramString).reverse().toString();
    int[] arrayOfInt = new int[paramString.length()];
    int i;
    for (i = 0; i < arrayOfInt.length; i++)
      arrayOfInt[i] = Integer.parseInt("" + str.charAt(i)); 
    i = 0;
    int j = 0;
    while (i < arrayOfInt.length) {
      if (i % 2 == 1) {
        arrayOfInt[i] = arrayOfInt[i] * 2;
        if (arrayOfInt[i] > 9)
          arrayOfInt[i] = arrayOfInt[i] - 9; 
      } 
      j += arrayOfInt[i];
      i++;
    } 
    if (j % 10 == 0)
      bool = true; 
    return bool;
  }
  
  public static ejm l(String paramString) {
    eju eju = new eju();
    eju.a(Date.class, new mgj(paramString));
    return eju.j();
  }
  
  public static String m(String paramString) {
    return !TextUtils.isEmpty(paramString) ? Normalizer.normalize(paramString, Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "") : "";
  }
  
  public static String n(String paramString) {
    Matcher matcher = Pattern.compile("(\\d{3})(\\d{3})(\\d{3})(\\d{2})").matcher(paramString);
    if (matcher.matches())
      paramString = matcher.replaceAll("$1.$2.$3-$4"); 
    return paramString;
  }
  
  public static Bitmap o(String paramString) {
    if (TextUtils.isEmpty(paramString))
      return null; 
    byte[] arrayOfByte = Base64.decode(paramString.replaceFirst("^data:image/[^;]*;base64,?", ""), 0);
    return BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
  }
  
  public static String p(String paramString) {
    if (!paramString.isEmpty()) {
      StringBuilder stringBuilder = new StringBuilder();
      String[] arrayOfString = paramString.split("\\s+");
      for (int i = 0; i < arrayOfString.length; i++) {
        byte b;
        paramString = arrayOfString[i];
        String str = paramString.substring(0, 1).toUpperCase();
        if (paramString.length() > 1) {
          paramString = paramString.substring(1).toLowerCase();
        } else {
          paramString = "";
        } 
        stringBuilder.append(str.concat(paramString));
        if (arrayOfString.length > 0) {
          b = arrayOfString.length - 1;
        } else {
          b = 0;
        } 
        if (i < b)
          stringBuilder.append(" "); 
      } 
      return stringBuilder.toString();
    } 
    return "";
  }
  
  public static String q(String paramString) {
    return Character.toUpperCase(paramString.charAt(0)) + paramString.substring(1).toLowerCase();
  }
  
  public static String r(String paramString) {
    return a(paramString, new String[] { "SCP", "RD", "AP" });
  }
  
  public static String s(String paramString) {
    if (TextUtils.isEmpty(paramString))
      return ""; 
    StringBuilder stringBuilder = new StringBuilder();
    String[] arrayOfString = paramString.split("\\s+");
    for (int i = 0; i < arrayOfString.length; i++) {
      byte b;
      paramString = arrayOfString[i];
      if (arrayOfString.length <= 1 || paramString.length() > 2) {
        String str = paramString.substring(0, 1).toUpperCase();
        if (paramString.length() > 1) {
          paramString = paramString.substring(1).toLowerCase();
        } else {
          paramString = "";
        } 
        stringBuilder.append(str.concat(paramString));
      } else {
        stringBuilder.append(paramString.toLowerCase());
      } 
      if (arrayOfString.length > 0) {
        b = arrayOfString.length - 1;
      } else {
        b = 0;
      } 
      if (i < b)
        stringBuilder.append(" "); 
    } 
    return stringBuilder.toString();
  }
  
  public static Double t(String paramString) {
    if (paramString == null || paramString.equals(""))
      return Double.valueOf(0.0D); 
    String str = paramString;
    if (paramString.charAt(0) == '.')
      str = paramString.substring(1, paramString.length()); 
    DecimalFormat decimalFormat = new DecimalFormat("##,###,###,##0.00", new DecimalFormatSymbols(d()));
    try {
      double d = decimalFormat.parse(str).doubleValue();
      return Double.valueOf(d);
    } catch (ParseException parseException) {
      try {
        return Double.valueOf(str);
      } catch (Exception exception) {
        return Double.valueOf(0.0D);
      } 
    } 
  }
  
  public static String u(String paramString) {
    try {
      if (!TextUtils.isEmpty(paramString))
        return paramString.replace(".", "").replace(",", "."); 
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    return "";
  }
  
  public static String v(String paramString) {
    String str = null;
    if (!TextUtils.isEmpty(paramString)) {
      File file = new File(paramString);
      try {
        return Base64.encodeToString(FileUtils.readFileToByteArray(file), 2);
      } catch (IOException iOException) {
        iOException.printStackTrace();
        return null;
      } 
    } 
    return str;
  }
  
  public static String w(String paramString) {
    try {
      String str = f(paramString);
      paramString = str;
      try {
        if (paramString.length() == 11)
          return String.format("(%s) %s - %s", new Object[] { paramString.substring(0, 2), paramString.substring(2, 7), paramString.substring(7, 11) }); 
        if (paramString.length() == 10)
          return String.format("(%s) %s - %s", new Object[] { paramString.substring(0, 2), paramString.substring(2, 6), paramString.substring(6, 10) }); 
      } catch (Exception null) {}
    } catch (Exception exception) {}
    exception.printStackTrace();
    return paramString;
  }
  
  public static String x(String paramString) {
    return (paramString != null) ? paramString.trim() : "";
  }
  
  public static String y(String paramString) {
    if (TextUtils.isEmpty(paramString))
      return ""; 
    String[] arrayOfString = paramString.split("\\s+");
    paramString = "";
    int j = arrayOfString.length;
    for (int i = 0; i < j; i++) {
      String str = arrayOfString[i];
      paramString = paramString + " " + str;
    } 
    return x(paramString);
  }
  
  public static byte[] z(String paramString) {
    return new byte[0];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */