package com.datami.smi.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.provider.Settings;
import android.util.Base64;
import android.util.Log;
import android.webkit.WebView;
import com.ca.android.app.CaMDOHTTPClient;
import com.datami.smi.SdReason;
import com.datami.smi.SdState;
import com.datami.smi.SdStateChangeListener;
import com.datami.smi.SmiIntentService;
import com.datami.smi.SmiResult;
import com.datami.smi.SmiSdk;
import com.datami.smi.a.a;
import com.datami.smi.a.d;
import com.datami.smi.c;
import com.datami.smi.c.a;
import com.datami.smi.c.c;
import com.datami.smi.c.e;
import com.datami.smi.c.r;
import com.datami.smi.c.v;
import com.datami.smi.d.a;
import com.datami.smi.d.c;
import com.datami.smi.d.d;
import com.datami.smi.f.e;
import com.datami.smi.f.f;
import com.datami.smi.f.g;
import com.datami.smi.f.l;
import com.datami.smi.g.c;
import com.datami.smi.h.a;
import com.datami.smi.h.c;
import com.datami.smi.h.f;
import java.io.IOException;
import java.io.PrintStream;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;

public class m implements Serializable, Runnable {
  public static final int A = 100007;
  
  public static final int B = 100008;
  
  public static final int C = 100009;
  
  public static final int D = 100010;
  
  public static final int E = 100011;
  
  public static final int F = 100012;
  
  public static final int G = 100013;
  
  public static final int H = 0;
  
  public static final int I = 2;
  
  public static final String J;
  
  public static boolean K = false;
  
  protected static ScheduledFuture L;
  
  private static Context M;
  
  private static String O;
  
  private static String R;
  
  private static boolean V = false;
  
  public static ScheduledExecutorService a;
  
  private static v aA;
  
  private static r aB;
  
  private static boolean aE = false;
  
  private static boolean aF = false;
  
  private static boolean aG = false;
  
  private static int aH = 0;
  
  private static int aI = 0;
  
  private static int aJ = 0;
  
  private static int aK = 0;
  
  private static boolean aL = false;
  
  private static boolean aM = false;
  
  private static boolean aN = false;
  
  private static boolean aO = false;
  
  private static long aP = 0L;
  
  private static a aQ;
  
  private static volatile String aR;
  
  private static volatile boolean aS = false;
  
  private static final Set aT;
  
  private static final Set aU;
  
  private static boolean aV = false;
  
  private static final String aY = "com.brightcove.player.media.DeliveryType";
  
  private static final String aZ = "com.brightcove.player.model.SourceCollection";
  
  private static boolean ab = false;
  
  private static String ae;
  
  private static c aq;
  
  private static String[] ar;
  
  private static long as = 0L;
  
  private static long at = 0L;
  
  private static long au = 0L;
  
  private static boolean av = false;
  
  private static String aw;
  
  private static String ax;
  
  private static String ay;
  
  private static String az;
  
  public static boolean b = false;
  
  private static final String bA = "pkgLimit";
  
  private static final String bB = "pkgRepeats";
  
  private static final String bC = "pkgDataConsumed";
  
  private static final String bD = "pkgDataRemaining";
  
  private static final String bE = "dictionary";
  
  private static final String bF = "disableUserMessaging";
  
  private static final String bG = "ignoreExclusionDomains";
  
  private static final String bH = "videoBL";
  
  private static final String bI = "sbVideos";
  
  private static final String bJ = "lbVideos";
  
  private static final String bK = "pkgType";
  
  private static final String bL = "abCategory";
  
  private static final String bM = "SD_TESTING_AVAILABLE";
  
  private static final String bN = "CATEGORY_B";
  
  private static final String bO = "sdOnRoamingShortPoll";
  
  private static final String bP = "sdOnRoamingLongPoll";
  
  private static final String bQ = "sdkEvtPushPeriod";
  
  private static final String bR = "appEvtPushPeriod";
  
  private static final String bS = "sdkEvtEnabled";
  
  private static final String bT = "appEvtEnabled";
  
  private static final String bU = "operatorRedirect";
  
  private static final String bV = "serverTime";
  
  private static final String bW = "aacmiOffset";
  
  private static final String bX = "securityLevel";
  
  private static final String bY = "authSignature";
  
  private static final String bZ = "validateResp";
  
  private static final String ba = "com.brightcove.player.model.Source";
  
  private static final String bb = "com.brightcove.player.model.Video";
  
  private static final String bc = "com.brightcove.player.model.SourceAwareMetadataObject";
  
  private static final String bd = "getSourceCollections";
  
  private static final String be = "getSources";
  
  private static final String bf = "getDeliveryType";
  
  private static final String bg = "getProperties";
  
  private static final String bh = "getUrl";
  
  private static List bi;
  
  private static final String bj = "sdHost";
  
  private static final String bk = "meta";
  
  private static final String bl = "sdPort";
  
  private static final String bm = "destHost";
  
  private static final String bn = "expiryTime";
  
  private static final String bo = "sdRegex";
  
  private static final String bp = "sponsorLogoUri";
  
  private static final String bq = "operatorLogoUri";
  
  private static final String br = "datamiLogoUri";
  
  private static final String bs = "cpLogoUri";
  
  private static final String bt = "sd-error";
  
  private static final String bu = "sdOnRoaming";
  
  private static final String bv = "usageSnapshot";
  
  private static final String bw = "userLimit";
  
  private static final String bx = "userRepeats";
  
  private static final String by = "userDataConsumed";
  
  private static final String bz = "userDataRemaining";
  
  public static AtomicLong c;
  
  private static boolean cA = false;
  
  private static final byte[] cB = new byte[] { 
      57, -55, 64, 43, -13, -4, 18, -4, -1, 12, 
      0, -4, -54, -11, 0, -5, -4, -19, 37, -9, 
      -11, 11, 2, -5, -15, 13, -36, 35, -8, 8, 
      -26, 29, -9, -5, -4, -21, 19, 11, -11, -4, 
      19, -1, 1, 17, -13, -6, 2, -28, 27, -5, 
      -4, -6, 9, -15, 6, 19, -8, -7, 9, 7, 
      -26, 21, -11, 4, -8, -6, 12, -6, 20, 7, 
      4, 1, -84, 82, -13, 14, -4, -3, 10, -17, 
      -69, 70, -5, 8, 3, -7, -1, -68, 70, 9, 
      3, -82, 25, -3, 3, 1, 8, -9, 9, -7, 
      -4, 17, -32, 29, -14, 12, -4, 5, -7, -19, 
      13, 18, -8, -75, 35, 30, 11, 0, -15, -21, 
      31, -28, 29, -14, 12, -4, 5, -7, -3, 19, 
      -19, 12, -4, -60, 70, -14, -2, 18, -3, -13, 
      -56, 62, -6, 20, 37, 8, -21, 11, -3, -5, 
      -68, 45, 20, 13, -5, -3, -1, 14, 1, 22, 
      74, 9, -4, -1, -52, -26, -5, -4, -6, 9, 
      -15, 19, -13, 11, -1, -1, 5, -14, -6, 12, 
      -6, 20, 20, 15, -80, 79, -13, 8, -5, -2, 
      17, -84, 2, -1, -3, -54, -11, 0, 11, -3, 
      -15, 40, 5, -12, 2, -35, 26, -26, -2, -17, 
      2, 8, -38, 41, -13, 1, 10, -7, 71, -70, 
      -1, 54, 17, -17, 9, 6, -1, -68, 68, -15, 
      7, -2, 15, -36, 34, -3, 1, -11, 13, 2, 
      -11, -4, 14, 86, -21, 11, 9, -16, -69, 26, 
      -26, 18, 13, 4, -17, 13, -82, 83, -4, -12, 
      0, 8, -6, 15, -84, 66, 7, 5, -10, -68, 
      84, -5, -79, 8, 64, 7, 4, 1, -58, -26, 
      17, 1, 5, -9, 2, -2, 2, -2, 3, -5, 
      -12, 80, -1, 3, 2, -58, -26, 1, 1, -5, 
      20, -9, 8, -84, 84, 1, -7, 0, -9, 7, 
      -76, 68, 11, -1, -9, 5, -6, 17, -11, 6, 
      -1, -13, 17, 7, -15, -68, 65, 11, 6, -13, 
      -4, 3, 21, -89, 79, -1, -8, 15, -19, -2, 
      -14, 13, -46, 29, 19, -19, -30, 44, -1, 5, 
      2, -8, -8, -1, -15, 7, -2, -18, 6, -2, 
      -18, 27, -13, 15, 3, -11, 7, 5, -15, -21, 
      31, -28, 29, -14, 12, -4, 5, -7, -20, 21, 
      7, 3, 2, -36, 31, -3, 0, -3, -14, 12, 
      -4, 5, -7, -27, 35, -1, -7, 57, -75, 71, 
      -14, -57, 52, 2, 0, 2, 14, 0, -54, 60, 
      -20, 14, -77, 80, -17, 13, -9, -3, 19, -60, 
      49, 1, -2, 7, 1, 3, -13, -32, 51, -21, 
      9, 9, -2, -10, 6, -1, -42, 43, -2, -12, 
      8, 5, 5, -18, 0, 6, 1, 13, 78, -78, 
      78, -17, 13, -9, -3, 19, -89, 82, -13, 14, 
      -3, -1, -1, 5, -14, -69, 29, -29, 0, 2, 
      10, -4, -26, 23, 0, 13, -14, 15, 1, -11, 
      13, -17, 19, -5, 3, -32, 19, -1, 5, 9, 
      -13, -2, 17, -12, -5, -15, 78, -78, 78, -52, 
      -26, 78, -15, 7, -43, 37, 49, -17, 9, 6, 
      -1, -83, 52, 20, 10, -13, 14, -11, 0, 7, 
      -3, -8, 11, -15, 12, -15, 20, -1, -12, -22, 
      19, -4, 18, -4, -1, -15, -68, 83, 1, -5, 
      1, -80, 70, -5, 8, 3, -7, -1, 16, -87, 
      67, 12, -1, 0, -9, -2, 17, -11, 6, -1, 
      -78, 83, 2, -18, 0, 2, 14, 0, 3, -27, 
      37, -8, 9, -2, 15, -48, 33, 7, -3, 13, 
      -17, 13, 7, -37, 37, -9, -11, 71, -38, 2, 
      0, 15, 0, -43, 49, -8, 6, -47, 41, -13, 
      1, 10, -7, -1, 71, -69, -2, 68, -15, -53, 
      58, 5, 6, -69, 50, 20, -1, -12, 7, 3, 
      -9, 17, -21, -14, 17, 15, 0, 15, -12, -15, 
      27, -30, 20, -1, -12, 44, 6, -9, -8, -68, 
      78, 1, 5, -84, 67, 12, -1, 0, -9, -2, 
      17, -84, 84, -5, -79, -2, -14, 13, -41, 27, 
      27, 8, 3, -7, -1, -68, 84, -5, -79, 71, 
      -2, 15, -84, 35, 12, -1, 0, -9, -2, 17, 
      -11, 13, -13, 11, 5, 6, -12, -14, 13, 4, 
      -13, -6, 2, 5, -3, -2, 8, -2, 5, -7, 
      -71, 68, -3, 19, -19, -65, 67, 12, -1, 0, 
      -9, -2, 17, -11, 6, -1, -78, 83, 1, -19, 
      19, -15, -69, 14, 0, 0, 0, -44, 32, 2, 
      10, -4, -21, 21, 4, -8, -22, 23, 0, 13, 
      -14, 15, -84, 70, 12, -3, -2, -77, 67, -2, 
      2, 5, -3, -43, -26, 12, -2, -63, 52, 16, 
      -9, -2, 1, 12, -17, 12, 7, -17, -55, 66, 
      -4, -11, 24, -20, 13, -68, 63, 2, -11, 1, 
      7, -62, 40, 19, -5, 1, 10, -21, 11, -3, 
      -5, -3, 19, -15, -19, 19, 14, -3, -15, -28, 
      39, 4, 1, 29, -1, -1, 5, -4, 3, -13, 
      -1, -68, 68, -3, 19, -19, -65, 85, -2, -18, 
      6, -2, -69, 69, 19, -21, 2, 0, -1, 1, 
      -1, -68, 84, -12, -3, -69, 87, -18, 0, 6, 
      1, 13, -89, 76, -3, 4, -4, 11, -72, -12, 
      83, 1, -19, 13, -10, -3, 17, -14, -68, 77, 
      2, -13, 7, 3, -7, -69, 68, -3, 19, -19, 
      -65, 67, 5, -7, 17, -11, -2, 14, -83, 65, 
      15, 0, -4, 13, -89, 70, 9, 3, -82, 85, 
      -2, -18, 6, -2, -69, 79, -9, -70, 84, -12, 
      1, 10, -83, 65, 15, 0, -66, -14, 9, -10, 
      5, 5, -7, -71, 65, 0, 2, 10, -4, -73, 
      82, -13, 12, 4, -16, 14, 1, -72, -12, 82, 
      -13, 12, -28, 29, -6, -50, -26, -14, 15, 0, 
      -11, 5, -7, -71, 68, 1, 1, -5, 20, -9, 
      8, -84, 84, 1, -7, 0, -9, 7, 1, -11, 
      13, -17, 19, -5, 3, 16, -87, 67, 12, -1, 
      0, -9, -2, 17, -11, 6, -1, -78, 70, -5, 
      8, 3, -7, -1, -3, -14, 12, -4, 5, -7, 
      -71, 51, -15, -36, 78, 1, 5, -84, 65, 11, 
      0, 3, 8, -18, -1, -68, 83, -4, -79, 82, 
      -13, 15, 1, -3, -4, -5, 5, -7, -71, 70, 
      12, -3, -2, -77, 72, -3, 13, -13, 15, 0, 
      -39, 27, 57, -75, 71, -14, -57, 52, 2, 0, 
      2, 14, 0, -54, 60, -20, 14, -77, 80, -17, 
      13, -9, -3, 19, -60, 60, -20, 14, 0, 2, 
      10, -4, -73, 82, -13, 14, -3, -54, -26, -22, 
      19, -2, 2, 4, 13, -17, -1, -68, 46, 7, 
      -9, 0, -44, 69, 19, -21, 2, 11, 4, -11, 
      6, -1, -78, 79, -13, 8, -5, -2, 17, -84, 
      83, -4, -79, 82, -13, 15, 1, -3, -4, -5, 
      5, -7, -71, 14, 0, 35, -9, -2, 2, 5, 
      -13, 11, -76, 53, 29, -6, -76, -14, -3, 3, 
      -73, 83, 1, -19, 19, -15, -43, -26, 12, -2, 
      -63, 52, 16, -9, -2, 1, 12, -17, 12, 7, 
      -17, -55, 66, -4, -11, 24, -20, 13, -68, 63, 
      -8, -1, 5, -8, -51, 22, 33, 7, -3, 13, 
      -17, 13, 7, -37, 37, -9, -11, -3, -68, 69, 
      13, 0, -3, 3, -82, 67, 12, -11, 1, -43, 
      -26, 16, 5, -3, -1, 17, -9, -3, 5, -7, 
      -71, 82, -13, -56, 52, 20, -1, -12, -72, 84, 
      -11, 4, -8, 13, -82, 87, -14, 11, -12, -72, 
      51, 28, 6, -3, -15, 2, 14, -83, 65, 17, 
      -13, -69, -15, -18, 19, 2, -2, 19, 2, -13, 
      1, -70, 79, -13, 8, -5, -2, 17, -84, 73, 
      10, -83, 78, 7, -9, 0, -76, 5, 10, -18, 
      1, 10, -7, -16, 30, -14, 13, -37, 24, 14, 
      0, -18, 6, 2, 5, -7, 51, -21, 2, 11, 
      4, -11, 6, -1, -78, 73, 5, -78, 67, 5, 
      -3, -2, 8, -2, 5, -7, -71, 7, 1, 17, 
      -17, 9, 6, -48, 33, 15, -19, 8, 3, 7, 
      51, -21, 2, 11, 4, -11, 6, -1, -78, 73, 
      5, -78, 65, 15, 0, -80, 65, 20, -1, -12, 
      -60, -12, 83, -16, 5, -3, -1, 17, -9, -3, 
      5, -7, -71, 82, -13, -56, 52, 20, -1, -12, 
      -72, 84, -11, 4, -8, 13, -82, 87, -14, 11, 
      -12, -72, 22, -6, -16, 83, -14, -2, 5, -3, 
      -2, 8, -2, 5, -7, -71, 87, -14, -3, 3, 
      -73, 83, 1, -19, 19, -15, -69, 14, 0, 0, 
      0, -2, 15, -33, 28, 6, -3, -15, 2, -34, 
      44, -3, 0, -7, -2, 17, -11, 6, -1, 5, 
      1, 5, -9, 2, -2, 2, -2, 3, 12, 0, 
      -4, 3, -57, -11, 0, 62, -12, 15, -3, -4, 
      -59, 53, 9, 3, 6, -17, 9, -4, -59, 54, 
      -3, 19, -19, 12, -4, -59, 53, 12, -2, -62, 
      50, 0, 2, 10, -4, 45, 0, -3, 3, -82, 
      73, 5, -78, 82, -13, 15, -2, -13, 4, 13, 
      -13, 5, -7, -71, 33, 35, -68, 41, -5, 15, 
      0, 15, -15, 2, -3, 9, 1, 12, 0, -4, 
      -48, 83, 1, -19, 19, 1, -2, -83, 35, 44, 
      -11, 1, -69, 26, -26, 9, 2, 1, -2, 15, 
      -33, 28, 6, -3, -15, 2, 14, 15, 0, -43, 
      49, -2, -47, 41, -13, 1, 10, -7, -1, 12, 
      -3, 0, -7, -2, 17, -5, 3, -14, -2, 18, 
      -3, -9, 11, 5, -45, 25, 17, -17, 7, 17, 
      -18, 11, -47, 82, -13, 17, -72, -14, 16, -37, 
      33, 9, 15, 0, -67, 52, 15, -7, -73, 29, 
      -29, -2, -14, 13, -32, 19, 11, -11, -4, 19, 
      -1, 27, 8, 3, -8, -68, 84, -5, -79, 83, 
      1, -19, 17, 2, -84, 68, 1, 1, -5, 20, 
      -9, 8, -84, 84, 1, -7, 0, -9, 7, -50, 
      -26, 5, -3, -2, 8, -2, 5, -7, -71, 71, 
      16, -87, 67, 12, -1, 0, -9, -2, 17, -11, 
      6, -1, 1, -31, 30, 19, -15, 2, 8, 3, 
      7, -9, 15, 3, -8, 3, -7, -23, 37, -9, 
      -11, 1, 14, 1, -44, 39, 4, 1, -5, -4, 
      -35, 29, 19, -19, -30, 44, -1, 5, 2, -8, 
      -8, -1, -10, 4, -32, 22, 0, -22, 33, -11, 
      -15, -68, 83, 1, -19, 17, 2, -84, 73, 5, 
      -5, 11, -11, -8, 11, -3, 17, -21, -1, -8, 
      14, 0, -18, 6, -2, 3, 0, -35, 45, -10, 
      14, -3, -6, -5, -22, 33, 5, -11, -3, 3, 
      -6, -2, 19, -11, 6, -1, 68, 1, 15, -19, 
      8, 3, 7, -83, 2, 17, -11, 13, -17, -69, 
      84, -5, -4, -6, 9, -78, 69, 19, -15, 10, 
      1, -1, -8, -2, 7, -80, 68, 1, 1, -5, 
      20, -9, 8, -84, 84, 1, -7, 0, -9, 7, 
      -15, -68, 83, 1, -5, 1, -80, 83, 2, -18, 
      0, 2, 14, 0, 35, -68, 41, -5, -36, 26, 
      -26, -15, 27, -11, -15, 14, 1, -11, 5, -7, 
      24, -30, 21, -21, 8, 3, -11, 1, 10, -7, 
      -3, 19, -19, 12, -4, -13, -5, 1, 10, -45, 
      10, 17, -18, 11, -47, 82, -13, 17, -72, -14, 
      34, 17, -18, 11, -47, 82, -13, 17, -72, -14, 
      33, 35, -12, -2, 19, -11, 6, -1, 1, -11, 
      13, -17, 19, -5, 3, -38, 35, -8, 8, -26, 
      29, -9, 51, -21, 2, 11, 4, -11, 6, -1, 
      -78, 73, 5, -78, 67, 15, -13, -4, 19, -11, 
      5, -7, -71, 84, -12, -3, -69, 54, 19, -5, 
      1, 10, -79, 47, 19, 8, -5, -2, 17, -44, 
      32, 2, 10, -4, -21, 21, 4, -8, -22, 23, 
      0, 13, -14, 15, -58, -26, 9, 9, -4, -12, 
      1, -1, -9, -3, 19, -19, 12, -4, -29, 35, 
      -8, 8, -26, 29, -9, 52, -1, -12, -72, 70, 
      -5, 8, 3, -7, -1, -68, 87, -14, 11, -12, 
      -72, 69, 13, 0, -3, 3, -56, -26, 12, -1, 
      0, -9, -2, 17, -11, 13, -13, 11, 5, -15, 
      -21, 31, -28, 29, -14, 12, -4, 5, -7, -27, 
      35, -1, -7, -23, 31, -3, 0, -2, -17, 2, 
      8, -2, 5, -41, 41, -13, 1, 10, -7, -1, 
      2, -11, 1, 7, -5, -5, 8, 8, 0, -8, 
      -12, 1, 19, -19, 1, 7, -15, 19, -20, 12, 
      0, -4, 3, 1, -1, -9, 5, 6, -15, 9, 
      6, -84, 83, 1, -19, 17, 2, -15, -1, -68, 
      70, 9, 3, -82, 82, -13, -56, 52, 20, -1, 
      -12, -72, 65, 5, 14, -15, 13, -82, 84, -5, 
      -4, -6, 9, -78, 69, 19, -8, -7, 9, -13, 
      -1, 20, -1, -12, -36, 37, -2, -2, 14, 1, 
      -14, -3, 3, 78, -57, -21, 78, -78, 78, -52, 
      -26, 78, -26, 7, -15, -55, 56, 13, 0, -3, 
      3, -8, 7, -1, -8, 7, -1, -9, -15, 7, 
      -38, 49, -8, 6, -47, 41, -13, 1, 10, -7, 
      -1, 51, -21, 2, 11, 4, -11, 6, -1, -78, 
      73, 5, -78, 33, 19, 0, -52, 86, -17, 13, 
      -9, -3, 19, -89, 82, -13, 12, 4, -16, 14, 
      1, -58, -26, 2, -1, -3, -66, 54, -3, 19, 
      -19, 12, -4, -59, 64, -9, 15, -58, -5, 0, 
      0, 0, 20, -1, -12, -37, 30, 2, 5, -3, 
      -7, 5, -7, -19, 17, 14, 1, -43, 37, 6, 
      -15, 13, 4, -21, 11, -2, -14, 13, -46, 29, 
      19, -19, -15, 19, 8, -12, 8, 5, -5, 5, 
      -7, 29, -1, -1, 5, -4, 3, -13, -1, -68, 
      68, -3, 19, -19, -65, 85, -2, -18, 6, -2, 
      -69, 69, 19, -21, 2, 0, -1, 1, -1, -68, 
      84, -12, -3, -69, 77, 2, -1, 6, -12, 4, 
      13, -89, 76, -3, 4, -4, 11, -72, -12, 83, 
      1, -19, 13, -10, -3, 17, -14, -68, 77, 2, 
      -13, 7, 3, -7, -69, 68, -3, 19, -19, -65, 
      67, 5, -7, 17, -11, -2, 14, -83, 65, 15, 
      0, -4, 13, -89, 70, 9, 3, -82, 85, -2, 
      -18, 6, -2, -69, 79, -9, -70, 84, -12, 1, 
      10, -83, 65, 15, 0, -66, 68, -15, -53, 71, 
      -17, 13, -9, -3, 19, 8, 9, -2, -4, -11, 
      13, -9, -6, 14, 2, -11, 1, -6, 16, -1, 
      -15, -68, 73, 10, -83, 78, 1, 5, -84, 83, 
      -14, 15, 1, -5, 1, -19, 19, 1, -2, 20, 
      -1, -12, -72, 70, -5, 8, 3, -7, -1, -68, 
      72, 12, 0, -4, -80, 67, 12, -11, 1, -43, 
      -26, -2, -7, 70, 9, 3, -82, 68, -3, 19, 
      -19, 12, -4, -73, 85, -3, -6, -50, -26, -15, 
      7, -75, 69, 17, -17, 9, 6, -84, 83, -14, 
      15, 0, -11, 5, -7, 12, -83, 8, 61, 9, 
      -13, 1, 10, -7, -57, -12, 80, 5, -2, -11, 
      -59, 67, -11, 13, -9, 6, -11, -59, 17, -26, 
      18, 15, 0, -11, 5, -7, -71, 50, 29, -14, 
      12, -4, 5, -7, -71, 84, -19, 18, -8, -75, 
      72, 1, -2, 1, -72, 70, 12, -13, 12, 4, 
      -16, 9, -11, 22, 30, 13, -11, 2, 7, 0, 
      -3, 5, -7, -71, 84, -5, -4, -6, 9, -78, 
      82, -13, -56, 52, 20, -1, -12, -72, 84, -11, 
      4, -8, 13, -2, 15, -44, 37, -12, 2, -16, 
      33, -2, -9, 5, -7, -63, 1, -9, 70, -5, 
      8, 3, -7, -1, -42, -26, 20, -1, -12, -21, 
      22, -2, 7, -13, 19, 1, -3, -13, 15, 0, 
      -43, 49, -2, -36, 37, -2, -11, -24, 21, 13, 
      -9, 6, -11, -7, -3, 3, 1, 8, -9, 33, 
      -79, 65, 0, 2, 10, -4, -73, 85, -3, -6, 
      -76, 70, 9, 6, -7, -10, -68, 73, 5, -78, 
      68, 5, 10, -16, 12, 7, -17, 13, 7, -77, 
      -12, 83, -8, -2, 7, 0, -7, 5, -7, -71, 
      65, 20, -1, -12, 7, 3, -9, 17, -25, 19, 
      -11, 6, -1, -64, 0, 0, 20, -1, -12, -72, 
      83, 2, -18, 0, 2, 14, 0, 2, 0, 2, 
      14, 0, -31, 37, -9, -11, -15, 7, -38, 49, 
      -2, -36, 37, -2, -11, -24, 21, 13, -9, 6, 
      -11, 29, -1, -1, 5, -4, 3, -13, -1, -68, 
      36, 29, 19, -19, -65, 46, 33, 5, -84, 33, 
      53, -21, 8, 3, -11, 1, 10, -7, 9, 9, 
      -4, -12, -10, 26, -4, -22, 17, 7, -23, 21, 
      4, -8, 13, 1, -2, -18, 6, -2, 20, 1, 
      10, -83, 33, 15, -7, -41, 77, 8, -2, 1, 
      -84, 67, -2, 11, 0, -76, 65, 5, 14, -15, 
      13, -82, 73, 5, 6, -11, -8, 11, -3, 10, 
      -14, -18, 29, -1, -1, 5, -4, 3, -13, -1, 
      -32, 29, 19, -19, -57, 1, -8, 0, 29, -1, 
      -1, 5, -4, 3, -13, -1, -68, 68, -3, 19, 
      -19, -65, 85, -2, -18, 6, -2, -69, 69, 19, 
      -21, 2, 0, -1, 1, -1, -68, 84, -12, -3, 
      -69, 68, -3, 8, 3, 13, -89, 76, -3, 4, 
      -4, 11, -72, -12, 83, 1, -19, 13, -10, -3, 
      17, -14, -68, 77, 2, -13, 7, 3, -7, -69, 
      68, -3, 19, -19, -65, 67, 5, -7, 17, -11, 
      -2, 14, -83, 65, 15, 0, -4, 13, -89, 70, 
      9, 3, -82, 85, -2, -18, 6, -2, -69, 79, 
      -9, -70, 84, -12, 1, 10, -83, 65, 15, 0, 
      -66, 12, -2, -63, 52, 16, -9, -2, 1, 12, 
      -17, 12, 7, -17, -55, 66, -4, -11, 24, -20, 
      13, -68, 63, 2, -11, 1, 7, -62, 37, 28, 
      6, -3, -15, 2, -34, 44, -3, 0, -7, -2, 
      17, -11, 6, -1, -15, 7, -27, 37, -2, -11, 
      -24, 21, 13, -9, 6, -11, 71, -14, 26, -4, 
      -40, 52, -1, -12, -72, 69, 17, -17, 9, 6, 
      -1, -83, 6, -11, -11, -67, 87, -22, 8, 11, 
      -84, 70, 9, 3, -82, 84, 1, -7, 0, -9, 
      7, -76, 83, -14, 15, 1, -5, -45, 28, -40, 
      52, -1, -12, -20, 27, -4, -6, 9, 34, -11, 
      5, -3, 3, -4, -1, -68, 53, 29, -6, -76, 
      -3, -14, 12, -4, 5, -7, 26, 20, -89, 26, 
      -26, -5, 2, 2, -3, 13, 0, -4, 30, -18, 
      6, -2, -69, 79, -9, -70, 84, -12, 1, 10, 
      -83, 65, 15, 0, -80, 68, 11, -10, 14, -83, 
      78, 1, 5, -84, 67, 5, -7, 17, -11, -2, 
      -69, 89, -10, 6, -3, -82, 77, 2, -13, 7, 
      3, -7, -69, 68, -3, 19, -19, -65, 80, -4, 
      -11, 13, -64, -3, -6, -5, -4, -6, 9, -2, 
      19, -15, 2, 8, 3, 7, 6, -29, 6, -11, 
      -11, -67, 84, 1, -7, 0, -9, 7, -76, 83, 
      -14, 15, 1, -5, -80, 68, 11, -1, -9, 11, 
      -3, -15, -22, 20, -1, -12, -59, 67, -5, 9, 
      -84, 70, -5, 8, 3, -7, -1, -42, -26, 51, 
      -21, 2, 11, 4, -11, 6, -1, -78, 73, 5, 
      -78, 65, 20, -1, -12, 7, 3, -9, 17, -17, 
      5, -7, -71, 70, 9, 3, -82, 83, -15, -68, 
      65, 2, 0, 2, 14, 0, -57, -26, -12, 5, 
      -7, 13, -7, -2, -1, -68, 83, -15, -17, 33, 
      -19, 19, -15, -69, 26, -26, -15, 2, 8, -10, 
      6, -2, -34, 44, -11, 1, 23, 15, 3, -8, 
      3, -7, -34, 37, -8, 9, -71, 44, 5, -9, 
      -11, 26, -18, 2, -13, 7, 3, -7, -28, 17, 
      -26, -7, 5, -7, -19, 17, 14, 1, -48, 37, 
      10, -18, 1, 10, -7, 0, 2, 10, -4, -10, 
      4, -2, 11, 0, -13, 3, 10, 3, -12, 8, 
      -12, 5, 17, -3, -17, 19, -11, 6, -1, -2, 
      -1, 13, -19, 1, 7, -15, 19, -20, -75, 71, 
      -14, -57, 52, 2, 0, 2, 14, 0, -54, 60, 
      -20, 14, 8, 0, -8, 5, -7, -28, 27, -11, 
      7, 8, -54, 45, -13, 11, 13, -5, -11, -6, 
      16, -38, 24, 14, 0, -18, 6, -2, -3, 19, 
      -19, 2, -1, 17, -19, 1, 7, -15, 19, -20, 
      20, -1, -12, 15, 0, -80, 69, 17, -17, 9, 
      6, -84, 83, -14, 15, 0, -11, 5, -7, 12, 
      -83, 8, 61, 9, -13, 1, 10, -7, -57, -12, 
      80, 5, -2, -11, -59, 67, -11, 13, -9, 6, 
      -11, -59, 17, -26, 20, -1, -12, -72, 70, -5, 
      8, 3, -7, -1, -42, -26, -17, -12, 19, -5, 
      1, 10, 4, -21, 11, -3, -5, -3, 19, -11, 
      5, -7, -71, 84, -12, -3, -69, 84, -5, -4, 
      -6, 9, -52, -26, 0, 13, 0, -3, 3, -47, 
      44, -11, 1, 12, -2, -63, 52, 16, -9, -2, 
      1, 12, -17, 12, 7, -17, -55, 66, -4, -11, 
      24, -20, 13, -68, 63, 2, -11, 1, 7, -62, 
      37, 28, 6, -3, -15, 2, -36, 54, -22, 17, 
      -13, -24, 24, 15, -19, 3, -3, 19, -19, -18, 
      19, 8, -5, -2, 17, 34, 17, -11, 5, -7, 
      -71, 79, -1, -28, 29, -14, 12, -4, 5, -7, 
      82, -13, 15, -2, 7, -89, -2, 11, 0, -3, 
      5, -7, -71, 71, -2, 15, -51, 47, 0, -29, 
      -15, -3, 52, -1, -12, -64, 1, -9, 70, -5, 
      8, 3, -7, -1, -42, -26, -15, 7, 20, -26, 
      17, -17, 9, 6, -3, -1, -1, 5, -4, 3, 
      -38, 35, -8, 8, -26, 29, -9, 33, -79, 68, 
      1, 11, -4, 3, 10, -12, -8, 9, 6, -84, 
      87, -22, 18, -83, 70, 9, 6, -7, -10, -68, 
      66, 3, 1, 9, 3, -13, -15, -20, 31, 3, 
      2, 17, -17, 9, 6, -38, 19, 12, -8, -11, 
      0, -14, 13, 4, -17, 13, -30, 21, 4, -8, 
      -2, -14, 13, -38, 29, 4, -4, 11, -1, 3, 
      -2, -5, -4, -35, 29, 19, -19, -15, 19, 8, 
      -12, 8, 5, -5, 5, -7, 0, 29, -29, 22, 
      6, -85, 72, -7, 21, -17, -69, 85, -2, -14, 
      -1, -68, 84, -12, 1, 10, -83, 65, 15, 0, 
      -80, 70, 9, 3, -82, 4, 13, -17, 77, -4, 
      5, -78, 65, 13, -10, -68, 83, -18, 21, -17, 
      -1, -68, 4, 14, -18, 45, -11, -34, 68, -3, 
      19, -19, -53, -12, 78, 1, 5, -84, 67, 5, 
      -7, 17, -11, -2, -1, -68, 84, -5, -79, 89, 
      -10, 6, -3, -82, 68, -3, 19, -19, -65, 80, 
      -4, -11, 13, -1, -14, -25, 11, 1, 9, -12, 
      -5, -4, -27, 29, 4, -4, 11, 78, -57, -21, 
      78, -78, 78, -2, 15, -34, 34, -1, -3, -32, 
      34, -3, 9, 1, -36, 29, -6, -68, 1, -9, 
      70, -5, 8, 3, -7, -1, -42, -26, 18, 9, 
      -10, 5, 5, -7, -71, 86, -17, 13, -9, -3, 
      19, -89, 82, -13, 12, 4, -16, 14, 1, -84, 
      87, -14, 11, -12, -72, 85, -3, -6, -50, -26, 
      -2, 15, -31, 29, -6, 7, -9, 0, -3, 8, 
      3, 13, -9, 9, -63, 54, -3, 19, -19, 12, 
      -4, -59, 64, -9, 15, 2, -3, 5, -5, -10, 
      -12, 19, -5, 1, 10, 4, 2, -1, 6, -12, 
      4, 13, -9, 15, 3, -8, 3, -7, -30, 22, 
      0, -22, 33, -11, 8, -15, -3, -14, 12, -4, 
      5, -7, -10, 6, -1, 1, -19, 3, 12, -11, 
      1, 18, 15, 0, -11, 5, -7, -71, 50, 29, 
      -14, 12, -4, 5, -7, -71, 84, -19, 18, -8, 
      -75, 76, 3, 8, -87, 70, 12, -13, 12, 4, 
      -16, 9, -11, 22, -15, 7, -38, 49, -2, -47, 
      41, -13, 1, 10, -7, -1, 33, -79, 77, -12, 
      19, -17, 5, 1, 5, -7, -71, 67, -2, 2, 
      5, -3, -69, 70, 9, 6, -7, -10, 9, 9, 
      -4, -12, -24, 49, -17, 9, 6, -34, 19, 2, 
      2, 10, 1, -15, 13, -31, 18, 13, 4, -13, 
      -6, 2, -29, 10, -2, -12, 16, 5, -3, -1, 
      17, -9, -3, 5, -7, -71, 38, 15, -5, -48, 
      50, 19, -4, 20, -1, -12, 7, 3, -9, 10, 
      -18, 19, -11, 6, -1, -78, 70, 9, 3, -82, 
      76, -3, 4, -4, 11, 1, 1, -5, 20, -9, 
      8, -84, 83, -15, -68, 72, 7, 4, 1, -58, 
      -26, 0, 37, -12, 2, -16, -11, -7, -16, 42, 
      -83, 52, 30, -17, 2, 8, -2, 5, -7, -71, 
      69, 9, -13, 1, 10, -7, -1, -68, 26, -26, 
      73, 10, -83, 69, 19, -8, -7, 9, -13, -1, 
      -67, 20, -1, -12, -59, 67, -5, 9, -84, 82, 
      -13, 14, -3, -80, 83, 2, -18, 0, 2, 14, 
      0, -12, 10, -6, 15, 0, -32, 37, -2, -11, 
      -24, 21, 13, -9, 6, -11, -5, -4, 24, -19, 
      1, 7, -15, 19, -20, -3, -14, 12, -4, 5, 
      -7, -20, 21, 7, 3, 2, 12, -2, -63, 52, 
      16, -9, -2, 1, 12, -17, 12, 7, -17, -55, 
      66, -4, -11, 24, -20, 13, -68, 63, 2, -11, 
      1, 7, -62, 37, 28, 6, -3, -15, 2, 8, 
      13, 6, -19, 1, 7, -15, 19, -20, 22, 6, 
      -3, -82, 68, 1, 17, -13, -6, 2, -69, 73, 
      10, -83, 73, 5, -78, 65, -65, 82, -3, -14, 
      12, -4, 5, -7, -71, 78, -9, 15, 3, -8, 
      3, -7, -61, -14, 83, 1, -19, 13, -10, -3, 
      17, -14, -68, 82, -3, -14, 12, -4, 5, -7, 
      -71, 77, 2, -13, 7, 3, -7, -69, 68, -3, 
      19, -19, -65, 67, 5, -7, 17, -11, -2, 14, 
      -83, 65, 15, 0, -4, 13, -89, 70, 9, 3, 
      -82, 85, -2, -18, 6, -2, -69, 79, -9, -70, 
      84, -12, 1, 10, -83, 65, 15, 0, -66, 50, 
      -3, 0, -13, 9, 6, -84, 84, -12, 10, -13, 
      -4, 3, -68, 73, 10, -83, 45, 20, 8, 5, 
      -78, 44, 35, 0, 1, -11, 13, -70, -12, 67, 
      15, -13, -4, 19, -11, 5, -7, -71, 65, -65, 
      78, -9, 18, -87, 84, -12, 10, -13, -4, 3, 
      -68, 70, 9, 3, -82, 78, -9, 15, 3, -8, 
      3, -7, -75, 67, -2, 11, 0, -2, 15, -51, 
      47, 0, -29, -15, -3, 52, -1, -12, -72, 70, 
      -5, 8, 3, -7, -1, -42, -26, 34, -13, 7, 
      3, -7, -69, 68, -3, 19, -19, -65, 73, 10, 
      -83, 78, 1, -79, 76, 3, -1, -7, -2, 13, 
      -82, 83, -3, -1, -1, 5, -4, 3, -13, -1, 
      -54, -14, 51, 33, -19, 13, -10, -3, 17, -14, 
      -68, 77, 2, -13, 7, 3, -7, -69, 68, -3, 
      19, -19, -65, 67, 5, -7, 17, -11, -2, 14, 
      -83, 65, 15, 0, -4, 13, -89, 70, 9, 3, 
      -82, 85, -2, -18, 6, -2, -69, 79, -9, -70, 
      84, -12, 1, 10, -83, 65, 15, 0, -66, 1, 
      -5, 3, -13, -1, -68, 77, -44, 32, 2, 10, 
      -4, -21, 21, 4, -8, -22, 23, 0, 13, -14, 
      15, -84, 77, -4, 3, 0, -3, 10, -69, 19, 
      -8, -7, 9, 7, -37, 21, 4, -8, 54, -3, 
      19, -19, 12, -4, -59, 64, -9, 15, 1, 16, 
      -12, -15 };
  
  private static int cC = 83;
  
  private static final String ca = "authCache";
  
  private static final String cb = "pingTestInterval";
  
  private static final String cc = "pingTestDisable";
  
  private static final String cd = "-tf";
  
  private static final String ce = "x-tf-access=yes";
  
  private static final String cf = "-";
  
  private static final char cg = '-';
  
  private static final String ch = "--";
  
  private static final String ci = "https://mapmi.cloudmi.datami.com/aacmi";
  
  private static final String cj = "/v1/sd/int/authorize";
  
  private static final String ck = "/v0/events/sdk";
  
  private static final String cl = ".datami.net";
  
  private static final String cm = "mdm.datami.net";
  
  private static final String cn = ".datami.net";
  
  private static final int co = 8043;
  
  private static final String cp = "rtsp.datami.net:5555";
  
  private static final String cq = "/sd/verify";
  
  private static final String cr = "APP_PROXY";
  
  private static final String cs = "rtsp://";
  
  private static WebView ct;
  
  private static g cu;
  
  private static c cv;
  
  private static String cw;
  
  private static int cx = 0;
  
  private static boolean cy = false;
  
  private static boolean cz = false;
  
  public static String d;
  
  public static String e;
  
  public static boolean f = false;
  
  public static l g;
  
  public static volatile ArrayBlockingQueue h;
  
  public static volatile ArrayBlockingQueue i;
  
  public static boolean j = false;
  
  public static long k = 0L;
  
  public static f l;
  
  public static final int m = 1;
  
  public static final int n = 2;
  
  public static final int o = 3;
  
  public static final int p = 4;
  
  public static final int q = 5;
  
  public static final int r = 6;
  
  public static final int s = 100000;
  
  public static final int t = 100001;
  
  public static final int u = 100002;
  
  public static final int v = 100003;
  
  public static final int w = 100004;
  
  public static final int x = 1;
  
  public static final int y = 100005;
  
  public static final int z = 100006;
  
  private String N = "";
  
  private String P = "";
  
  private String Q = "";
  
  private URI S;
  
  private String T = "";
  
  private boolean U = false;
  
  private String W = "";
  
  private int X = 0;
  
  private final String Y = "";
  
  private String Z = "";
  
  private boolean aC = false;
  
  private long aD = 0L;
  
  private boolean aW = false;
  
  private int aX;
  
  private Exception aa;
  
  private int ac = 3;
  
  private a ad = a.b;
  
  private int af = -1;
  
  private final String ag = "";
  
  private final int ah = -1;
  
  private String ai = "";
  
  private final int aj = -1;
  
  private String ak = "";
  
  private String al = "";
  
  private String am = "";
  
  private String an = "";
  
  private String ao = "";
  
  private boolean ap = false;
  
  static {
    a = Executors.newScheduledThreadPool(5);
    O = "";
    R = "";
    V = true;
    b = true;
    ab = false;
    ae = "";
    c = new AtomicLong(-1L);
    aq = null;
    as = 0L;
    at = 0L;
    au = 0L;
    av = false;
    aw = a(cB[228], 2018, 102);
    ax = "";
    ay = "";
    az = "";
    aA = null;
    aB = null;
    aE = false;
    d = a(109, 2075, 102);
    e = "";
    aF = true;
    aG = false;
    aH = 15;
    aI = 10;
    aJ = 5;
    aK = 60;
    aL = false;
    aM = false;
    aN = true;
    f = false;
    g = l.a;
    aO = false;
    aP = 0L;
    h = new ArrayBlockingQueue(1000);
    i = new ArrayBlockingQueue(1000);
    int i = cB[3021] + 1;
    aQ = new a(a(i, i | 0x21, cB[3021]));
    aR = "";
    aS = true;
    aT = new HashSet();
    aU = new HashSet();
    j = false;
    aV = false;
    k = 0L;
    l = f.a;
    bi = Collections.synchronizedList(new ArrayList());
    StringBuilder stringBuilder = new StringBuilder();
    i = cC - 2;
    int j = i | 0x726;
    J = stringBuilder.append(a(i, j, j & 0xED)).append(m.class.getSimpleName()).toString();
    K = false;
    L = null;
    cu = null;
    cv = null;
    cw = null;
    cx = 2;
    cy = false;
    cz = true;
    cA = false;
  }
  
  public static boolean A() {
    return aM;
  }
  
  public static boolean B() {
    return aV;
  }
  
  public static boolean C() {
    boolean bool2 = false;
    boolean bool1 = bool2;
    bool1 = bool2;
    if (M != null && M.getPackageManager().queryIntentServices(new Intent(M, SmiIntentService.class), 65536).size() > 0)
      bool1 = true; 
    return bool1;
  }
  
  public static boolean E() {
    return d(SmiSdk.mContext);
  }
  
  public static String F() {
    return (c.a != null) ? c.a.d(au()) : au();
  }
  
  public static boolean G() {
    return cy;
  }
  
  public static boolean H() {
    return (aU != null && aT != null && (aU.contains(a(92, 2976, 98)) || aT.contains(a(92, 2976, 98))));
  }
  
  public static int I() {
    return cx;
  }
  
  public static boolean J() {
    return (aU != null && aT != null && (aU.contains(a(111, cC | 0xE8C, 99)) || aT.contains(a(111, cC | 0xE8C, 99))));
  }
  
  public static boolean K() {
    return (cu != null);
  }
  
  public static void L() {
    cA = true;
    if (cu == null)
      Log.i(J, a(105, 2335, cC | 0x8)); 
    m m1 = new m();
    m1.ac = 3;
    m1.X = 100008;
    SmiResult smiResult = new SmiResult(m1);
    if (a(M, smiResult, (Exception)null)) {
      P();
      c.a(smiResult);
      c.b(20);
      Log.i(J, a(105, 1765, cC | 0x8));
      return;
    } 
    Log.i(J, a(105, 530, 92));
  }
  
  public static void M() {
    if (SmiSdk.mContext == null || SmiIntentService.getSdkKey(SmiSdk.mContext) == null || SmiIntentService.getSdkKey(SmiSdk.mContext).isEmpty())
      throw new Exception(a(cB[160], 2693, -cB[1])); 
    cA = false;
    if (cu == null) {
      Intent intent = new Intent(M, SmiIntentService.class);
      intent.setAction(a(-cB[1], 620, cC | 0xC));
      l = f.f;
      M.startService(intent);
      Log.i(J, a(105, 1675, cB[243]));
      return;
    } 
    Log.i(J, a(105, 319, 93));
  }
  
  public static void N() {
    a(-cB[1], 3430, cB[3021] + 1);
    P();
    m m1 = new m();
    m1.ac = 3;
    m1.X = 100005;
    SmiResult smiResult = new SmiResult(m1);
    a(M, smiResult, (Exception)null);
    c.b(8);
    c.c(M);
    a(M, aK);
  }
  
  public static SmiResult O() {
    m m1 = new m();
    m1.ac = 3;
    m1.X = 100010;
    return new SmiResult(m1);
  }
  
  public static void P() {
    h.a();
    if (M != null) {
      SharedPreferences sharedPreferences = k.a(M);
      SharedPreferences.Editor editor = sharedPreferences.edit();
      if (sharedPreferences.contains(a(106, 161, cB[3021])))
        editor.remove(a(106, 161, cB[3021])); 
      editor.apply();
      editor.commit();
    } 
  }
  
  public static void Q() {
    l = f.g;
    b(M, O);
  }
  
  public static String R() {
    if (cv != null && cv.isAlive())
      cv.join(); 
    return (c.c == null || c.c.a() == null || c.c.a().isEmpty()) ? "" : c.c.a();
  }
  
  public static boolean S() {
    return aG;
  }
  
  public static boolean T() {
    return false;
  }
  
  public static boolean U() {
    return (cu != null);
  }
  
  private String Y() {
    return this.ao;
  }
  
  private void Z() {
    this.af = 8043;
  }
  
  public static SmiResult a(Context paramContext, Object paramObject, String paramString) {
    // Byte code:
    //   0: getstatic com/datami/smi/b/m.cu : Lcom/datami/smi/f/g;
    //   3: ifnull -> 43
    //   6: getstatic android/os/Build$VERSION.SDK_INT : I
    //   9: bipush #20
    //   11: if_icmple -> 43
    //   14: new com/datami/smi/SmiResult
    //   17: dup
    //   18: invokespecial <init> : ()V
    //   21: astore_2
    //   22: aload_2
    //   23: getstatic com/datami/smi/SdState.SD_AVAILABLE : Lcom/datami/smi/SdState;
    //   26: invokevirtual setSdState : (Lcom/datami/smi/SdState;)V
    //   29: aload_2
    //   30: getstatic com/datami/smi/SdReason.SD_NOT_AVAILABLE_REASON_UNKNOWN : Lcom/datami/smi/SdReason;
    //   33: invokevirtual setSdReason : (Lcom/datami/smi/SdReason;)V
    //   36: aload_2
    //   37: aload_1
    //   38: invokevirtual setVideoObject : (Ljava/lang/Object;)V
    //   41: aload_2
    //   42: areturn
    //   43: getstatic com/datami/smi/b/m.cB : [B
    //   46: sipush #3021
    //   49: baload
    //   50: sipush #1133
    //   53: getstatic com/datami/smi/b/m.cB : [B
    //   56: sipush #265
    //   59: baload
    //   60: invokestatic a : (III)Ljava/lang/String;
    //   63: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   66: astore #8
    //   68: getstatic com/datami/smi/b/m.cB : [B
    //   71: sipush #3021
    //   74: baload
    //   75: sipush #2846
    //   78: getstatic com/datami/smi/b/m.cB : [B
    //   81: sipush #141
    //   84: baload
    //   85: invokestatic a : (III)Ljava/lang/String;
    //   88: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   91: astore #9
    //   93: getstatic com/datami/smi/b/m.cB : [B
    //   96: sipush #3021
    //   99: baload
    //   100: istore_3
    //   101: iload_3
    //   102: iload_3
    //   103: sipush #3972
    //   106: ior
    //   107: getstatic com/datami/smi/b/m.cB : [B
    //   110: sipush #1024
    //   113: baload
    //   114: invokestatic a : (III)Ljava/lang/String;
    //   117: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   120: astore #11
    //   122: getstatic com/datami/smi/b/m.cB : [B
    //   125: sipush #3021
    //   128: baload
    //   129: sipush #750
    //   132: getstatic com/datami/smi/b/m.cB : [B
    //   135: sipush #1249
    //   138: baload
    //   139: invokestatic a : (III)Ljava/lang/String;
    //   142: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   145: astore #7
    //   147: getstatic com/datami/smi/b/m.cB : [B
    //   150: sipush #3021
    //   153: baload
    //   154: sipush #3378
    //   157: getstatic com/datami/smi/b/m.cB : [B
    //   160: sipush #1123
    //   163: baload
    //   164: invokestatic a : (III)Ljava/lang/String;
    //   167: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   170: pop
    //   171: new java/util/HashSet
    //   174: dup
    //   175: invokespecial <init> : ()V
    //   178: astore #10
    //   180: bipush #93
    //   182: sipush #1386
    //   185: getstatic com/datami/smi/b/m.cB : [B
    //   188: sipush #243
    //   191: baload
    //   192: invokestatic a : (III)Ljava/lang/String;
    //   195: astore #4
    //   197: aload_1
    //   198: invokevirtual getClass : ()Ljava/lang/Class;
    //   201: aload #4
    //   203: iconst_0
    //   204: anewarray java/lang/Class
    //   207: invokevirtual getMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   210: astore #4
    //   212: aload #4
    //   214: iconst_1
    //   215: invokevirtual setAccessible : (Z)V
    //   218: aload #4
    //   220: aload_1
    //   221: iconst_0
    //   222: anewarray java/lang/Object
    //   225: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   228: checkcast java/util/Map
    //   231: invokeinterface entrySet : ()Ljava/util/Set;
    //   236: invokeinterface iterator : ()Ljava/util/Iterator;
    //   241: astore #12
    //   243: aconst_null
    //   244: astore #4
    //   246: aconst_null
    //   247: astore #5
    //   249: aload #12
    //   251: invokeinterface hasNext : ()Z
    //   256: ifeq -> 887
    //   259: aload #12
    //   261: invokeinterface next : ()Ljava/lang/Object;
    //   266: checkcast java/util/Map$Entry
    //   269: astore #6
    //   271: new java/lang/StringBuilder
    //   274: dup
    //   275: invokespecial <init> : ()V
    //   278: getstatic com/datami/smi/b/m.cB : [B
    //   281: sipush #550
    //   284: baload
    //   285: sipush #177
    //   288: getstatic com/datami/smi/b/m.cC : I
    //   291: bipush #12
    //   293: ior
    //   294: invokestatic a : (III)Ljava/lang/String;
    //   297: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: aload #6
    //   302: invokeinterface getKey : ()Ljava/lang/Object;
    //   307: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   310: astore #13
    //   312: getstatic com/datami/smi/b/m.cB : [B
    //   315: sipush #159
    //   318: baload
    //   319: istore_3
    //   320: aload #13
    //   322: iload_3
    //   323: iload_3
    //   324: sipush #3560
    //   327: ior
    //   328: bipush #103
    //   330: invokestatic a : (III)Ljava/lang/String;
    //   333: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   336: aload #6
    //   338: invokeinterface getValue : ()Ljava/lang/Object;
    //   343: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   346: pop
    //   347: aload #6
    //   349: invokeinterface getValue : ()Ljava/lang/Object;
    //   354: astore #6
    //   356: bipush #93
    //   358: sipush #1503
    //   361: bipush #96
    //   363: invokestatic a : (III)Ljava/lang/String;
    //   366: astore #13
    //   368: aload #6
    //   370: invokevirtual getClass : ()Ljava/lang/Class;
    //   373: aload #13
    //   375: iconst_0
    //   376: anewarray java/lang/Class
    //   379: invokevirtual getMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   382: astore #13
    //   384: aload #13
    //   386: iconst_1
    //   387: invokevirtual setAccessible : (Z)V
    //   390: aload #13
    //   392: aload #6
    //   394: iconst_0
    //   395: anewarray java/lang/Object
    //   398: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   401: checkcast java/util/Set
    //   404: astore #6
    //   406: new java/lang/StringBuilder
    //   409: dup
    //   410: invokespecial <init> : ()V
    //   413: astore #13
    //   415: getstatic com/datami/smi/b/m.cB : [B
    //   418: sipush #159
    //   421: baload
    //   422: istore_3
    //   423: aload #13
    //   425: iload_3
    //   426: iload_3
    //   427: sipush #1193
    //   430: ior
    //   431: bipush #93
    //   433: invokestatic a : (III)Ljava/lang/String;
    //   436: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   439: aload #6
    //   441: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   444: pop
    //   445: aload #6
    //   447: invokeinterface iterator : ()Ljava/util/Iterator;
    //   452: astore #13
    //   454: aload #5
    //   456: astore #6
    //   458: aload #4
    //   460: astore #5
    //   462: aload #6
    //   464: astore #4
    //   466: aload #13
    //   468: invokeinterface hasNext : ()Z
    //   473: ifeq -> 865
    //   476: aload #13
    //   478: invokeinterface next : ()Ljava/lang/Object;
    //   483: astore #5
    //   485: bipush #93
    //   487: sipush #568
    //   490: getstatic com/datami/smi/b/m.cC : I
    //   493: bipush #8
    //   495: ior
    //   496: invokestatic a : (III)Ljava/lang/String;
    //   499: astore #4
    //   501: aload #5
    //   503: invokevirtual getClass : ()Ljava/lang/Class;
    //   506: aload #4
    //   508: iconst_0
    //   509: anewarray java/lang/Class
    //   512: invokevirtual getMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   515: astore #4
    //   517: aload #4
    //   519: iconst_1
    //   520: invokevirtual setAccessible : (Z)V
    //   523: aload #4
    //   525: aload #5
    //   527: iconst_0
    //   528: anewarray java/lang/Object
    //   531: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   534: astore #4
    //   536: bipush #93
    //   538: sipush #3745
    //   541: bipush #100
    //   543: invokestatic a : (III)Ljava/lang/String;
    //   546: astore #6
    //   548: aload #5
    //   550: invokevirtual getClass : ()Ljava/lang/Class;
    //   553: aload #6
    //   555: iconst_0
    //   556: anewarray java/lang/Class
    //   559: invokevirtual getMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   562: astore #6
    //   564: aload #6
    //   566: iconst_1
    //   567: invokevirtual setAccessible : (Z)V
    //   570: aload #6
    //   572: aload #5
    //   574: iconst_0
    //   575: anewarray java/lang/Object
    //   578: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   581: checkcast java/lang/String
    //   584: astore #5
    //   586: new java/lang/StringBuilder
    //   589: dup
    //   590: invokespecial <init> : ()V
    //   593: getstatic com/datami/smi/b/m.cB : [B
    //   596: sipush #823
    //   599: baload
    //   600: sipush #1110
    //   603: bipush #93
    //   605: invokestatic a : (III)Ljava/lang/String;
    //   608: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   611: aload #5
    //   613: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   616: pop
    //   617: new com/datami/smi/SmiResult
    //   620: dup
    //   621: aload_0
    //   622: aload #5
    //   624: aload_2
    //   625: ldc_w ''
    //   628: iconst_0
    //   629: invokestatic a : (Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/datami/smi/b/m;
    //   632: invokespecial <init> : (Lcom/datami/smi/b/m;)V
    //   635: astore #5
    //   637: aload #5
    //   639: invokevirtual getUrl : ()Ljava/lang/String;
    //   642: astore #6
    //   644: aload #5
    //   646: invokevirtual getSdState : ()Lcom/datami/smi/SdState;
    //   649: getstatic com/datami/smi/SdState.SD_AVAILABLE : Lcom/datami/smi/SdState;
    //   652: if_acmpeq -> 798
    //   655: new java/lang/Exception
    //   658: dup
    //   659: getstatic com/datami/smi/b/m.cB : [B
    //   662: sipush #1249
    //   665: baload
    //   666: sipush #2646
    //   669: getstatic com/datami/smi/b/m.cB : [B
    //   672: sipush #448
    //   675: baload
    //   676: invokestatic a : (III)Ljava/lang/String;
    //   679: invokespecial <init> : (Ljava/lang/String;)V
    //   682: athrow
    //   683: astore_0
    //   684: new com/datami/smi/SmiResult
    //   687: dup
    //   688: invokespecial <init> : ()V
    //   691: astore_0
    //   692: aload_0
    //   693: getstatic com/datami/smi/SdState.SD_NOT_AVAILABLE : Lcom/datami/smi/SdState;
    //   696: invokevirtual setSdState : (Lcom/datami/smi/SdState;)V
    //   699: aload_0
    //   700: getstatic com/datami/smi/SdReason.SD_NOT_AVAILABLE_REASON_UNKNOWN : Lcom/datami/smi/SdReason;
    //   703: invokevirtual setSdReason : (Lcom/datami/smi/SdReason;)V
    //   706: new java/lang/Exception
    //   709: dup
    //   710: getstatic com/datami/smi/b/m.cB : [B
    //   713: sipush #1249
    //   716: baload
    //   717: sipush #2646
    //   720: getstatic com/datami/smi/b/m.cB : [B
    //   723: sipush #448
    //   726: baload
    //   727: invokestatic a : (III)Ljava/lang/String;
    //   730: invokespecial <init> : (Ljava/lang/String;)V
    //   733: athrow
    //   734: astore_0
    //   735: getstatic com/datami/smi/b/m.cB : [B
    //   738: sipush #1430
    //   741: baload
    //   742: ineg
    //   743: sipush #1857
    //   746: getstatic com/datami/smi/b/m.cB : [B
    //   749: sipush #228
    //   752: baload
    //   753: invokestatic a : (III)Ljava/lang/String;
    //   756: pop
    //   757: new com/datami/smi/SmiResult
    //   760: dup
    //   761: invokespecial <init> : ()V
    //   764: astore_0
    //   765: aload_0
    //   766: getstatic com/datami/smi/SdState.SD_NOT_AVAILABLE : Lcom/datami/smi/SdState;
    //   769: invokevirtual setSdState : (Lcom/datami/smi/SdState;)V
    //   772: aload_0
    //   773: getstatic com/datami/smi/SdReason.SD_NOT_AVAILABLE_REASON_UNKNOWN : Lcom/datami/smi/SdReason;
    //   776: invokevirtual setSdReason : (Lcom/datami/smi/SdReason;)V
    //   779: aload_0
    //   780: astore_2
    //   781: aload_0
    //   782: invokevirtual getSdState : ()Lcom/datami/smi/SdState;
    //   785: getstatic com/datami/smi/SdState.SD_AVAILABLE : Lcom/datami/smi/SdState;
    //   788: if_acmpeq -> 41
    //   791: aload_0
    //   792: aload_1
    //   793: invokevirtual setVideoObject : (Ljava/lang/Object;)V
    //   796: aload_0
    //   797: areturn
    //   798: new java/lang/StringBuilder
    //   801: dup
    //   802: invokespecial <init> : ()V
    //   805: getstatic com/datami/smi/b/m.cB : [B
    //   808: sipush #550
    //   811: baload
    //   812: sipush #2953
    //   815: bipush #93
    //   817: invokestatic a : (III)Ljava/lang/String;
    //   820: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   823: aload #6
    //   825: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   828: pop
    //   829: aload #10
    //   831: aload #11
    //   833: iconst_1
    //   834: anewarray java/lang/Class
    //   837: dup
    //   838: iconst_0
    //   839: ldc_w java/lang/String
    //   842: aastore
    //   843: invokevirtual getConstructor : ([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   846: iconst_1
    //   847: anewarray java/lang/Object
    //   850: dup
    //   851: iconst_0
    //   852: aload #6
    //   854: aastore
    //   855: invokevirtual newInstance : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   858: invokevirtual add : (Ljava/lang/Object;)Z
    //   861: pop
    //   862: goto -> 466
    //   865: aload #12
    //   867: invokeinterface remove : ()V
    //   872: aload #4
    //   874: astore #6
    //   876: aload #5
    //   878: astore #4
    //   880: aload #6
    //   882: astore #5
    //   884: goto -> 249
    //   887: new java/util/HashSet
    //   890: dup
    //   891: invokespecial <init> : ()V
    //   894: astore_0
    //   895: aload_0
    //   896: aload #9
    //   898: iconst_2
    //   899: anewarray java/lang/Class
    //   902: dup
    //   903: iconst_0
    //   904: ldc_w java/util/Set
    //   907: aastore
    //   908: dup
    //   909: iconst_1
    //   910: aload #8
    //   912: aastore
    //   913: invokevirtual getConstructor : ([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   916: iconst_2
    //   917: anewarray java/lang/Object
    //   920: dup
    //   921: iconst_0
    //   922: aload #10
    //   924: aastore
    //   925: dup
    //   926: iconst_1
    //   927: aload #5
    //   929: aastore
    //   930: invokevirtual newInstance : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   933: invokevirtual add : (Ljava/lang/Object;)Z
    //   936: pop
    //   937: bipush #93
    //   939: sipush #226
    //   942: bipush #93
    //   944: invokestatic a : (III)Ljava/lang/String;
    //   947: astore_2
    //   948: aload_1
    //   949: invokevirtual getClass : ()Ljava/lang/Class;
    //   952: aload_2
    //   953: iconst_0
    //   954: anewarray java/lang/Class
    //   957: invokevirtual getMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   960: astore_2
    //   961: aload_2
    //   962: iconst_1
    //   963: invokevirtual setAccessible : (Z)V
    //   966: aload_2
    //   967: aload_1
    //   968: iconst_0
    //   969: anewarray java/lang/Object
    //   972: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   975: astore_2
    //   976: aload #4
    //   978: aload #7
    //   980: iconst_2
    //   981: anewarray java/lang/Class
    //   984: dup
    //   985: iconst_0
    //   986: ldc_w java/util/Map
    //   989: aastore
    //   990: dup
    //   991: iconst_1
    //   992: ldc_w java/util/Set
    //   995: aastore
    //   996: invokevirtual getConstructor : ([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   999: iconst_2
    //   1000: anewarray java/lang/Object
    //   1003: dup
    //   1004: iconst_0
    //   1005: aload_2
    //   1006: aastore
    //   1007: dup
    //   1008: iconst_1
    //   1009: aload_0
    //   1010: aastore
    //   1011: invokevirtual newInstance : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   1014: invokevirtual setVideoObject : (Ljava/lang/Object;)V
    //   1017: aload #4
    //   1019: astore_0
    //   1020: goto -> 779
    // Exception table:
    //   from	to	target	type
    //   43	243	734	java/lang/Exception
    //   249	454	734	java/lang/Exception
    //   466	617	734	java/lang/Exception
    //   617	683	683	java/lang/Exception
    //   684	734	734	java/lang/Exception
    //   798	862	734	java/lang/Exception
    //   865	872	734	java/lang/Exception
    //   887	1017	734	java/lang/Exception
  }
  
  public static SmiResult a(Object paramObject) {
    if (cu != null)
      return a(M, paramObject, O); 
    SmiResult smiResult = new SmiResult();
    smiResult.setSdState(SdState.SD_NOT_AVAILABLE);
    smiResult.setSdReason(SdReason.SD_NOT_AVAILABLE_SD_REGISTRATION_NOT_DONE);
    smiResult.setVideoObject(paramObject);
    return smiResult;
  }
  
  public static m a(Context paramContext, String paramString1, String paramString2, String paramString3, boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: ifnull -> 266
    //   4: getstatic com/datami/smi/b/m.aN : Z
    //   7: ifeq -> 266
    //   10: aload_0
    //   11: invokestatic a : (Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   14: astore #7
    //   16: aload #7
    //   18: bipush #104
    //   20: sipush #4050
    //   23: bipush #94
    //   25: invokestatic a : (III)Ljava/lang/String;
    //   28: getstatic com/datami/smi/b/m.aJ : I
    //   31: invokeinterface getInt : (Ljava/lang/String;I)I
    //   36: putstatic com/datami/smi/b/m.aJ : I
    //   39: aload #7
    //   41: bipush #104
    //   43: sipush #382
    //   46: bipush #95
    //   48: invokestatic a : (III)Ljava/lang/String;
    //   51: getstatic com/datami/smi/b/m.aK : I
    //   54: invokeinterface getInt : (Ljava/lang/String;I)I
    //   59: putstatic com/datami/smi/b/m.aK : I
    //   62: aload #7
    //   64: bipush #105
    //   66: sipush #2889
    //   69: bipush #93
    //   71: invokestatic a : (III)Ljava/lang/String;
    //   74: getstatic com/datami/smi/b/m.aH : I
    //   77: invokeinterface getInt : (Ljava/lang/String;I)I
    //   82: putstatic com/datami/smi/b/m.aH : I
    //   85: aload #7
    //   87: getstatic com/datami/smi/b/m.cB : [B
    //   90: sipush #836
    //   93: baload
    //   94: sipush #4029
    //   97: bipush #93
    //   99: invokestatic a : (III)Ljava/lang/String;
    //   102: getstatic com/datami/smi/b/m.aI : I
    //   105: invokeinterface getInt : (Ljava/lang/String;I)I
    //   110: putstatic com/datami/smi/b/m.aI : I
    //   113: aload #7
    //   115: bipush #105
    //   117: sipush #2103
    //   120: bipush #92
    //   122: invokestatic a : (III)Ljava/lang/String;
    //   125: getstatic com/datami/smi/b/m.aL : Z
    //   128: invokeinterface getBoolean : (Ljava/lang/String;Z)Z
    //   133: putstatic com/datami/smi/b/m.aL : Z
    //   136: aload #7
    //   138: getstatic com/datami/smi/b/m.cB : [B
    //   141: sipush #836
    //   144: baload
    //   145: sipush #586
    //   148: bipush #92
    //   150: invokestatic a : (III)Ljava/lang/String;
    //   153: getstatic com/datami/smi/b/m.aM : Z
    //   156: invokeinterface getBoolean : (Ljava/lang/String;Z)Z
    //   161: putstatic com/datami/smi/b/m.aM : Z
    //   164: aload #7
    //   166: getstatic com/datami/smi/b/m.cB : [B
    //   169: sipush #3021
    //   172: baload
    //   173: iconst_1
    //   174: iadd
    //   175: sipush #1252
    //   178: getstatic com/datami/smi/b/m.cB : [B
    //   181: sipush #243
    //   184: baload
    //   185: invokestatic a : (III)Ljava/lang/String;
    //   188: iconst_0
    //   189: invokeinterface getBoolean : (Ljava/lang/String;Z)Z
    //   194: putstatic com/datami/smi/b/m.cy : Z
    //   197: aload #7
    //   199: getstatic com/datami/smi/b/m.cB : [B
    //   202: sipush #836
    //   205: baload
    //   206: sipush #1700
    //   209: getstatic com/datami/smi/b/m.cB : [B
    //   212: sipush #270
    //   215: baload
    //   216: invokestatic a : (III)Ljava/lang/String;
    //   219: iconst_1
    //   220: invokeinterface getBoolean : (Ljava/lang/String;Z)Z
    //   225: putstatic com/datami/smi/b/m.cz : Z
    //   228: aload #7
    //   230: bipush #105
    //   232: sipush #3254
    //   235: getstatic com/datami/smi/b/m.cB : [B
    //   238: sipush #243
    //   241: baload
    //   242: invokestatic a : (III)Ljava/lang/String;
    //   245: getstatic com/datami/smi/b/m.g : Lcom/datami/smi/b/l;
    //   248: invokevirtual toString : ()Ljava/lang/String;
    //   251: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   256: invokestatic a : (Ljava/lang/String;)Lcom/datami/smi/b/l;
    //   259: putstatic com/datami/smi/b/m.g : Lcom/datami/smi/b/l;
    //   262: iconst_0
    //   263: putstatic com/datami/smi/b/m.aN : Z
    //   266: new com/datami/smi/b/m
    //   269: dup
    //   270: invokespecial <init> : ()V
    //   273: astore #7
    //   275: aload_1
    //   276: ifnull -> 292
    //   279: aload_1
    //   280: invokevirtual isEmpty : ()Z
    //   283: ifne -> 292
    //   286: aload #7
    //   288: aload_1
    //   289: putfield Q : Ljava/lang/String;
    //   292: aload_0
    //   293: putstatic com/datami/smi/b/m.M : Landroid/content/Context;
    //   296: aload_2
    //   297: putstatic com/datami/smi/b/m.O : Ljava/lang/String;
    //   300: aload #7
    //   302: aload_0
    //   303: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   306: invokevirtual getPackageName : ()Ljava/lang/String;
    //   309: putfield P : Ljava/lang/String;
    //   312: aload #7
    //   314: aload_3
    //   315: putfield N : Ljava/lang/String;
    //   318: getstatic com/datami/smi/b/m.M : Landroid/content/Context;
    //   321: invokestatic d : (Landroid/content/Context;)Z
    //   324: istore #6
    //   326: new java/lang/StringBuilder
    //   329: dup
    //   330: invokespecial <init> : ()V
    //   333: bipush #109
    //   335: sipush #1122
    //   338: bipush #94
    //   340: invokestatic a : (III)Ljava/lang/String;
    //   343: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   346: iload #6
    //   348: invokevirtual append : (Z)Ljava/lang/StringBuilder;
    //   351: pop
    //   352: iload #6
    //   354: ifeq -> 379
    //   357: aload #7
    //   359: iconst_1
    //   360: putfield ac : I
    //   363: aload #7
    //   365: aload #7
    //   367: getfield Q : Ljava/lang/String;
    //   370: putfield T : Ljava/lang/String;
    //   373: invokestatic ao : ()V
    //   376: aload #7
    //   378: areturn
    //   379: getstatic com/datami/smi/b/m.cB : [B
    //   382: sipush #3021
    //   385: baload
    //   386: sipush #688
    //   389: getstatic com/datami/smi/b/m.cB : [B
    //   392: sipush #218
    //   395: baload
    //   396: invokestatic a : (III)Ljava/lang/String;
    //   399: pop
    //   400: aload_0
    //   401: getstatic com/datami/smi/b/m.cB : [B
    //   404: sipush #3021
    //   407: baload
    //   408: sipush #1953
    //   411: bipush #94
    //   413: invokestatic a : (III)Ljava/lang/String;
    //   416: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   419: checkcast android/net/ConnectivityManager
    //   422: astore_2
    //   423: aload_2
    //   424: ifnonnull -> 455
    //   427: new java/lang/Exception
    //   430: dup
    //   431: getstatic com/datami/smi/b/m.cB : [B
    //   434: sipush #409
    //   437: baload
    //   438: sipush #655
    //   441: getstatic com/datami/smi/b/m.cB : [B
    //   444: sipush #1024
    //   447: baload
    //   448: invokestatic a : (III)Ljava/lang/String;
    //   451: invokespecial <init> : (Ljava/lang/String;)V
    //   454: athrow
    //   455: aload_2
    //   456: iconst_0
    //   457: invokevirtual getNetworkInfo : (I)Landroid/net/NetworkInfo;
    //   460: astore_2
    //   461: new java/lang/StringBuilder
    //   464: dup
    //   465: invokespecial <init> : ()V
    //   468: getstatic com/datami/smi/b/m.cB : [B
    //   471: sipush #228
    //   474: baload
    //   475: sipush #3161
    //   478: getstatic com/datami/smi/b/m.cB : [B
    //   481: sipush #291
    //   484: baload
    //   485: invokestatic a : (III)Ljava/lang/String;
    //   488: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   491: aload_2
    //   492: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   495: pop
    //   496: aload_2
    //   497: invokevirtual isConnectedOrConnecting : ()Z
    //   500: ifne -> 529
    //   503: aload #7
    //   505: iconst_3
    //   506: putfield ac : I
    //   509: aload #7
    //   511: aload #7
    //   513: getfield Q : Ljava/lang/String;
    //   516: putfield T : Ljava/lang/String;
    //   519: aload #7
    //   521: ldc 100013
    //   523: putfield X : I
    //   526: aload #7
    //   528: areturn
    //   529: getstatic com/datami/smi/b/m.cv : Lcom/datami/smi/c/c;
    //   532: ifnull -> 550
    //   535: getstatic com/datami/smi/b/m.cv : Lcom/datami/smi/c/c;
    //   538: invokevirtual isAlive : ()Z
    //   541: ifeq -> 550
    //   544: getstatic com/datami/smi/b/m.cv : Lcom/datami/smi/c/c;
    //   547: invokevirtual join : ()V
    //   550: getstatic com/datami/smi/b/m.cA : Z
    //   553: ifeq -> 575
    //   556: aload #7
    //   558: iconst_3
    //   559: putfield ac : I
    //   562: aload #7
    //   564: aload #7
    //   566: getfield Q : Ljava/lang/String;
    //   569: putfield T : Ljava/lang/String;
    //   572: aload #7
    //   574: areturn
    //   575: getstatic com/datami/smi/b/m.j : Z
    //   578: ifeq -> 639
    //   581: getstatic com/datami/smi/b/m.aG : Z
    //   584: ifne -> 601
    //   587: getstatic com/datami/smi/b/m.cu : Lcom/datami/smi/f/g;
    //   590: ifnull -> 633
    //   593: iconst_1
    //   594: istore #5
    //   596: iload #5
    //   598: ifeq -> 639
    //   601: aload #7
    //   603: iconst_3
    //   604: putfield ac : I
    //   607: aload #7
    //   609: ldc 100009
    //   611: putfield X : I
    //   614: ldc_w ''
    //   617: putstatic com/datami/smi/b/m.ae : Ljava/lang/String;
    //   620: ldc_w ''
    //   623: putstatic com/datami/smi/b/m.R : Ljava/lang/String;
    //   626: iconst_0
    //   627: putstatic com/datami/smi/b/m.j : Z
    //   630: aload #7
    //   632: areturn
    //   633: iconst_0
    //   634: istore #5
    //   636: goto -> 596
    //   639: aload_0
    //   640: invokestatic b : (Landroid/content/Context;)I
    //   643: istore #5
    //   645: new java/lang/StringBuilder
    //   648: dup
    //   649: invokespecial <init> : ()V
    //   652: bipush #93
    //   654: sipush #1172
    //   657: getstatic com/datami/smi/b/m.cC : I
    //   660: bipush #8
    //   662: ior
    //   663: invokestatic a : (III)Ljava/lang/String;
    //   666: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   669: iload #5
    //   671: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   674: pop
    //   675: iload #5
    //   677: ifgt -> 686
    //   680: invokestatic ap : ()Z
    //   683: ifne -> 712
    //   686: aload #7
    //   688: iconst_3
    //   689: putfield ac : I
    //   692: aload #7
    //   694: aload #7
    //   696: getfield Q : Ljava/lang/String;
    //   699: putfield T : Ljava/lang/String;
    //   702: aload #7
    //   704: iload #5
    //   706: putfield X : I
    //   709: aload #7
    //   711: areturn
    //   712: aload_1
    //   713: invokestatic b : (Ljava/lang/String;)Z
    //   716: ifeq -> 734
    //   719: aload #7
    //   721: aload_1
    //   722: putfield T : Ljava/lang/String;
    //   725: aload #7
    //   727: iconst_5
    //   728: putfield ac : I
    //   731: aload #7
    //   733: areturn
    //   734: iload #4
    //   736: ifeq -> 758
    //   739: aload #7
    //   741: getstatic com/datami/smi/b/m.cB : [B
    //   744: iconst_1
    //   745: baload
    //   746: ineg
    //   747: sipush #1474
    //   750: bipush #97
    //   752: invokestatic a : (III)Ljava/lang/String;
    //   755: putfield W : Ljava/lang/String;
    //   758: aload_1
    //   759: ifnull -> 785
    //   762: aload_1
    //   763: invokevirtual toString : ()Ljava/lang/String;
    //   766: invokevirtual isEmpty : ()Z
    //   769: ifne -> 785
    //   772: aload #7
    //   774: new java/net/URI
    //   777: dup
    //   778: aload_1
    //   779: invokespecial <init> : (Ljava/lang/String;)V
    //   782: putfield S : Ljava/net/URI;
    //   785: invokestatic c : ()Z
    //   788: ifeq -> 857
    //   791: invokestatic b : ()Z
    //   794: ifne -> 857
    //   797: invokestatic a : ()Z
    //   800: ifeq -> 857
    //   803: getstatic com/datami/smi/b/m.V : Z
    //   806: ifne -> 857
    //   809: aload #7
    //   811: iconst_3
    //   812: putfield ac : I
    //   815: aload #7
    //   817: aload #7
    //   819: getfield Q : Ljava/lang/String;
    //   822: putfield T : Ljava/lang/String;
    //   825: invokestatic b : ()Z
    //   828: invokestatic a : ()Z
    //   831: invokestatic a : (ZZ)V
    //   834: bipush #104
    //   836: getstatic com/datami/smi/b/m.cC : I
    //   839: sipush #896
    //   842: ior
    //   843: getstatic com/datami/smi/b/m.cB : [B
    //   846: sipush #2418
    //   849: baload
    //   850: invokestatic a : (III)Ljava/lang/String;
    //   853: pop
    //   854: aload #7
    //   856: areturn
    //   857: aload_0
    //   858: invokestatic a : (Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   861: astore_2
    //   862: aload_2
    //   863: invokestatic a : (Landroid/content/SharedPreferences;)Z
    //   866: ifeq -> 973
    //   869: getstatic com/datami/smi/b/m.cB : [B
    //   872: sipush #3021
    //   875: baload
    //   876: iconst_1
    //   877: iadd
    //   878: istore #5
    //   880: new com/datami/smi/c/a
    //   883: dup
    //   884: iload #5
    //   886: iload #5
    //   888: bipush #33
    //   890: ior
    //   891: getstatic com/datami/smi/b/m.cB : [B
    //   894: sipush #3021
    //   897: baload
    //   898: invokestatic a : (III)Ljava/lang/String;
    //   901: invokespecial <init> : (Ljava/lang/String;)V
    //   904: astore_0
    //   905: aload_2
    //   906: bipush #106
    //   908: sipush #161
    //   911: getstatic com/datami/smi/b/m.cB : [B
    //   914: sipush #3021
    //   917: baload
    //   918: invokestatic a : (III)Ljava/lang/String;
    //   921: aconst_null
    //   922: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   927: astore_2
    //   928: aload_2
    //   929: ifnull -> 1041
    //   932: aload #7
    //   934: new org/json/JSONObject
    //   937: dup
    //   938: aload_0
    //   939: aload_2
    //   940: invokevirtual b : (Ljava/lang/String;)Ljava/lang/String;
    //   943: invokespecial <init> : (Ljava/lang/String;)V
    //   946: invokevirtual a : (Lorg/json/JSONObject;)V
    //   949: aload_1
    //   950: ifnull -> 1404
    //   953: aload_1
    //   954: invokevirtual isEmpty : ()Z
    //   957: ifne -> 1404
    //   960: aload #7
    //   962: aload #7
    //   964: invokespecial ar : ()Ljava/lang/String;
    //   967: putfield T : Ljava/lang/String;
    //   970: goto -> 1404
    //   973: aload_2
    //   974: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   979: astore_0
    //   980: aload_0
    //   981: bipush #106
    //   983: sipush #161
    //   986: getstatic com/datami/smi/b/m.cB : [B
    //   989: sipush #3021
    //   992: baload
    //   993: invokestatic a : (III)Ljava/lang/String;
    //   996: invokeinterface remove : (Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   1001: pop
    //   1002: aload_0
    //   1003: bipush #106
    //   1005: getstatic com/datami/smi/b/m.cB : [B
    //   1008: sipush #347
    //   1011: baload
    //   1012: getstatic com/datami/smi/b/m.cB : [B
    //   1015: sipush #817
    //   1018: baload
    //   1019: invokestatic a : (III)Ljava/lang/String;
    //   1022: invokeinterface remove : (Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   1027: pop
    //   1028: aload_0
    //   1029: invokeinterface apply : ()V
    //   1034: aload_0
    //   1035: invokeinterface commit : ()Z
    //   1040: pop
    //   1041: getstatic com/datami/smi/b/m.cB : [B
    //   1044: sipush #228
    //   1047: baload
    //   1048: sipush #3861
    //   1051: getstatic com/datami/smi/b/m.cC : I
    //   1054: invokestatic a : (III)Ljava/lang/String;
    //   1057: pop
    //   1058: invokestatic getMainLooper : ()Landroid/os/Looper;
    //   1061: invokevirtual getThread : ()Ljava/lang/Thread;
    //   1064: invokestatic currentThread : ()Ljava/lang/Thread;
    //   1067: if_acmpne -> 1253
    //   1070: iconst_1
    //   1071: istore #5
    //   1073: iload #5
    //   1075: ifeq -> 1259
    //   1078: getstatic com/datami/smi/b/m.cB : [B
    //   1081: iconst_0
    //   1082: baload
    //   1083: sipush #4204
    //   1086: getstatic com/datami/smi/b/m.cB : [B
    //   1089: bipush #18
    //   1091: baload
    //   1092: invokestatic a : (III)Ljava/lang/String;
    //   1095: pop
    //   1096: new java/lang/Thread
    //   1099: dup
    //   1100: aload #7
    //   1102: invokespecial <init> : (Ljava/lang/Runnable;)V
    //   1105: astore_0
    //   1106: aload_0
    //   1107: invokevirtual start : ()V
    //   1110: aload_0
    //   1111: invokevirtual join : ()V
    //   1114: aload #7
    //   1116: getfield aa : Ljava/lang/Exception;
    //   1119: ifnull -> 1221
    //   1122: new java/util/Properties
    //   1125: dup
    //   1126: invokespecial <init> : ()V
    //   1129: astore_1
    //   1130: bipush #99
    //   1132: sipush #1694
    //   1135: bipush #99
    //   1137: invokestatic a : (III)Ljava/lang/String;
    //   1140: astore_2
    //   1141: aload #7
    //   1143: getfield aa : Ljava/lang/Exception;
    //   1146: invokevirtual getMessage : ()Ljava/lang/String;
    //   1149: ifnull -> 1369
    //   1152: aload #7
    //   1154: getfield aa : Ljava/lang/Exception;
    //   1157: invokevirtual getMessage : ()Ljava/lang/String;
    //   1160: astore_0
    //   1161: aload_1
    //   1162: aload_2
    //   1163: aload_0
    //   1164: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1167: pop
    //   1168: aload_1
    //   1169: bipush #105
    //   1171: sipush #618
    //   1174: bipush #103
    //   1176: invokestatic a : (III)Ljava/lang/String;
    //   1179: getstatic com/datami/smi/d/c.c : Lcom/datami/smi/d/c;
    //   1182: invokestatic a : (Lcom/datami/smi/d/c;)Ljava/lang/String;
    //   1185: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1188: pop
    //   1189: getstatic com/datami/smi/d/d.c : Lcom/datami/smi/d/d;
    //   1192: invokestatic a : (Lcom/datami/smi/d/d;)Ljava/lang/String;
    //   1195: aload_1
    //   1196: invokestatic b : (Ljava/lang/String;Ljava/util/Properties;)V
    //   1199: getstatic com/datami/smi/b/m.cB : [B
    //   1202: sipush #1430
    //   1205: baload
    //   1206: ineg
    //   1207: sipush #3094
    //   1210: getstatic com/datami/smi/b/m.cB : [B
    //   1213: sipush #265
    //   1216: baload
    //   1217: invokestatic a : (III)Ljava/lang/String;
    //   1220: pop
    //   1221: aload #7
    //   1223: getfield ac : I
    //   1226: iconst_2
    //   1227: if_icmpeq -> 1240
    //   1230: aload #7
    //   1232: getfield ac : I
    //   1235: bipush #6
    //   1237: if_icmpne -> 1381
    //   1240: aload #7
    //   1242: aload #7
    //   1244: invokespecial ar : ()Ljava/lang/String;
    //   1247: putfield T : Ljava/lang/String;
    //   1250: aload #7
    //   1252: areturn
    //   1253: iconst_0
    //   1254: istore #5
    //   1256: goto -> 1073
    //   1259: aload #7
    //   1261: invokevirtual run : ()V
    //   1264: goto -> 1114
    //   1267: astore_1
    //   1268: new java/util/Properties
    //   1271: dup
    //   1272: invokespecial <init> : ()V
    //   1275: astore_2
    //   1276: bipush #99
    //   1278: sipush #1694
    //   1281: bipush #99
    //   1283: invokestatic a : (III)Ljava/lang/String;
    //   1286: astore_3
    //   1287: aload_1
    //   1288: invokevirtual getMessage : ()Ljava/lang/String;
    //   1291: ifnull -> 1361
    //   1294: aload_1
    //   1295: invokevirtual getMessage : ()Ljava/lang/String;
    //   1298: astore_0
    //   1299: aload_2
    //   1300: aload_3
    //   1301: aload_0
    //   1302: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1305: pop
    //   1306: aload_2
    //   1307: bipush #105
    //   1309: sipush #618
    //   1312: bipush #103
    //   1314: invokestatic a : (III)Ljava/lang/String;
    //   1317: getstatic com/datami/smi/d/c.c : Lcom/datami/smi/d/c;
    //   1320: invokestatic a : (Lcom/datami/smi/d/c;)Ljava/lang/String;
    //   1323: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1326: pop
    //   1327: getstatic com/datami/smi/d/d.c : Lcom/datami/smi/d/d;
    //   1330: invokestatic a : (Lcom/datami/smi/d/d;)Ljava/lang/String;
    //   1333: aload_2
    //   1334: invokestatic b : (Ljava/lang/String;Ljava/util/Properties;)V
    //   1337: getstatic com/datami/smi/b/m.cB : [B
    //   1340: sipush #1430
    //   1343: baload
    //   1344: ineg
    //   1345: sipush #3094
    //   1348: getstatic com/datami/smi/b/m.cB : [B
    //   1351: sipush #265
    //   1354: baload
    //   1355: invokestatic a : (III)Ljava/lang/String;
    //   1358: pop
    //   1359: aload_1
    //   1360: athrow
    //   1361: aload_1
    //   1362: invokevirtual getClass : ()Ljava/lang/Class;
    //   1365: astore_0
    //   1366: goto -> 1299
    //   1369: aload #7
    //   1371: getfield aa : Ljava/lang/Exception;
    //   1374: invokevirtual getClass : ()Ljava/lang/Class;
    //   1377: astore_0
    //   1378: goto -> 1161
    //   1381: aload #7
    //   1383: iconst_3
    //   1384: putfield ac : I
    //   1387: aload #7
    //   1389: aload #7
    //   1391: getfield Q : Ljava/lang/String;
    //   1394: putfield T : Ljava/lang/String;
    //   1397: goto -> 1250
    //   1400: astore_0
    //   1401: goto -> 1114
    //   1404: aload #7
    //   1406: areturn
    // Exception table:
    //   from	to	target	type
    //   739	758	1267	java/lang/Exception
    //   762	785	1267	java/lang/Exception
    //   785	854	1267	java/lang/Exception
    //   857	928	1267	java/lang/Exception
    //   932	949	1267	java/lang/Exception
    //   953	970	1267	java/lang/Exception
    //   973	1041	1267	java/lang/Exception
    //   1041	1070	1267	java/lang/Exception
    //   1078	1110	1267	java/lang/Exception
    //   1110	1114	1400	java/lang/Exception
    //   1259	1264	1267	java/lang/Exception
  }
  
  private static m a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean) {
    return a(paramContext, paramString1, paramString2, "", paramBoolean);
  }
  
  public static t a(m paramm) {
    long l1 = System.currentTimeMillis();
    t t = t.b;
    Log.i(J, a(cB[3021], 1606, cB[270]));
    StringBuilder stringBuilder = (new StringBuilder()).append(R);
    byte b = cB[2660];
    String str = stringBuilder.append(a(b, b | 0xD2, 105)).append(ae).toString();
    int i = paramm.af;
    b = 0;
    while (b <= 1) {
      try {
        SocketChannel socketChannel = e.a(str, i, paramm.U);
        if (socketChannel != null) {
          Log.i(J, a(93, 543, cB[817]));
          d.a().b(System.currentTimeMillis() - l1);
          try {
            t t1;
            socketChannel.configureBlocking(true);
            socketChannel.socket();
            f f1 = e.a(socketChannel, paramm, true);
            if (f.b == f1) {
              t1 = t.a;
              a(cB[836], 4006, cB[817]);
            } else if (f.c == t1) {
              t1 = t.d;
            } else {
              t1 = t.b;
            } 
          } catch (Exception exception) {
            a(cB[836], 3078, cB[3021]);
            t t1 = t.b;
          } finally {
            try {
              iOException.close();
            } catch (IOException iOException1) {}
          } 
        } 
      } catch (Exception exception) {
        String str1;
        Class<?> clazz;
        exception.getMessage();
        Properties properties = new Properties();
        byte b1 = cB[8];
        String str2 = a(104, b1, b1 & 0x64);
        if (exception.getMessage() != null) {
          str1 = exception.getMessage();
        } else {
          clazz = str1.getClass();
        } 
        properties.put(str2, clazz);
        properties.put(a(105, 618, 103), a.a(c.c));
        b(a.a(d.f), properties);
        (new StringBuilder()).append(a(cB[0], 630, cB[817])).append(str).append(a(-cB[575], 349, 105)).append(str).append(a(cB[159], 3445, 99)).append(b);
      } 
      int j = b + 1;
    } 
    Log.i(J, a(93, 960, cB[243]));
    return t.b;
  }
  
  private static Object a(Class paramClass, Class[] paramArrayOfClass, Object[] paramArrayOfObject) {
    return paramClass.getConstructor(paramArrayOfClass).newInstance(paramArrayOfObject);
  }
  
  private static Object a(Object paramObject, String paramString, Class[] paramArrayOfClass, Object[] paramArrayOfObject) {
    Method method = paramObject.getClass().getMethod(paramString, paramArrayOfClass);
    method.setAccessible(true);
    return method.invoke(paramObject, paramArrayOfObject);
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i = paramInt1 + 10;
    int j = 106 - paramInt3;
    byte[] arrayOfByte1 = cB;
    paramInt2 += 4;
    byte[] arrayOfByte2 = new byte[j];
    if (arrayOfByte1 == null) {
      paramInt1 = 0;
      paramInt3 = paramInt2;
    } else {
      boolean bool = false;
      paramInt3 = paramInt2;
      paramInt1 = i;
      paramInt2 = bool;
      paramInt3++;
      arrayOfByte2[paramInt2] = (byte)paramInt1;
    } 
    i += paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = i;
    paramInt3++;
    arrayOfByte2[paramInt2] = (byte)paramInt1;
  }
  
  public static String a(Context paramContext, String paramString) {
    byte b;
    String str;
    aG = false;
    StringBuilder stringBuilder = new StringBuilder();
    if (paramString.contains(a(104, 187, 99))) {
      b = 1;
      str = paramString.substring(a(104, 187, 99).length());
    } else {
      str = null;
      b = 0;
    } 
    m m1 = a(paramContext, paramString, "", "", false);
    if (m1.ac == 2) {
      String str1;
      if (b) {
        stringBuilder.append(a(94, cB[63], 99));
        stringBuilder.append(R);
        b = cB[2660];
        stringBuilder.append(a(b, b | 0xD2, 105));
        stringBuilder.append(a(104, 2148, cB[243]));
        stringBuilder.append(a(cB[18], 246, 105));
        stringBuilder.append(str);
        str1 = i(stringBuilder.toString());
      } else {
        str1 = str1.ar();
      } 
    } else {
      m1 = null;
    } 
    return (String)((m1 == null) ? paramString : m1);
  }
  
  private static String a(String paramString1, String paramString2) {
    String str2 = null;
    String str1 = str2;
    try {
      byte b = cB[141];
      int i = b | 0xF41;
      str1 = str2;
      Mac mac = Mac.getInstance(a(b, i, i & 0xE2));
      str1 = str2;
      mac.init(new SecretKeySpec(paramString1.getBytes(a(-cB[113], 3668, 101)), mac.getAlgorithm()));
      str1 = str2;
      str2 = Base64.encodeToString(mac.doFinal(paramString2.getBytes()), 0);
      str1 = str2;
      (new StringBuilder()).append(a(cB[326], 2971, 100)).append(paramString1).append(a(cB[159], 238, 97)).append(paramString2).append(a(cB[159], 196, 98)).append(str2);
      return str2;
    } catch (Exception exception) {
      a(93, 2498, cB[73]);
      return str1;
    } 
  }
  
  private static String a(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4) {
    if (paramInt == -1) {
      if (paramString4 == null || paramString4.length() == 0) {
        paramInt = cB[48];
        paramString2 = String.format(a(paramInt, paramInt | 0x1A0, 102), new Object[] { paramString2, paramString3 });
      } else {
        paramString2 = String.format(a(cB[48], 491, 99), new Object[] { paramString2, paramString3, paramString4 });
      } 
    } else if (paramString4 == null || paramString4.length() == 0) {
      paramString2 = String.format(a(cB[48], 3682, 99), new Object[] { paramString2, Integer.valueOf(paramInt), paramString3 });
    } else {
      paramString2 = String.format(a(cB[48], 2078, 96), new Object[] { paramString2, Integer.valueOf(paramInt), paramString3, paramString4 });
    } 
    paramString3 = paramString2;
    if (paramString1 != null) {
      paramString3 = paramString2;
      if (paramString1.length() > 0)
        paramString3 = paramString1 + a(-cB[575], 3544, 103) + paramString2; 
    } 
    return paramString3;
  }
  
  public static void a(int paramInt) {
    k = System.currentTimeMillis() + (paramInt * 60 * 1000);
  }
  
  private static void a(Context paramContext, int paramInt) {
    if (aB != null) {
      aB.a();
      aB = null;
    } 
    r r1 = new r(paramContext);
    aB = r1;
    r1.a(paramInt);
  }
  
  private static void a(Context paramContext, m paramm) {
    g g1;
    if (cu == null) {
      long l1 = System.currentTimeMillis();
      g1 = new g(paramm);
      int i = g1.b();
      if (i > 0) {
        (new StringBuilder()).append(a(cB[1249], 246, -cB[1430])).append(i);
        if (l.a(paramContext, a(cB[800], 1405, 97), i)) {
          g1.c();
          cu = g1;
        } 
        d.a().f(System.currentTimeMillis() - l1);
      } 
      return;
    } 
    cu.a((m)g1);
  }
  
  public static void a(Context paramContext, boolean paramBoolean) {
    if (cv == null || !cv.isAlive()) {
      c c1 = new c(paramContext, paramBoolean);
      cv = c1;
      c1.start();
    } 
  }
  
  public static void a(WebView paramWebView) {
    aG = false;
    if (cu != null && Build.VERSION.SDK_INT > 18)
      l.a(paramWebView.getContext().getApplicationContext(), a(cB[800], 1405, 97), cu.a()); 
  }
  
  public static void a(SdStateChangeListener paramSdStateChangeListener) {
    bi.add(paramSdStateChangeListener);
  }
  
  private static void a(m paramm, i parami) {
    R = parami.a();
    ae = parami.d();
    paramm.ai = parami.e();
    paramm.af = parami.f();
    paramm.ac = parami.i();
    c.set(parami.c());
    paramm.U = parami.h();
    paramm.T = paramm.ar();
  }
  
  public static void a(String paramString) {
    ax = paramString;
  }
  
  public static void a(String paramString1, Context paramContext, String paramString2, int paramInt, boolean paramBoolean, List paramList) {
    // Byte code:
    //   0: aload_1
    //   1: putstatic com/datami/smi/b/m.M : Landroid/content/Context;
    //   4: getstatic android/os/Build$VERSION.SDK_INT : I
    //   7: istore #6
    //   9: iload #6
    //   11: bipush #14
    //   13: if_icmpge -> 93
    //   16: iconst_1
    //   17: istore #6
    //   19: new com/datami/smi/b/g
    //   22: dup
    //   23: aload_0
    //   24: aload_1
    //   25: aload_2
    //   26: iload_3
    //   27: iload #4
    //   29: aload #5
    //   31: invokespecial <init> : (Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZLjava/util/List;)V
    //   34: astore_0
    //   35: aload_0
    //   36: invokevirtual start : ()V
    //   39: iload #6
    //   41: ifeq -> 92
    //   44: getstatic com/datami/smi/b/m.J : Ljava/lang/String;
    //   47: bipush #105
    //   49: sipush #2917
    //   52: getstatic com/datami/smi/b/m.cB : [B
    //   55: sipush #291
    //   58: baload
    //   59: invokestatic a : (III)Ljava/lang/String;
    //   62: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   65: pop
    //   66: aload_0
    //   67: invokevirtual join : ()V
    //   70: getstatic com/datami/smi/b/m.J : Ljava/lang/String;
    //   73: bipush #105
    //   75: sipush #3053
    //   78: getstatic com/datami/smi/b/m.cB : [B
    //   81: sipush #270
    //   84: baload
    //   85: invokestatic a : (III)Ljava/lang/String;
    //   88: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   91: pop
    //   92: return
    //   93: aload_1
    //   94: invokestatic d : (Landroid/content/Context;)Z
    //   97: ifeq -> 106
    //   100: iconst_1
    //   101: istore #6
    //   103: goto -> 19
    //   106: aload_1
    //   107: invokestatic a : (Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   110: astore #7
    //   112: aload #7
    //   114: ifnonnull -> 139
    //   117: bipush #102
    //   119: sipush #1233
    //   122: getstatic com/datami/smi/b/m.cB : [B
    //   125: sipush #243
    //   128: baload
    //   129: invokestatic a : (III)Ljava/lang/String;
    //   132: pop
    //   133: iconst_0
    //   134: istore #6
    //   136: goto -> 19
    //   139: aload #7
    //   141: invokestatic a : (Landroid/content/SharedPreferences;)Z
    //   144: ifeq -> 174
    //   147: getstatic com/datami/smi/b/m.cB : [B
    //   150: sipush #228
    //   153: baload
    //   154: sipush #3502
    //   157: getstatic com/datami/smi/b/m.cB : [B
    //   160: sipush #843
    //   163: baload
    //   164: invokestatic a : (III)Ljava/lang/String;
    //   167: pop
    //   168: iconst_1
    //   169: istore #6
    //   171: goto -> 19
    //   174: aload #7
    //   176: invokestatic a : (Landroid/content/SharedPreferences;)Z
    //   179: ifeq -> 209
    //   182: getstatic com/datami/smi/b/m.cB : [B
    //   185: sipush #836
    //   188: baload
    //   189: sipush #1729
    //   192: getstatic com/datami/smi/b/m.cB : [B
    //   195: sipush #836
    //   198: baload
    //   199: invokestatic a : (III)Ljava/lang/String;
    //   202: pop
    //   203: iconst_1
    //   204: istore #6
    //   206: goto -> 19
    //   209: getstatic com/datami/smi/b/m.J : Ljava/lang/String;
    //   212: bipush #105
    //   214: sipush #932
    //   217: getstatic com/datami/smi/b/m.cB : [B
    //   220: sipush #270
    //   223: baload
    //   224: invokestatic a : (III)Ljava/lang/String;
    //   227: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   230: pop
    //   231: invokestatic d : ()Ljava/lang/String;
    //   234: astore #7
    //   236: invokestatic e : ()Ljava/lang/String;
    //   239: astore #9
    //   241: aload #7
    //   243: ifnull -> 271
    //   246: aload #9
    //   248: ifnull -> 271
    //   251: aload #7
    //   253: invokevirtual length : ()I
    //   256: ifeq -> 271
    //   259: aload #9
    //   261: astore #8
    //   263: aload #9
    //   265: invokevirtual length : ()I
    //   268: ifne -> 313
    //   271: aload_1
    //   272: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   275: bipush #102
    //   277: sipush #2099
    //   280: bipush #101
    //   282: invokestatic a : (III)Ljava/lang/String;
    //   285: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   288: checkcast android/telephony/TelephonyManager
    //   291: invokevirtual getNetworkOperator : ()Ljava/lang/String;
    //   294: astore #8
    //   296: aload #8
    //   298: iconst_0
    //   299: iconst_3
    //   300: invokevirtual substring : (II)Ljava/lang/String;
    //   303: astore #7
    //   305: aload #8
    //   307: iconst_3
    //   308: invokevirtual substring : (I)Ljava/lang/String;
    //   311: astore #8
    //   313: aload #7
    //   315: ifnull -> 659
    //   318: aload #8
    //   320: ifnull -> 659
    //   323: aload #7
    //   325: invokevirtual length : ()I
    //   328: ifle -> 659
    //   331: aload #8
    //   333: invokevirtual length : ()I
    //   336: ifle -> 659
    //   339: aload_1
    //   340: invokevirtual getPackageName : ()Ljava/lang/String;
    //   343: invokestatic b : (Ljava/lang/String;)Ljava/lang/String;
    //   346: astore #9
    //   348: new java/lang/StringBuilder
    //   351: dup
    //   352: invokespecial <init> : ()V
    //   355: aload #8
    //   357: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: astore #8
    //   362: getstatic com/datami/smi/b/m.cB : [B
    //   365: sipush #2660
    //   368: baload
    //   369: istore #6
    //   371: aload #8
    //   373: iload #6
    //   375: iload #6
    //   377: sipush #210
    //   380: ior
    //   381: bipush #105
    //   383: invokestatic a : (III)Ljava/lang/String;
    //   386: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   389: aload #7
    //   391: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   394: astore #7
    //   396: getstatic com/datami/smi/b/m.cB : [B
    //   399: sipush #2660
    //   402: baload
    //   403: istore #6
    //   405: aload #7
    //   407: iload #6
    //   409: iload #6
    //   411: sipush #210
    //   414: ior
    //   415: bipush #105
    //   417: invokestatic a : (III)Ljava/lang/String;
    //   420: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   423: aload #9
    //   425: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   428: getstatic com/datami/smi/b/m.cB : [B
    //   431: sipush #2660
    //   434: baload
    //   435: sipush #4423
    //   438: getstatic com/datami/smi/b/m.cC : I
    //   441: bipush #12
    //   443: ior
    //   444: invokestatic a : (III)Ljava/lang/String;
    //   447: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   450: invokevirtual toString : ()Ljava/lang/String;
    //   453: astore #7
    //   455: new java/lang/StringBuilder
    //   458: dup
    //   459: invokespecial <init> : ()V
    //   462: getstatic com/datami/smi/b/m.cB : [B
    //   465: sipush #3021
    //   468: baload
    //   469: iconst_1
    //   470: iadd
    //   471: sipush #3950
    //   474: getstatic com/datami/smi/b/m.cC : I
    //   477: iconst_5
    //   478: iadd
    //   479: invokestatic a : (III)Ljava/lang/String;
    //   482: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   485: aload #7
    //   487: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   490: pop
    //   491: aload #7
    //   493: invokestatic k : (Ljava/lang/String;)Ljava/lang/String;
    //   496: ifnonnull -> 531
    //   499: getstatic com/datami/smi/b/m.J : Ljava/lang/String;
    //   502: bipush #105
    //   504: getstatic com/datami/smi/b/m.cC : I
    //   507: sipush #1664
    //   510: ior
    //   511: getstatic com/datami/smi/b/m.cB : [B
    //   514: sipush #836
    //   517: baload
    //   518: invokestatic a : (III)Ljava/lang/String;
    //   521: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   524: pop
    //   525: iconst_0
    //   526: istore #6
    //   528: goto -> 19
    //   531: new com/datami/smi/b/m
    //   534: dup
    //   535: invokespecial <init> : ()V
    //   538: astore #8
    //   540: aload #8
    //   542: iconst_1
    //   543: putfield ap : Z
    //   546: aload #7
    //   548: putstatic com/datami/smi/b/m.ae : Ljava/lang/String;
    //   551: aload #8
    //   553: sipush #8043
    //   556: putfield af : I
    //   559: aload_1
    //   560: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   563: aload #8
    //   565: invokestatic a : (Landroid/content/Context;Lcom/datami/smi/b/m;)V
    //   568: getstatic com/datami/smi/b/m.J : Ljava/lang/String;
    //   571: getstatic com/datami/smi/b/m.cB : [B
    //   574: sipush #3021
    //   577: baload
    //   578: iconst_1
    //   579: iadd
    //   580: sipush #292
    //   583: getstatic com/datami/smi/b/m.cB : [B
    //   586: sipush #836
    //   589: baload
    //   590: invokestatic a : (III)Ljava/lang/String;
    //   593: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   596: pop
    //   597: iconst_0
    //   598: istore #6
    //   600: goto -> 19
    //   603: astore #7
    //   605: getstatic com/datami/smi/b/m.cB : [B
    //   608: sipush #409
    //   611: baload
    //   612: sipush #1576
    //   615: getstatic com/datami/smi/b/m.cB : [B
    //   618: bipush #113
    //   620: baload
    //   621: ineg
    //   622: invokestatic a : (III)Ljava/lang/String;
    //   625: pop
    //   626: iconst_0
    //   627: istore #6
    //   629: goto -> 19
    //   632: astore_0
    //   633: getstatic com/datami/smi/b/m.cB : [B
    //   636: sipush #3021
    //   639: baload
    //   640: istore_3
    //   641: iload_3
    //   642: iload_3
    //   643: sipush #3362
    //   646: ior
    //   647: getstatic com/datami/smi/b/m.cB : [B
    //   650: bipush #113
    //   652: baload
    //   653: ineg
    //   654: invokestatic a : (III)Ljava/lang/String;
    //   657: pop
    //   658: return
    //   659: aconst_null
    //   660: astore #7
    //   662: goto -> 491
    // Exception table:
    //   from	to	target	type
    //   4	9	603	java/lang/Exception
    //   44	92	632	java/lang/InterruptedException
    //   93	100	603	java/lang/Exception
    //   106	112	603	java/lang/Exception
    //   117	133	603	java/lang/Exception
    //   139	168	603	java/lang/Exception
    //   174	203	603	java/lang/Exception
    //   209	241	603	java/lang/Exception
    //   251	259	603	java/lang/Exception
    //   263	271	603	java/lang/Exception
    //   271	313	603	java/lang/Exception
    //   323	491	603	java/lang/Exception
    //   491	525	603	java/lang/Exception
    //   531	597	603	java/lang/Exception
  }
  
  public static void a(String paramString, HashMap paramHashMap) {
    null = new a(f.b(), paramString, paramHashMap, R);
    synchronized (i) {
      if (i.size() == 1000) {
        a(cC - 2, 3883, cC - 2);
        a(cB[1249], 497, cB[817]);
        i.poll();
      } 
      i.offer(null);
      return;
    } 
  }
  
  public static void a(String paramString, Properties paramProperties) {
    if (M != null) {
      String str;
      if (c.a != null) {
        str = c.a.d(au());
      } else {
        str = au();
      } 
      if (!str.isEmpty() && aM) {
        a(cC - 2, 3883, cC - 2);
        (new StringBuilder()).append(a(cB[1249], cC | 0xB04, cC | 0x8)).append(paramString).append(a(cB[159], 1721, 97)).append(paramProperties);
        Intent intent = new Intent(M.getApplicationContext(), SmiIntentService.class);
        intent.setAction(a(cB[1249], 3481, 97));
        intent.putExtra(a(cC | 0x8, 3536, 97), paramString);
        if (paramProperties != null)
          intent.putExtra(a(cC | 0x8, 1294, 94), paramProperties); 
        if (aE)
          intent.putExtra(a(106, 3040, 101), R); 
        intent.putExtra(a(100, 1636, cC | 0xC), d);
        intent.putExtra(a(109, 2075, 102), aF);
        M.startService(intent);
      } 
    } 
  }
  
  private void a(JSONArray paramJSONArray) {
    (new Thread(new n(this, paramJSONArray))).start();
  }
  
  private void a(boolean paramBoolean) {
    this.U = paramBoolean;
  }
  
  private static void a(boolean paramBoolean1, boolean paramBoolean2) {
    if (!paramBoolean1) {
      if (paramBoolean2) {
        a(cB[1249], 3816, cB[1024]);
        a(M, aK);
        return;
      } 
    } else {
      return;
    } 
    a(cB[1249], 2435, cB[218]);
    a(M, aJ);
  }
  
  public static boolean a(Context paramContext) {
    return (Build.VERSION.SDK_INT < 17) ? (!(Settings.System.getInt(paramContext.getContentResolver(), a(cB[836], 2320, cB[3021] + 1), 0) == 0)) : (!(Settings.Global.getInt(paramContext.getContentResolver(), a(cB[836], 2320, cB[3021] + 1), 0) == 0));
  }
  
  public static boolean a(Context paramContext, SmiResult paramSmiResult, Exception paramException) {
    boolean bool = false;
    if (L != null && paramException == null) {
      int i = cC - 2;
      a(i, i | 0xA20, cB[3021]);
      a(cB[0], 2469, cB[843]);
      L.cancel(false);
    } 
    if (cu != null) {
      l.a(paramContext);
      cu.d();
      cu = null;
      a.a().a(false, SmiSdk.isForeground());
      bool = true;
    } 
    if (paramContext instanceof SdStateChangeListener) {
      (new StringBuilder()).append(a(cB[3021], 3134, cC + 5)).append(paramSmiResult.getSdState().getStatusCode());
      ((SdStateChangeListener)paramContext).onChange(paramSmiResult);
    } 
    Iterator<SdStateChangeListener> iterator = bi.iterator();
    while (iterator.hasNext())
      ((SdStateChangeListener)iterator.next()).onChange(paramSmiResult); 
    return bool;
  }
  
  public static boolean a(SharedPreferences paramSharedPreferences) {
    if (paramSharedPreferences.contains(a(106, cB[347], cB[817]))) {
      long l1 = paramSharedPreferences.getLong(a(106, cB[347], cB[817]), -1L);
      if (paramSharedPreferences.contains(a(106, 161, cB[3021])) && l1 > System.currentTimeMillis())
        return true; 
    } 
    return false;
  }
  
  private static boolean a(String paramString, Context paramContext) {
    String str = b(paramString + a(cB[1123], 1027, cB[185]), paramContext);
    b(paramString + a(cB[1123], 392, cB[291]), paramContext);
    return !(!str.equalsIgnoreCase(a(100, cC | 0x728, 102)) && (!str.equalsIgnoreCase(a(cB[776], 139, cB[3021] + 1)) || !b(paramString + a(cB[1123], 1027, cB[185]), paramContext).equalsIgnoreCase(a(100, cC | 0x728, 102))));
  }
  
  private static Bitmap aA() {
    return null;
  }
  
  private static String aa() {
    return "";
  }
  
  private static int ab() {
    return -1;
  }
  
  private static int ac() {
    return -1;
  }
  
  private static String ad() {
    return "";
  }
  
  private static long ae() {
    return c.get();
  }
  
  private String af() {
    return this.Z;
  }
  
  private String ag() {
    return this.ai;
  }
  
  private void ah() {
    this.ap = true;
  }
  
  private static long ai() {
    return 0L;
  }
  
  private static boolean aj() {
    boolean bool = false;
    long l1 = System.currentTimeMillis();
    if (c.get() < l1) {
      bool = true;
      (new StringBuilder()).append(R).append(a(cB[159], 3995, 94));
    } 
    return bool;
  }
  
  private static boolean ak() {
    return aO;
  }
  
  private static void al() {
    aP = System.currentTimeMillis();
  }
  
  private static long am() {
    return aJ;
  }
  
  private static long an() {
    return aK;
  }
  
  private static void ao() {
    if (aB != null) {
      PrintStream printStream = System.out;
      byte b = cB[3021];
      printStream.println(a(b, b + 4, cB[817]));
      aB.a();
      aB = null;
    } 
  }
  
  private static boolean ap() {
    boolean bool = false;
    long l1 = k.a(M).getLong(a(cB[836], 3200, cC - 2), 0L);
    if (System.currentTimeMillis() > l1)
      bool = true; 
    return bool;
  }
  
  private String aq() {
    return this.Q;
  }
  
  private String ar() {
    if (this.S != null && !this.S.toString().isEmpty()) {
      boolean bool = this.S.getScheme().equals(a(94, 2014, 101));
      String str2 = "";
      String str1 = str2;
      if (this.U) {
        str1 = str2;
        if (!bool)
          str1 = a(110, 3233, cC | 0x8); 
      } 
      str2 = this.S.getQuery();
      String str3 = str2;
      if (str2 == null)
        str3 = ""; 
      str2 = str1;
      if (str3.length() > 0)
        str2 = str3 + a(cB[1221], 226, 105) + str1; 
      str3 = this.S.getPath();
      if (!bool && this.aC && this.U) {
        str1 = this.S.getHost();
        int j = this.S.getPort();
        return a(this.S.getScheme(), str1, j, str3, str2);
      } 
      str1 = e(bool);
      int i = this.S.getPort();
      return a(this.S.getScheme(), str1, i, str3, str2);
    } 
    return "";
  }
  
  private String as() {
    StringBuilder stringBuilder = (new StringBuilder()).append(R);
    byte b = cB[2660];
    String str = stringBuilder.append(a(b, b | 0xD2, 105)).append(ae).toString();
    if (this.U) {
      StringBuilder stringBuilder1 = (new StringBuilder()).append(R).append(a(cB[27], 2901, 103));
      b = cB[2660];
      str = stringBuilder1.append(a(b, b | 0xD2, 105)).append(ae).toString();
    } 
    return str;
  }
  
  private String at() {
    StringBuilder stringBuilder;
    String str = "";
    if (this.S != null)
      return e(false); 
    if (this.W.equals(a(-cB[1], 1474, 97))) {
      stringBuilder = (new StringBuilder()).append(R);
      byte b = cB[2660];
      return stringBuilder.append(a(b, b | 0xD2, 105)).append(ae).toString();
    } 
    return (String)stringBuilder;
  }
  
  private static String au() {
    if (cw != null && !cw.isEmpty())
      return cw + a(cB[18], 213, 92); 
    if (c.c != null && c.c.c() != null && !c.c.c().isEmpty()) {
      cw = c.c.c();
      return cw + a(cB[18], 213, 92);
    } 
    if (M != null) {
      int i = cB[3021] + 1;
      a a1 = new a(a(i, i | 0x21, cB[3021]));
      String str = k.a(M).getString(a(cB[3021], 1524, 97), null);
      if (str != null)
        try {
          cw = a1.b(str);
          return cw + a(cB[18], 213, 92);
        } catch (Exception exception) {
          return "";
        }  
    } 
    return "";
  }
  
  private static void av() {
    if (M != null) {
      SharedPreferences.Editor editor = k.a(M).edit();
      editor.putInt(a(105, 2889, 93), aH);
      editor.putInt(a(cB[836], 4029, 93), aI);
      editor.putInt(a(104, 4050, 94), aJ);
      editor.putInt(a(104, 382, 95), aK);
      editor.putBoolean(a(105, 2103, 92), aL);
      editor.putBoolean(a(cB[836], 586, 92), aM);
      editor.putBoolean(a(cB[3021] + 1, 1252, cB[243]), cy);
      editor.putString(a(105, 3254, cB[243]), g.toString());
      editor.putBoolean(a(cB[836], 1700, cB[270]), cz);
      editor.apply();
      editor.commit();
    } 
  }
  
  private static void aw() {
    SharedPreferences sharedPreferences = k.a(M);
    if (sharedPreferences.contains(a(93, 3247, 98))) {
      aR = sharedPreferences.getString(a(93, 3247, 98), "");
      aS = sharedPreferences.getBoolean(a(106, 203, cC | 0xC), false);
    } 
  }
  
  private static void ax() {
    try {
      SharedPreferences.Editor editor = k.a(M).edit();
      c c1 = a.a(M);
      String str = c1.a();
      boolean bool = c1.b();
      editor.putString(a(93, 3247, 98), str);
      editor.putBoolean(a(106, 203, cC | 0xC), bool);
      editor.apply();
      editor.commit();
      StringBuilder stringBuilder = new StringBuilder();
      byte b = -cB[1];
      int i = cC | 0x6A0;
      stringBuilder.append(a(b, i, i & 0x16E)).append(str);
      (new StringBuilder()).append(a(cB[776], 3974, cB[270])).append(bool);
      return;
    } catch (Exception exception) {
      a(-cB[1430], 1450, cC - 2);
      return;
    } 
  }
  
  private static String[] ay() {
    String[] arrayOfString = new String[9];
    arrayOfString[0] = "";
    arrayOfString[1] = "";
    arrayOfString[2] = "";
    arrayOfString[3] = "";
    arrayOfString[4] = "";
    arrayOfString[5] = "";
    arrayOfString[6] = "";
    arrayOfString[7] = "";
    arrayOfString[8] = "";
    arrayOfString[0] = a(-cB[113], 2983, cB[614]);
    arrayOfString[1] = a(cB[550], 4292, cB[25]);
    arrayOfString[2] = a(cB[1249], 2743, cB[22]);
    arrayOfString[3] = a(cB[1249], 798, cB[42]);
    arrayOfString[4] = a(cB[1249], 2206, cB[10]);
    arrayOfString[5] = a(cB[550], 4292, cB[25]);
    arrayOfString[6] = a(cB[185], 4103, cB[63]);
    arrayOfString[7] = a(cB[550], 4292, cB[25]);
    arrayOfString[8] = a(cB[185], 3584, cB[61]);
    return arrayOfString;
  }
  
  private static int az() {
    return 15000;
  }
  
  public static String b(int paramInt) {
    switch (paramInt) {
      default:
        return a(-cB[113], cB[836], 99);
      case 7:
        return a(cB[800], 582, 101);
      case 4:
        return a(cB[0], 3672, 102);
      case 2:
        return a(-cB[1430], 3563, 102);
      case 14:
        return a(cC | 0x8, 3907, 101);
      case 5:
        return a(-cB[1430], 1544, cC | 0xC);
      case 6:
        return a(-cB[1430], 1826, cC | 0xC);
      case 12:
        return a(-cB[1430], 1816, cC | 0xC);
      case 1:
        return a(cB[2418], 1500, 102);
      case 8:
        return a(cB[141], 517, 101);
      case 10:
        return a(cB[141], 193, 102);
      case 15:
        return a(cB[141], 3074, 101);
      case 9:
        return a(cB[141], cB[548], 101);
      case 11:
        return a(cC | 0xC, 1554, 102);
      case 13:
        paramInt = cB[265];
        return a(paramInt, paramInt | 0xE95, 103);
      case 3:
        return a(-cB[113], 2096, 102);
      case 0:
        break;
    } 
    return a(-cB[113], cB[836], 99);
  }
  
  private static String b(String paramString, Context paramContext) {
    String str = "";
    try {
      (new StringBuilder()).append(a(cB[1249], 3713, cB[1249])).append(paramString);
      paramString = c.a(paramContext, paramString, "", false, false);
      (new StringBuilder()).append(a(108, 446, cC + 5)).append(paramString);
      JSONObject jSONObject = new JSONObject(paramString);
      paramString = str;
      if (jSONObject.has(a(105, 2089, 98)))
        paramString = jSONObject.getString(a(105, 2089, 98)); 
      return paramString;
    } catch (Exception exception) {
      a(-cB[1430], 2116, cB[1249]);
      return "";
    } 
  }
  
  private String b(boolean paramBoolean) {
    String str2 = "";
    String str1 = str2;
    if (this.U) {
      str1 = str2;
      if (paramBoolean)
        str1 = a(cB[27], 2901, 103); 
    } 
    return str1;
  }
  
  private static void b(Context paramContext) {
    if (paramContext != null && aN) {
      SharedPreferences sharedPreferences = k.a(paramContext);
      aJ = sharedPreferences.getInt(a(104, 4050, 94), aJ);
      aK = sharedPreferences.getInt(a(104, 382, 95), aK);
      aH = sharedPreferences.getInt(a(105, 2889, 93), aH);
      aI = sharedPreferences.getInt(a(cB[836], 4029, 93), aI);
      aL = sharedPreferences.getBoolean(a(105, 2103, 92), aL);
      aM = sharedPreferences.getBoolean(a(cB[836], 586, 92), aM);
      cy = sharedPreferences.getBoolean(a(cB[3021] + 1, 1252, cB[243]), false);
      cz = sharedPreferences.getBoolean(a(cB[836], 1700, cB[270]), true);
      g = l.a(sharedPreferences.getString(a(105, 3254, cB[243]), g.toString()));
      aN = false;
    } 
  }
  
  private static void b(Context paramContext, SmiResult paramSmiResult) {
    if (paramContext instanceof SdStateChangeListener) {
      (new StringBuilder()).append(a(cB[3021], 3134, cC + 5)).append(paramSmiResult.getSdState().getStatusCode());
      ((SdStateChangeListener)paramContext).onChange(paramSmiResult);
    } 
    Iterator<SdStateChangeListener> iterator = bi.iterator();
    while (iterator.hasNext())
      ((SdStateChangeListener)iterator.next()).onChange(paramSmiResult); 
  }
  
  public static void b(Context paramContext, String paramString) {
    aO = true;
    try {
      Context context = paramContext.getApplicationContext();
      e.b = context.getPackageName();
      M = paramContext;
      aG = true;
      (new StringBuilder()).append(a(cB[836], 1557, 96)).append(aG);
      if (cv == null || !cv.isAlive()) {
        c c1 = new c(paramContext, true);
        cv = c1;
        c1.start();
      } 
      f(context);
      Handler handler = new Handler(context.getMainLooper());
      m m1 = a(paramContext, "", paramString, "", true);
      SmiResult smiResult = new SmiResult(m1);
      if (m1.ac == 2 || m1.ac == 6) {
        aE = true;
        c.a(false);
        long l1 = c.get();
        x x = new x(paramContext, paramString);
        if (L != null) {
          int i = cC - 2;
          a(i, i | 0xA20, cB[3021]);
          a(cB[0], 2469, cB[843]);
          L.cancel(false);
          L = null;
        } 
        t t = a(m1);
        if (t.c != t) {
          if (t == t.a) {
            boolean bool;
            if (cu != null) {
              bool = true;
            } else {
              bool = false;
            } 
            aV = bool;
            a(context, m1);
            c.a(smiResult);
            handler.post(new q(context, m1, smiResult));
          } else if (t == t.b) {
            l1 = 300000L;
            smiResult.setSdReason(SdReason.SD_NOT_AVAILABLE_REASON_UNKNOWN);
            smiResult.setSdState(SdState.SD_NOT_AVAILABLE);
            handler.post(new r(context, smiResult));
          } else {
            l1 = 0L;
          } 
          if (l1 > 0L) {
            int i = cC - 2;
            a(i, i | 0xA20, cB[3021]);
            StringBuilder stringBuilder = (new StringBuilder()).append(a(cB[1249], 1186, cB[843])).append(l1);
            i = cB[159];
            stringBuilder.append(a(i, i | 0x1121, 98));
            L = a.schedule(x, l1, TimeUnit.MILLISECONDS);
          } 
        } 
      } else {
        aE = false;
        c.a(smiResult);
        c.c(context);
        handler.post(new s(m1, context, smiResult));
      } 
      if (!b) {
        b = true;
        f.b(context);
      } 
    } catch (Exception exception) {
      a(93, 4272, cB[817]);
    } 
    aO = false;
  }
  
  private static void b(SdStateChangeListener paramSdStateChangeListener) {
    bi.remove(paramSdStateChangeListener);
  }
  
  public static void b(String paramString, Properties paramProperties) {
    if (M != null) {
      String str;
      if (c.a != null) {
        str = c.a.d(au());
      } else {
        str = au();
      } 
      if (!str.isEmpty() && aL) {
        a(cC - 2, 3883, cC - 2);
        (new StringBuilder()).append(a(cB[1249], cC | 0xB04, cC | 0x8)).append(paramString).append(a(cB[159], 1721, 97)).append(paramProperties);
        Intent intent = new Intent(M.getApplicationContext(), SmiIntentService.class);
        intent.setAction(a(cB[1249], 3481, 97));
        intent.putExtra(a(cC | 0x8, 3536, 97), paramString);
        if (paramProperties != null)
          intent.putExtra(a(cC | 0x8, 1294, 94), paramProperties); 
        if (aE)
          intent.putExtra(a(106, 3040, 101), R); 
        intent.putExtra(a(100, 1636, cC | 0xC), d);
        intent.putExtra(a(109, 2075, 102), aF);
        intent.putExtra(a(105, 349, 103), true);
        M.startService(intent);
      } 
    } 
  }
  
  private void b(JSONArray paramJSONArray) {
    (new Thread(new o(this, paramJSONArray))).start();
  }
  
  private void b(JSONObject paramJSONObject) {
    boolean bool = true;
    if (paramJSONObject.has(a(cC | 0xC, 417, cB[270])))
      f = paramJSONObject.getBoolean(a(cC | 0xC, 417, cB[270])); 
    if (paramJSONObject.has(a(105, 113, cC | 0xC))) {
      bool = paramJSONObject.getBoolean(a(105, 113, cC | 0xC));
      c.b(bool);
    } 
    if (paramJSONObject.has(a(cB[3021] + 1, 1252, cB[243])))
      cy = paramJSONObject.getBoolean(a(cB[3021] + 1, 1252, cB[243])); 
    if (paramJSONObject.has(a(105, 3341, 98)))
      (new Thread(new n(this, paramJSONObject.getJSONArray(a(105, 3341, 98))))).start(); 
    if (paramJSONObject.has(a(98, 3774, 98)))
      (new Thread(new o(this, paramJSONObject.getJSONArray(a(98, 3774, 98))))).start(); 
    if (paramJSONObject.has(a(105, 2631, cB[3021] + 1))) {
      int j = paramJSONObject.getInt(a(105, 2631, cB[3021] + 1));
      if (j > 0) {
        aH = j;
        aL = true;
      } else {
        aL = false;
      } 
    } 
    (new StringBuilder()).append(a(105, 2394, cB[2])).append(aL).append(a(cB[234], 3133, 104)).append(aH);
    if (aL) {
      f.a(M);
    } else {
      f.a();
    } 
    if (paramJSONObject.has(a(cB[836], 2533, cB[3021] + 1))) {
      int j = paramJSONObject.getInt(a(cB[836], 2533, cB[3021] + 1));
      if (j > 0) {
        aI = j;
        aM = true;
      } else {
        aM = false;
      } 
    } 
    (new StringBuilder()).append(a(cB[836], 3288, cB[2])).append(aM).append(a(cB[234], 3133, 104)).append(aI);
    if (paramJSONObject.has(a(105, 1964, cB[836]))) {
      int j = paramJSONObject.getInt(a(105, 1964, cB[836]));
      if (j > 0)
        aK = j; 
    } 
    if (paramJSONObject.has(a(105, 363, cB[243]))) {
      int j = paramJSONObject.getInt(a(105, 363, cB[243]));
      if (j > 0)
        aJ = j; 
    } 
    if (paramJSONObject.has(a(107, 1566, cC | 0xC))) {
      aw = paramJSONObject.getString(a(107, 1566, cC | 0xC));
    } else {
      aw = a(cB[3021] + 1, 3753, 101);
    } 
    if (paramJSONObject.has(a(105, 3254, cB[243])))
      g = l.a(paramJSONObject.getString(a(105, 3254, cB[243]))); 
    if (paramJSONObject.has(a(cB[836], 1700, cB[270])) && !paramJSONObject.isNull(a(cB[836], 1700, cB[270])))
      cz = paramJSONObject.getBoolean(a(cB[836], 1700, cB[270])); 
    if (paramJSONObject.has(a(102, 3186, cC | 0x8)) && !paramJSONObject.isNull(a(102, 3186, cC | 0x8))) {
      this.aW = paramJSONObject.getBoolean(a(102, 3186, cC | 0x8));
    } else {
      this.aW = false;
    } 
    if (paramJSONObject.has(a(102, 2175, 90)) && !paramJSONObject.isNull(a(102, 2175, 90))) {
      this.aX = paramJSONObject.getInt(a(102, 2175, 90));
    } else {
      this.aX = 5;
    } 
    int i = this.aX;
    k = System.currentTimeMillis() + (i * 60 * 1000);
    av();
    if (aG && c.c())
      a(bool, c.a()); 
  }
  
  public static boolean b(String paramString) {
    if (paramString != null && !paramString.isEmpty())
      try {
        String str = (new URL(paramString)).getHost();
        return !str.isEmpty() ? str.endsWith(a(cB[2660], 4423, cC | 0xC)) : false;
      } catch (MalformedURLException malformedURLException) {
        (new StringBuilder()).append(a(-cB[1430], cC | 0x4A4, cB[73])).append(paramString).append(a(cB[120], 2376, cB[836])).append(malformedURLException.getMessage());
        return false;
      }  
    return false;
  }
  
  public static String c() {
    return ae;
  }
  
  private String c(boolean paramBoolean) {
    String str2 = "";
    String str1 = str2;
    if (this.U) {
      str1 = str2;
      if (!paramBoolean)
        str1 = a(110, 3233, cC | 0x8); 
    } 
    return str1;
  }
  
  private static void c(int paramInt) {
    if (paramInt != 7) {
      int i = cC - 2;
      a(i, i | 0xA20, cB[3021]);
      (new StringBuilder()).append(a(cB[1249], 3911, cB[265])).append(paramInt);
      u u = new u(M, paramInt);
      a.schedule(u, 30L, TimeUnit.MINUTES);
    } 
  }
  
  private void c(String paramString) {
    this.ai = paramString;
  }
  
  private static void c(JSONObject paramJSONObject) {
    if (ar == null)
      ar = new String[9]; 
    if (paramJSONObject.has(a(cB[1249], 490, 104))) {
      String str = paramJSONObject.getString(a(cB[1249], 490, 104));
      if (str != null && !str.isEmpty())
        ar[0] = str; 
    } 
    if (paramJSONObject.has(a(cB[228], 4433, 101))) {
      String str = paramJSONObject.getString(a(cB[228], 4433, 101));
      if (str != null && !str.isEmpty())
        ar[1] = str; 
    } 
    byte b = cB[610];
    int i = b | 0xFC4;
    if (paramJSONObject.has(a(b, i, i & 0x60))) {
      b = cB[610];
      i = b | 0xFC4;
      String str = paramJSONObject.getString(a(b, i, i & 0x60));
      if (str != null && !str.isEmpty())
        ar[2] = str; 
    } 
    if (paramJSONObject.has(a(cB[859], 2005, 96))) {
      String str = paramJSONObject.getString(a(cB[859], 2005, 96));
      if (str != null && !str.isEmpty())
        ar[3] = str; 
    } 
    if (paramJSONObject.has(a(cB[550], 3276, 96))) {
      String str = paramJSONObject.getString(a(cB[550], 3276, 96));
      if (str != null && !str.isEmpty())
        ar[4] = str; 
    } 
    if (paramJSONObject.has(a(-cB[113], 3224, 96))) {
      String str = paramJSONObject.getString(a(-cB[113], 3224, 96));
      if (str != null && !str.isEmpty())
        ar[5] = str; 
    } 
    b = cB[1024];
    if (paramJSONObject.has(a(b, b | 0xE91, 99))) {
      b = cB[1024];
      String str = paramJSONObject.getString(a(b, b | 0xE91, 99));
      if (str != null && !str.isEmpty())
        ar[6] = str; 
    } 
    if (paramJSONObject.has(a(cB[81], 4041, 96))) {
      String str = paramJSONObject.getString(a(cB[81], 4041, 96));
      if (str != null && !str.isEmpty())
        ar[7] = str; 
    } 
    if (paramJSONObject.has(a(-cB[113], 2689, 101))) {
      String str = paramJSONObject.getString(a(-cB[113], 2689, 101));
      if (str != null && !str.isEmpty())
        ar[8] = str; 
    } 
  }
  
  private static boolean c(Context paramContext) {
    a(cB[3021], 688, cB[218]);
    ConnectivityManager connectivityManager = (ConnectivityManager)paramContext.getSystemService(a(cB[3021], 1953, 94));
    if (connectivityManager == null)
      throw new Exception(a(cB[409], 655, cB[1024])); 
    NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
    (new StringBuilder()).append(a(cB[228], 3161, cB[291])).append(networkInfo);
    return networkInfo.isConnectedOrConnecting();
  }
  
  private static boolean c(m paramm) {
    boolean bool = false;
    t t = a(paramm);
    if (t.a == t)
      bool = true; 
    return bool;
  }
  
  private String d(boolean paramBoolean) {
    String str2 = "";
    String str1 = str2;
    if (this.U) {
      str1 = str2;
      if (paramBoolean)
        str1 = a(cB[27], 2901, 103); 
    } 
    str2 = this.S.getHost().replace(a(cB[27], 246, 105), a(cB[27], 3581, 104)).replace('.', '-');
    return R + a(cB[27], 246, 105) + str2 + str1;
  }
  
  private void d(String paramString) {
    this.ak = paramString;
  }
  
  private static boolean d(Context paramContext) {
    a(cB[3021], cC | 0x500, cB[73]);
    ConnectivityManager connectivityManager = (ConnectivityManager)paramContext.getSystemService(a(cB[3021], 1953, 94));
    if (connectivityManager == null)
      throw new Exception(a(cB[409], 655, cB[1024])); 
    boolean bool = connectivityManager.getNetworkInfo(1).isConnected();
    aF = bool;
    return bool;
  }
  
  private static String e(Context paramContext) {
    // Byte code:
    //   0: invokestatic d : ()Ljava/lang/String;
    //   3: astore_2
    //   4: invokestatic e : ()Ljava/lang/String;
    //   7: astore #4
    //   9: aload_2
    //   10: ifnull -> 36
    //   13: aload #4
    //   15: ifnull -> 36
    //   18: aload_2
    //   19: invokevirtual length : ()I
    //   22: ifeq -> 36
    //   25: aload #4
    //   27: astore_3
    //   28: aload #4
    //   30: invokevirtual length : ()I
    //   33: ifne -> 73
    //   36: aload_0
    //   37: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   40: bipush #102
    //   42: sipush #2099
    //   45: bipush #101
    //   47: invokestatic a : (III)Ljava/lang/String;
    //   50: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   53: checkcast android/telephony/TelephonyManager
    //   56: invokevirtual getNetworkOperator : ()Ljava/lang/String;
    //   59: astore_3
    //   60: aload_3
    //   61: iconst_0
    //   62: iconst_3
    //   63: invokevirtual substring : (II)Ljava/lang/String;
    //   66: astore_2
    //   67: aload_3
    //   68: iconst_3
    //   69: invokevirtual substring : (I)Ljava/lang/String;
    //   72: astore_3
    //   73: aload_2
    //   74: ifnull -> 233
    //   77: aload_3
    //   78: ifnull -> 233
    //   81: aload_2
    //   82: invokevirtual length : ()I
    //   85: ifle -> 233
    //   88: aload_3
    //   89: invokevirtual length : ()I
    //   92: ifle -> 233
    //   95: aload_0
    //   96: invokevirtual getPackageName : ()Ljava/lang/String;
    //   99: invokestatic b : (Ljava/lang/String;)Ljava/lang/String;
    //   102: astore_0
    //   103: new java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial <init> : ()V
    //   110: aload_3
    //   111: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: astore_3
    //   115: getstatic com/datami/smi/b/m.cB : [B
    //   118: sipush #2660
    //   121: baload
    //   122: istore_1
    //   123: aload_3
    //   124: iload_1
    //   125: iload_1
    //   126: sipush #210
    //   129: ior
    //   130: bipush #105
    //   132: invokestatic a : (III)Ljava/lang/String;
    //   135: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: aload_2
    //   139: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: astore_2
    //   143: getstatic com/datami/smi/b/m.cB : [B
    //   146: sipush #2660
    //   149: baload
    //   150: istore_1
    //   151: aload_2
    //   152: iload_1
    //   153: iload_1
    //   154: sipush #210
    //   157: ior
    //   158: bipush #105
    //   160: invokestatic a : (III)Ljava/lang/String;
    //   163: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: aload_0
    //   167: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: getstatic com/datami/smi/b/m.cB : [B
    //   173: sipush #2660
    //   176: baload
    //   177: sipush #4423
    //   180: getstatic com/datami/smi/b/m.cC : I
    //   183: bipush #12
    //   185: ior
    //   186: invokestatic a : (III)Ljava/lang/String;
    //   189: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: invokevirtual toString : ()Ljava/lang/String;
    //   195: astore_0
    //   196: new java/lang/StringBuilder
    //   199: dup
    //   200: invokespecial <init> : ()V
    //   203: getstatic com/datami/smi/b/m.cB : [B
    //   206: sipush #3021
    //   209: baload
    //   210: iconst_1
    //   211: iadd
    //   212: sipush #3950
    //   215: getstatic com/datami/smi/b/m.cC : I
    //   218: iconst_5
    //   219: iadd
    //   220: invokestatic a : (III)Ljava/lang/String;
    //   223: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: aload_0
    //   227: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: pop
    //   231: aload_0
    //   232: areturn
    //   233: aconst_null
    //   234: areturn
  }
  
  private String e(boolean paramBoolean) {
    String str = d(paramBoolean);
    if (ae.isEmpty()) {
      stringBuilder = (new StringBuilder()).append(str);
      byte b1 = cB[2660];
      return stringBuilder.append(a(b1, b1 | 0xD2, 105)).append(a(99, 3757, 92)).toString();
    } 
    StringBuilder stringBuilder = (new StringBuilder()).append((String)stringBuilder);
    byte b = cB[2660];
    return stringBuilder.append(a(b, b | 0xD2, 105)).append(ae).toString();
  }
  
  private void e(String paramString) {
    this.al = paramString;
  }
  
  private static String f(boolean paramBoolean) {
    if (c.c == null || c.c.b() == null || c.c.b().isEmpty())
      return ""; 
    String str = c.c.b();
    return paramBoolean ? (str + a(cB[18], cC | 0x204, cB[243]) + a(cB[1123], 363, 105) + a(110, 3233, cC | 0x8)) : (str + a(cB[18], cC | 0x204, cB[243]));
  }
  
  private static void f(Context paramContext) {
    if (aq == null)
      aq = new c(paramContext); 
    if (ar == null)
      ar = ay(); 
    c.a(ar[0], ar[1], ar[2], ar[3], ar[4], ar[5], ar[6], ar[7], ar[8]);
    c.c();
  }
  
  private void f(String paramString) {
    this.am = paramString;
  }
  
  private void g(String paramString) {
    this.an = paramString;
  }
  
  public static String h() {
    return R;
  }
  
  private static void h(String paramString) {
    int i = cB[3021] + 1;
    a a1 = new a(a(i, i | 0x21, cB[3021]));
    SharedPreferences sharedPreferences = k.a(M);
    SharedPreferences.Editor editor = sharedPreferences.edit();
    if (sharedPreferences.contains(a(106, 161, cB[3021])))
      editor.remove(a(106, 161, cB[3021])); 
    if (sharedPreferences.contains(a(106, cB[347], cB[817])))
      editor.remove(a(106, cB[347], cB[817])); 
    editor.putString(a(106, 161, cB[3021]), a1.a(paramString));
    editor.putLong(a(106, cB[347], cB[817]), c.get());
    editor.commit();
    editor.apply();
  }
  
  private static String i(String paramString) {
    HttpGet httpGet = new HttpGet(paramString);
    DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
    try {
      HttpResponse httpResponse = CaMDOHTTPClient.execute((HttpClient)defaultHttpClient, (HttpUriRequest)httpGet);
      if (200 == httpResponse.getStatusLine().getStatusCode())
        for (Header header : httpResponse.getAllHeaders()) {
          if (header.getName().equalsIgnoreCase(a(cB[265], 1836, 98)))
            return new String(header.getValue()); 
        }  
    } catch (Exception exception) {
      a(93, 3688, cB[291]);
    } 
    return null;
  }
  
  private static Class j(String paramString) {
    return Class.forName(paramString);
  }
  
  private static String k(String paramString) {
    if (paramString == null)
      return null; 
    p p = new p();
    try {
      String str = (String)p.execute((Object[])new String[] { paramString }).get();
      try {
        Log.i(J, paramString + a(-cB[575], 2087, 104) + str);
        return str;
      } catch (Exception exception1) {}
    } catch (Exception exception) {
      exception = null;
    } 
    (new StringBuilder()).append(a(94, cB[2], cB[73])).append(paramString);
    return (String)exception;
  }
  
  public static long n() {
    return as;
  }
  
  public static long o() {
    return at;
  }
  
  public static String q() {
    return ax;
  }
  
  public static boolean r() {
    return cz;
  }
  
  public static int s() {
    return aw.equalsIgnoreCase(a(cB[3021] + 1, 3753, 101)) ? 4 : (aw.equalsIgnoreCase(a(109, 438, 100)) ? 5 : (aw.equalsIgnoreCase(a(99, 3781, 99)) ? 6 : (av ? 9 : 7)));
  }
  
  public static void t() {
    (new StringBuilder()).append(a(108, 3348, cC)).append(R);
    boolean bool = false;
    long l1 = System.currentTimeMillis();
    if (c.get() < l1) {
      (new StringBuilder()).append(R).append(a(cB[159], 3995, 94));
      bool = true;
    } 
    if (bool && !aO) {
      aO = true;
      Intent intent = new Intent(M, SmiIntentService.class);
      intent.setAction(a(-cB[1], 620, cC | 0xC));
      l = f.c;
      M.startService(intent);
      a(cC | 0xC, 2021, cB[409]);
    } 
  }
  
  public static long u() {
    return aP;
  }
  
  public static void v() {
    aO = false;
  }
  
  public static boolean w() {
    boolean bool = false;
    if (ay.equalsIgnoreCase(a(cB[1249], 1786, cB[243])) || az.equalsIgnoreCase(a(cB[0], 3044, 96)))
      bool = true; 
    return bool;
  }
  
  public static long x() {
    return aH;
  }
  
  public static long y() {
    return aI;
  }
  
  public static boolean z() {
    return aL;
  }
  
  public final boolean D() {
    return this.U;
  }
  
  public final void a(JSONObject paramJSONObject) {
    JSONObject jSONObject = paramJSONObject.getJSONObject(a(cB[3021] + 1, 3273, 102));
    R = jSONObject.getString(a(112, 2942, 94));
    ae = jSONObject.getString(a(105, 793, 100));
    byte b = cB[836];
    int j = b | 0x820;
    if (jSONObject.has(a(b, j, j & 0x1E9))) {
      b = cB[836];
      j = b | 0x820;
      this.ad = a.a(jSONObject.getInt(a(b, j, j & 0x1E9)));
    } 
    if (paramJSONObject.has(a(cB[836], 463, cC | 0xC))) {
      this.aD = paramJSONObject.getLong(a(cB[836], 463, cC | 0xC));
      (new StringBuilder()).append(a(99, 722, cB[859])).append(this.aD);
    } else if (jSONObject.has(a(105, 3546, 96))) {
      long l1 = jSONObject.getLong(a(105, 3546, 96));
      this.aD = System.currentTimeMillis() - l1;
      (new StringBuilder()).append(a(99, 1894, cC + 5)).append(this.aD);
    } 
    if (jSONObject.has(a(101, 473, cB[3021] + 1)))
      this.aC = jSONObject.getBoolean(a(101, 473, cB[3021] + 1)); 
    if (jSONObject.has(a(105, 3531, 100)))
      this.af = jSONObject.getInt(a(105, 3531, 100)); 
    if (jSONObject.has(a(cB[3021] + 1, 1646, 98)))
      this.ai = jSONObject.getString(a(cB[3021] + 1, 1646, 98)); 
    if (jSONObject.has(a(102, cB[78], 99)))
      ay = jSONObject.getString(a(102, cB[78], 99)).trim(); 
    if (jSONObject.has(a(cB[836], cC | 0x608, 96)))
      az = jSONObject.getString(a(cB[836], cC | 0x608, 96)).trim(); 
    if (jSONObject.has(a(cC | 0x8, 4414, 96)))
      c.set(jSONObject.getLong(a(cC | 0x8, 4414, 96))); 
    if (jSONObject.has(a(105, 3489, 92)))
      this.ak = jSONObject.getString(a(105, 3489, 92)); 
    if (jSONObject.has(a(101, 1843, cC | 0x8)))
      this.al = jSONObject.getString(a(101, 1843, cC | 0x8)); 
    int i = cB[3021] + 1;
    if (jSONObject.has(a(i, i | 0x724, 93))) {
      i = cB[3021] + 1;
      this.an = jSONObject.getString(a(i, i | 0x724, 93));
    } 
    if (jSONObject.has(a(cB[3021], cB[68], 97)))
      this.am = jSONObject.getString(a(cB[3021], cB[68], 97)); 
    if (jSONObject.has(a(105, 1227, 99)))
      this.ao = jSONObject.getString(a(105, 1227, 99)); 
    if (jSONObject.has(a(105, 1532, 93))) {
      paramJSONObject = jSONObject.getJSONObject(a(105, 1532, 93));
      if (paramJSONObject != null && paramJSONObject.has(a(cB[836], 2521, 93)))
        cx = paramJSONObject.getInt(a(cB[836], 2521, 93)); 
    } 
    if (jSONObject.has(a(99, 331, 102)))
      b(jSONObject.getJSONObject(a(99, 331, 102))); 
    i = cC | 0x10C;
    if (jSONObject.has(a(107, i, i & 0xFD))) {
      i = cC | 0x10C;
      paramJSONObject = jSONObject.getJSONObject(a(107, i, i & 0xFD));
      if (paramJSONObject.has(a(107, 334, cB[3021] + 1)))
        at = (long)Double.parseDouble(paramJSONObject.getString(a(107, 334, cB[3021] + 1))); 
      if (paramJSONObject.has(a(107, 2190, cB[3021])))
        as = (long)Double.parseDouble(paramJSONObject.getString(a(107, 2190, cB[3021]))); 
      long l1 = 0L;
      if (paramJSONObject.has(a(102, 3566, cB[3021] + 1)))
        l1 = (long)Double.parseDouble(paramJSONObject.getString(a(102, 3566, cB[3021] + 1))); 
      if (paramJSONObject.has(a(107, 1566, cC | 0xC)))
        aw = paramJSONObject.getString(a(107, 1566, cC | 0xC)); 
      if (l1 < as) {
        as = l1;
        av = true;
      } else {
        av = false;
      } 
    } 
    if (jSONObject.has(a(cB[3021] + 1, 310, 96))) {
      paramJSONObject = jSONObject.getJSONObject(a(cB[3021] + 1, 310, 96));
      if (paramJSONObject != null) {
        c(paramJSONObject);
        if (aq != null)
          c.a(ar[0], ar[1], ar[2], ar[3], ar[4], ar[5], ar[6], ar[7], ar[8]); 
      } 
    } 
    String str = at();
    if (this.U && !a(a(94, cB[63], 99) + str + a(cB[18], 2311, 96), M)) {
      this.ac = 3;
    } else {
      this.ac = 2;
    } 
    if (w()) {
      this.ac = 6;
      this.X = 100006;
    } 
    if (this.ac == 2 || this.ac == 6)
      h.a(this.P, O, R, this.N, c.get(), ae, this.ai, this.af, this.ao, this.U, this.ac); 
  }
  
  public final boolean a() {
    return this.aW;
  }
  
  public final int b() {
    return this.aX;
  }
  
  public final int d() {
    return this.af;
  }
  
  public final int e() {
    return this.ac;
  }
  
  public final String f() {
    return this.T;
  }
  
  public final int g() {
    return this.X;
  }
  
  public final long i() {
    return this.aD;
  }
  
  public final String j() {
    return this.ak;
  }
  
  public final String k() {
    return this.al;
  }
  
  public final String l() {
    return this.am;
  }
  
  public final String m() {
    return this.an;
  }
  
  public final boolean p() {
    return this.ap;
  }
  
  @SuppressLint({"DefaultLocale"})
  public void run() {
    // Byte code:
    //   0: lconst_0
    //   1: lstore #7
    //   3: lconst_0
    //   4: lstore #9
    //   6: lload #9
    //   8: lstore_3
    //   9: lload #7
    //   11: lstore #5
    //   13: getstatic com/datami/smi/b/m.M : Landroid/content/Context;
    //   16: invokestatic a : (Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   19: astore #18
    //   21: lload #9
    //   23: lstore_3
    //   24: lload #7
    //   26: lstore #5
    //   28: iconst_0
    //   29: putstatic com/datami/smi/b/m.V : Z
    //   32: lload #9
    //   34: lstore_3
    //   35: lload #7
    //   37: lstore #5
    //   39: getstatic com/datami/smi/b/m.M : Landroid/content/Context;
    //   42: bipush #102
    //   44: sipush #2099
    //   47: bipush #101
    //   49: invokestatic a : (III)Ljava/lang/String;
    //   52: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   55: checkcast android/telephony/TelephonyManager
    //   58: astore #17
    //   60: lload #9
    //   62: lstore_3
    //   63: lload #7
    //   65: lstore #5
    //   67: aload #17
    //   69: invokevirtual getNetworkOperatorName : ()Ljava/lang/String;
    //   72: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   75: invokevirtual trim : ()Ljava/lang/String;
    //   78: astore #16
    //   80: aload #16
    //   82: ifnull -> 129
    //   85: lload #9
    //   87: lstore_3
    //   88: lload #7
    //   90: lstore #5
    //   92: aload #16
    //   94: invokevirtual length : ()I
    //   97: ifeq -> 129
    //   100: aload #16
    //   102: astore #15
    //   104: lload #9
    //   106: lstore_3
    //   107: lload #7
    //   109: lstore #5
    //   111: aload #16
    //   113: bipush #100
    //   115: sipush #3750
    //   118: bipush #102
    //   120: invokestatic a : (III)Ljava/lang/String;
    //   123: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   126: ifeq -> 148
    //   129: lload #9
    //   131: lstore_3
    //   132: lload #7
    //   134: lstore #5
    //   136: bipush #107
    //   138: sipush #2548
    //   141: bipush #99
    //   143: invokestatic a : (III)Ljava/lang/String;
    //   146: astore #15
    //   148: lload #9
    //   150: lstore_3
    //   151: lload #7
    //   153: lstore #5
    //   155: aload #17
    //   157: invokevirtual getNetworkType : ()I
    //   160: invokestatic b : (I)Ljava/lang/String;
    //   163: putstatic com/datami/smi/b/m.d : Ljava/lang/String;
    //   166: lload #9
    //   168: lstore_3
    //   169: lload #7
    //   171: lstore #5
    //   173: aload #17
    //   175: invokevirtual isNetworkRoaming : ()Z
    //   178: istore #13
    //   180: lload #9
    //   182: lstore_3
    //   183: lload #7
    //   185: lstore #5
    //   187: new org/json/JSONObject
    //   190: dup
    //   191: invokespecial <init> : ()V
    //   194: astore #19
    //   196: lload #9
    //   198: lstore_3
    //   199: lload #7
    //   201: lstore #5
    //   203: new org/json/JSONObject
    //   206: dup
    //   207: invokespecial <init> : ()V
    //   210: astore #20
    //   212: lload #9
    //   214: lstore_3
    //   215: lload #7
    //   217: lstore #5
    //   219: aload #20
    //   221: bipush #101
    //   223: sipush #953
    //   226: bipush #98
    //   228: invokestatic a : (III)Ljava/lang/String;
    //   231: aload #15
    //   233: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   236: pop
    //   237: lload #9
    //   239: lstore_3
    //   240: lload #7
    //   242: lstore #5
    //   244: aload #20
    //   246: bipush #104
    //   248: sipush #2965
    //   251: bipush #99
    //   253: invokestatic a : (III)Ljava/lang/String;
    //   256: iload #13
    //   258: invokevirtual put : (Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   261: pop
    //   262: lload #9
    //   264: lstore_3
    //   265: lload #7
    //   267: lstore #5
    //   269: aload #17
    //   271: invokevirtual getNetworkOperator : ()Ljava/lang/String;
    //   274: astore #16
    //   276: lload #9
    //   278: lstore_3
    //   279: lload #7
    //   281: lstore #5
    //   283: aload_0
    //   284: aload #16
    //   286: putfield Z : Ljava/lang/String;
    //   289: lload #9
    //   291: lstore_3
    //   292: lload #7
    //   294: lstore #5
    //   296: aload_0
    //   297: iconst_0
    //   298: putfield U : Z
    //   301: iconst_0
    //   302: istore #14
    //   304: iconst_0
    //   305: istore #13
    //   307: lload #9
    //   309: lstore_3
    //   310: lload #7
    //   312: lstore #5
    //   314: aload_0
    //   315: getfield U : Z
    //   318: invokestatic f : (Z)Ljava/lang/String;
    //   321: astore #15
    //   323: lload #9
    //   325: lstore_3
    //   326: lload #7
    //   328: lstore #5
    //   330: getstatic com/datami/smi/c/c.a : Lcom/datami/smi/c/o;
    //   333: ifnull -> 388
    //   336: lload #9
    //   338: lstore_3
    //   339: lload #7
    //   341: lstore #5
    //   343: getstatic com/datami/smi/c/c.a : Lcom/datami/smi/c/o;
    //   346: aload_0
    //   347: getfield U : Z
    //   350: invokestatic f : (Z)Ljava/lang/String;
    //   353: invokevirtual c : (Ljava/lang/String;)Ljava/lang/String;
    //   356: astore #15
    //   358: lload #9
    //   360: lstore_3
    //   361: lload #7
    //   363: lstore #5
    //   365: getstatic com/datami/smi/c/c.a : Lcom/datami/smi/c/o;
    //   368: invokevirtual d : ()Z
    //   371: istore #14
    //   373: lload #9
    //   375: lstore_3
    //   376: lload #7
    //   378: lstore #5
    //   380: getstatic com/datami/smi/c/c.a : Lcom/datami/smi/c/o;
    //   383: invokevirtual f : ()Z
    //   386: istore #13
    //   388: lload #9
    //   390: lstore_3
    //   391: lload #7
    //   393: lstore #5
    //   395: aload #15
    //   397: invokevirtual isEmpty : ()Z
    //   400: ifeq -> 459
    //   403: lload #9
    //   405: lstore_3
    //   406: lload #7
    //   408: lstore #5
    //   410: aload_0
    //   411: ldc_w 100001
    //   414: putfield X : I
    //   417: lload #9
    //   419: lstore_3
    //   420: lload #7
    //   422: lstore #5
    //   424: getstatic com/datami/smi/b/m.cB : [B
    //   427: sipush #228
    //   430: baload
    //   431: sipush #2554
    //   434: getstatic com/datami/smi/b/m.cB : [B
    //   437: sipush #575
    //   440: baload
    //   441: ineg
    //   442: invokestatic a : (III)Ljava/lang/String;
    //   445: pop
    //   446: lload #9
    //   448: lstore_3
    //   449: lload #7
    //   451: lstore #5
    //   453: aload_0
    //   454: iconst_3
    //   455: putfield ac : I
    //   458: return
    //   459: aload #16
    //   461: ifnull -> 504
    //   464: lload #9
    //   466: lstore_3
    //   467: lload #7
    //   469: lstore #5
    //   471: aload #16
    //   473: invokevirtual isEmpty : ()Z
    //   476: ifne -> 504
    //   479: lload #9
    //   481: lstore_3
    //   482: lload #7
    //   484: lstore #5
    //   486: aload #20
    //   488: bipush #100
    //   490: sipush #3787
    //   493: bipush #93
    //   495: invokestatic a : (III)Ljava/lang/String;
    //   498: aload #16
    //   500: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   503: pop
    //   504: lload #9
    //   506: lstore_3
    //   507: lload #7
    //   509: lstore #5
    //   511: aload #17
    //   513: invokevirtual getSimOperator : ()Ljava/lang/String;
    //   516: astore #16
    //   518: aload #16
    //   520: ifnull -> 563
    //   523: lload #9
    //   525: lstore_3
    //   526: lload #7
    //   528: lstore #5
    //   530: aload #16
    //   532: invokevirtual isEmpty : ()Z
    //   535: ifne -> 563
    //   538: lload #9
    //   540: lstore_3
    //   541: lload #7
    //   543: lstore #5
    //   545: aload #20
    //   547: bipush #105
    //   549: sipush #1667
    //   552: bipush #97
    //   554: invokestatic a : (III)Ljava/lang/String;
    //   557: aload #16
    //   559: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   562: pop
    //   563: lload #9
    //   565: lstore_3
    //   566: lload #7
    //   568: lstore #5
    //   570: aload_0
    //   571: getfield P : Ljava/lang/String;
    //   574: ifnull -> 595
    //   577: lload #9
    //   579: lstore_3
    //   580: lload #7
    //   582: lstore #5
    //   584: aload_0
    //   585: aload_0
    //   586: getfield P : Ljava/lang/String;
    //   589: invokevirtual trim : ()Ljava/lang/String;
    //   592: putfield P : Ljava/lang/String;
    //   595: lload #9
    //   597: lstore_3
    //   598: lload #7
    //   600: lstore #5
    //   602: aload_0
    //   603: getfield P : Ljava/lang/String;
    //   606: ifnull -> 673
    //   609: lload #9
    //   611: lstore_3
    //   612: lload #7
    //   614: lstore #5
    //   616: aload_0
    //   617: getfield P : Ljava/lang/String;
    //   620: invokevirtual isEmpty : ()Z
    //   623: ifne -> 673
    //   626: lload #9
    //   628: lstore_3
    //   629: lload #7
    //   631: lstore #5
    //   633: getstatic com/datami/smi/b/m.cB : [B
    //   636: sipush #836
    //   639: baload
    //   640: istore_1
    //   641: iload_1
    //   642: sipush #936
    //   645: ior
    //   646: istore_2
    //   647: lload #9
    //   649: lstore_3
    //   650: lload #7
    //   652: lstore #5
    //   654: aload #20
    //   656: iload_1
    //   657: iload_2
    //   658: iload_2
    //   659: bipush #101
    //   661: iand
    //   662: invokestatic a : (III)Ljava/lang/String;
    //   665: aload_0
    //   666: getfield P : Ljava/lang/String;
    //   669: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   672: pop
    //   673: lload #9
    //   675: lstore_3
    //   676: lload #7
    //   678: lstore #5
    //   680: new org/json/JSONObject
    //   683: dup
    //   684: invokespecial <init> : ()V
    //   687: astore #16
    //   689: lload #9
    //   691: lstore_3
    //   692: lload #7
    //   694: lstore #5
    //   696: aload #16
    //   698: bipush #99
    //   700: sipush #4026
    //   703: bipush #102
    //   705: invokestatic a : (III)Ljava/lang/String;
    //   708: getstatic android/os/Build.MANUFACTURER : Ljava/lang/String;
    //   711: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   714: pop
    //   715: lload #9
    //   717: lstore_3
    //   718: lload #7
    //   720: lstore #5
    //   722: aload #16
    //   724: bipush #99
    //   726: sipush #1995
    //   729: bipush #101
    //   731: invokestatic a : (III)Ljava/lang/String;
    //   734: getstatic android/os/Build.MODEL : Ljava/lang/String;
    //   737: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   740: pop
    //   741: lload #9
    //   743: lstore_3
    //   744: lload #7
    //   746: lstore #5
    //   748: aload #16
    //   750: bipush #107
    //   752: sipush #488
    //   755: bipush #103
    //   757: invokestatic a : (III)Ljava/lang/String;
    //   760: getstatic com/datami/smi/c/c.e : Ljava/lang/String;
    //   763: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   766: pop
    //   767: lload #9
    //   769: lstore_3
    //   770: lload #7
    //   772: lstore #5
    //   774: getstatic com/datami/smi/b/m.O : Ljava/lang/String;
    //   777: ifnull -> 796
    //   780: lload #9
    //   782: lstore_3
    //   783: lload #7
    //   785: lstore #5
    //   787: getstatic com/datami/smi/b/m.O : Ljava/lang/String;
    //   790: invokevirtual trim : ()Ljava/lang/String;
    //   793: putstatic com/datami/smi/b/m.O : Ljava/lang/String;
    //   796: lload #9
    //   798: lstore_3
    //   799: lload #7
    //   801: lstore #5
    //   803: getstatic com/datami/smi/b/m.O : Ljava/lang/String;
    //   806: ifnull -> 911
    //   809: lload #9
    //   811: lstore_3
    //   812: lload #7
    //   814: lstore #5
    //   816: getstatic com/datami/smi/b/m.O : Ljava/lang/String;
    //   819: invokevirtual isEmpty : ()Z
    //   822: ifne -> 911
    //   825: lload #9
    //   827: lstore_3
    //   828: lload #7
    //   830: lstore #5
    //   832: sipush #262
    //   835: getstatic com/datami/smi/c/c.b : Lcom/datami/smi/c/n;
    //   838: invokevirtual a : ()Ljava/lang/String;
    //   841: invokestatic parseInt : (Ljava/lang/String;)I
    //   844: if_icmpne -> 2695
    //   847: lload #9
    //   849: lstore_3
    //   850: lload #7
    //   852: lstore #5
    //   854: aload #20
    //   856: bipush #107
    //   858: sipush #650
    //   861: bipush #100
    //   863: invokestatic a : (III)Ljava/lang/String;
    //   866: new java/lang/StringBuilder
    //   869: dup
    //   870: invokespecial <init> : ()V
    //   873: getstatic com/datami/smi/b/m.O : Ljava/lang/String;
    //   876: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   879: getstatic com/datami/smi/b/m.cB : [B
    //   882: sipush #575
    //   885: baload
    //   886: ineg
    //   887: sipush #349
    //   890: bipush #105
    //   892: invokestatic a : (III)Ljava/lang/String;
    //   895: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   898: getstatic com/datami/smi/b/m.O : Ljava/lang/String;
    //   901: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   904: invokevirtual toString : ()Ljava/lang/String;
    //   907: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   910: pop
    //   911: lload #9
    //   913: lstore_3
    //   914: lload #7
    //   916: lstore #5
    //   918: aload #20
    //   920: getstatic com/datami/smi/b/m.cB : [B
    //   923: sipush #3021
    //   926: baload
    //   927: iconst_1
    //   928: iadd
    //   929: getstatic com/datami/smi/b/m.cB : [B
    //   932: bipush #18
    //   934: baload
    //   935: bipush #98
    //   937: invokestatic a : (III)Ljava/lang/String;
    //   940: aload #16
    //   942: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   945: pop
    //   946: iload #13
    //   948: ifeq -> 1173
    //   951: lload #9
    //   953: lstore_3
    //   954: lload #7
    //   956: lstore #5
    //   958: getstatic com/datami/smi/b/m.M : Landroid/content/Context;
    //   961: invokestatic a : (Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   964: astore #16
    //   966: lload #9
    //   968: lstore_3
    //   969: lload #7
    //   971: lstore #5
    //   973: aload #16
    //   975: bipush #93
    //   977: sipush #3247
    //   980: bipush #98
    //   982: invokestatic a : (III)Ljava/lang/String;
    //   985: invokeinterface contains : (Ljava/lang/String;)Z
    //   990: ifeq -> 1055
    //   993: lload #9
    //   995: lstore_3
    //   996: lload #7
    //   998: lstore #5
    //   1000: aload #16
    //   1002: bipush #93
    //   1004: sipush #3247
    //   1007: bipush #98
    //   1009: invokestatic a : (III)Ljava/lang/String;
    //   1012: ldc_w ''
    //   1015: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1020: putstatic com/datami/smi/b/m.aR : Ljava/lang/String;
    //   1023: lload #9
    //   1025: lstore_3
    //   1026: lload #7
    //   1028: lstore #5
    //   1030: aload #16
    //   1032: bipush #106
    //   1034: sipush #203
    //   1037: getstatic com/datami/smi/b/m.cC : I
    //   1040: bipush #12
    //   1042: ior
    //   1043: invokestatic a : (III)Ljava/lang/String;
    //   1046: iconst_0
    //   1047: invokeinterface getBoolean : (Ljava/lang/String;Z)Z
    //   1052: putstatic com/datami/smi/b/m.aS : Z
    //   1055: lload #9
    //   1057: lstore_3
    //   1058: lload #7
    //   1060: lstore #5
    //   1062: new org/json/JSONObject
    //   1065: dup
    //   1066: invokespecial <init> : ()V
    //   1069: astore #16
    //   1071: lload #9
    //   1073: lstore_3
    //   1074: lload #7
    //   1076: lstore #5
    //   1078: getstatic com/datami/smi/b/m.aR : Ljava/lang/String;
    //   1081: invokevirtual isEmpty : ()Z
    //   1084: ifne -> 1173
    //   1087: lload #9
    //   1089: lstore_3
    //   1090: lload #7
    //   1092: lstore #5
    //   1094: aload #16
    //   1096: getstatic com/datami/smi/b/m.cC : I
    //   1099: bipush #12
    //   1101: ior
    //   1102: sipush #1999
    //   1105: bipush #99
    //   1107: invokestatic a : (III)Ljava/lang/String;
    //   1110: getstatic com/datami/smi/b/m.aR : Ljava/lang/String;
    //   1113: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1116: pop
    //   1117: lload #9
    //   1119: lstore_3
    //   1120: lload #7
    //   1122: lstore #5
    //   1124: aload #16
    //   1126: bipush #106
    //   1128: sipush #1982
    //   1131: bipush #92
    //   1133: invokestatic a : (III)Ljava/lang/String;
    //   1136: getstatic com/datami/smi/b/m.aS : Z
    //   1139: invokevirtual put : (Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   1142: pop
    //   1143: lload #9
    //   1145: lstore_3
    //   1146: lload #7
    //   1148: lstore #5
    //   1150: aload #20
    //   1152: getstatic com/datami/smi/b/m.cB : [B
    //   1155: sipush #836
    //   1158: baload
    //   1159: sipush #563
    //   1162: bipush #100
    //   1164: invokestatic a : (III)Ljava/lang/String;
    //   1167: aload #16
    //   1169: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1172: pop
    //   1173: lload #9
    //   1175: lstore_3
    //   1176: lload #7
    //   1178: lstore #5
    //   1180: aload_0
    //   1181: getfield S : Ljava/net/URI;
    //   1184: ifnull -> 2975
    //   1187: lload #9
    //   1189: lstore_3
    //   1190: lload #7
    //   1192: lstore #5
    //   1194: aconst_null
    //   1195: aload_0
    //   1196: getfield S : Ljava/net/URI;
    //   1199: invokevirtual getHost : ()Ljava/lang/String;
    //   1202: aload_0
    //   1203: getfield S : Ljava/net/URI;
    //   1206: invokevirtual getPort : ()I
    //   1209: aload_0
    //   1210: getfield S : Ljava/net/URI;
    //   1213: invokevirtual getPath : ()Ljava/lang/String;
    //   1216: aload_0
    //   1217: getfield S : Ljava/net/URI;
    //   1220: invokevirtual getQuery : ()Ljava/lang/String;
    //   1223: invokestatic a : (Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1226: astore #16
    //   1228: lload #9
    //   1230: lstore_3
    //   1231: lload #7
    //   1233: lstore #5
    //   1235: aload #20
    //   1237: bipush #107
    //   1239: sipush #3038
    //   1242: bipush #103
    //   1244: invokestatic a : (III)Ljava/lang/String;
    //   1247: aload #16
    //   1249: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1252: pop
    //   1253: lload #9
    //   1255: lstore_3
    //   1256: lload #7
    //   1258: lstore #5
    //   1260: aload_0
    //   1261: getfield S : Ljava/net/URI;
    //   1264: invokevirtual getScheme : ()Ljava/lang/String;
    //   1267: astore #17
    //   1269: aload #17
    //   1271: ifnull -> 1293
    //   1274: aload #17
    //   1276: astore #16
    //   1278: lload #9
    //   1280: lstore_3
    //   1281: lload #7
    //   1283: lstore #5
    //   1285: aload #17
    //   1287: invokevirtual isEmpty : ()Z
    //   1290: ifeq -> 1316
    //   1293: lload #9
    //   1295: lstore_3
    //   1296: lload #7
    //   1298: lstore #5
    //   1300: getstatic com/datami/smi/b/m.cC : I
    //   1303: bipush #12
    //   1305: ior
    //   1306: sipush #2088
    //   1309: bipush #104
    //   1311: invokestatic a : (III)Ljava/lang/String;
    //   1314: astore #16
    //   1316: lload #9
    //   1318: lstore_3
    //   1319: lload #7
    //   1321: lstore #5
    //   1323: aload #20
    //   1325: bipush #102
    //   1327: sipush #3770
    //   1330: bipush #101
    //   1332: invokestatic a : (III)Ljava/lang/String;
    //   1335: aload #16
    //   1337: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1340: pop
    //   1341: lload #9
    //   1343: lstore_3
    //   1344: lload #7
    //   1346: lstore #5
    //   1348: aload_0
    //   1349: getfield N : Ljava/lang/String;
    //   1352: ifnull -> 1373
    //   1355: lload #9
    //   1357: lstore_3
    //   1358: lload #7
    //   1360: lstore #5
    //   1362: aload_0
    //   1363: aload_0
    //   1364: getfield N : Ljava/lang/String;
    //   1367: invokevirtual trim : ()Ljava/lang/String;
    //   1370: putfield N : Ljava/lang/String;
    //   1373: lload #9
    //   1375: lstore_3
    //   1376: lload #7
    //   1378: lstore #5
    //   1380: aload_0
    //   1381: getfield N : Ljava/lang/String;
    //   1384: ifnull -> 1435
    //   1387: lload #9
    //   1389: lstore_3
    //   1390: lload #7
    //   1392: lstore #5
    //   1394: aload_0
    //   1395: getfield N : Ljava/lang/String;
    //   1398: invokevirtual isEmpty : ()Z
    //   1401: ifne -> 1435
    //   1404: lload #9
    //   1406: lstore_3
    //   1407: lload #7
    //   1409: lstore #5
    //   1411: aload #20
    //   1413: bipush #102
    //   1415: sipush #3151
    //   1418: getstatic com/datami/smi/b/m.cC : I
    //   1421: bipush #12
    //   1423: ior
    //   1424: invokestatic a : (III)Ljava/lang/String;
    //   1427: aload_0
    //   1428: getfield N : Ljava/lang/String;
    //   1431: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1434: pop
    //   1435: lload #9
    //   1437: lstore_3
    //   1438: lload #7
    //   1440: lstore #5
    //   1442: aload_0
    //   1443: getfield W : Ljava/lang/String;
    //   1446: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   1449: ifne -> 1470
    //   1452: lload #9
    //   1454: lstore_3
    //   1455: lload #7
    //   1457: lstore #5
    //   1459: aload_0
    //   1460: aload_0
    //   1461: getfield W : Ljava/lang/String;
    //   1464: invokevirtual trim : ()Ljava/lang/String;
    //   1467: putfield W : Ljava/lang/String;
    //   1470: lload #9
    //   1472: lstore_3
    //   1473: lload #7
    //   1475: lstore #5
    //   1477: aload_0
    //   1478: getfield W : Ljava/lang/String;
    //   1481: invokevirtual isEmpty : ()Z
    //   1484: ifne -> 1533
    //   1487: lload #9
    //   1489: lstore_3
    //   1490: lload #7
    //   1492: lstore #5
    //   1494: aload_0
    //   1495: getfield W : Ljava/lang/String;
    //   1498: ifnull -> 1533
    //   1501: lload #9
    //   1503: lstore_3
    //   1504: lload #7
    //   1506: lstore #5
    //   1508: aload #20
    //   1510: getstatic com/datami/smi/b/m.cB : [B
    //   1513: sipush #836
    //   1516: baload
    //   1517: sipush #2622
    //   1520: bipush #96
    //   1522: invokestatic a : (III)Ljava/lang/String;
    //   1525: aload_0
    //   1526: getfield W : Ljava/lang/String;
    //   1529: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1532: pop
    //   1533: lload #9
    //   1535: lstore_3
    //   1536: lload #7
    //   1538: lstore #5
    //   1540: aload #20
    //   1542: getstatic com/datami/smi/b/m.cB : [B
    //   1545: sipush #836
    //   1548: baload
    //   1549: sipush #521
    //   1552: bipush #96
    //   1554: invokestatic a : (III)Ljava/lang/String;
    //   1557: getstatic com/datami/smi/b/m.l : Lcom/datami/smi/b/f;
    //   1560: invokevirtual name : ()Ljava/lang/String;
    //   1563: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1566: pop
    //   1567: lload #9
    //   1569: lstore_3
    //   1570: lload #7
    //   1572: lstore #5
    //   1574: aload #19
    //   1576: getstatic com/datami/smi/b/m.cB : [B
    //   1579: sipush #836
    //   1582: baload
    //   1583: sipush #3285
    //   1586: bipush #102
    //   1588: invokestatic a : (III)Ljava/lang/String;
    //   1591: aload #20
    //   1593: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1596: pop
    //   1597: lload #9
    //   1599: lstore_3
    //   1600: lload #7
    //   1602: lstore #5
    //   1604: getstatic com/datami/smi/b/m.cB : [B
    //   1607: sipush #3021
    //   1610: baload
    //   1611: iconst_1
    //   1612: iadd
    //   1613: sipush #1805
    //   1616: bipush #100
    //   1618: invokestatic a : (III)Ljava/lang/String;
    //   1621: aload #20
    //   1623: invokevirtual toString : ()Ljava/lang/String;
    //   1626: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1629: astore #16
    //   1631: aload #16
    //   1633: ifnull -> 1666
    //   1636: lload #9
    //   1638: lstore_3
    //   1639: lload #7
    //   1641: lstore #5
    //   1643: aload #19
    //   1645: getstatic com/datami/smi/b/m.cB : [B
    //   1648: sipush #836
    //   1651: baload
    //   1652: sipush #2066
    //   1655: bipush #96
    //   1657: invokestatic a : (III)Ljava/lang/String;
    //   1660: aload #16
    //   1662: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1665: pop
    //   1666: lload #9
    //   1668: lstore_3
    //   1669: lload #7
    //   1671: lstore #5
    //   1673: invokestatic currentTimeMillis : ()J
    //   1676: putstatic com/datami/smi/b/m.aP : J
    //   1679: lload #9
    //   1681: lstore_3
    //   1682: lload #7
    //   1684: lstore #5
    //   1686: new java/lang/StringBuilder
    //   1689: dup
    //   1690: invokespecial <init> : ()V
    //   1693: bipush #105
    //   1695: sipush #902
    //   1698: getstatic com/datami/smi/b/m.cB : [B
    //   1701: bipush #113
    //   1703: baload
    //   1704: ineg
    //   1705: invokestatic a : (III)Ljava/lang/String;
    //   1708: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1711: aload #15
    //   1713: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1716: astore #16
    //   1718: lload #9
    //   1720: lstore_3
    //   1721: lload #7
    //   1723: lstore #5
    //   1725: getstatic com/datami/smi/b/m.cB : [B
    //   1728: bipush #10
    //   1730: baload
    //   1731: istore_1
    //   1732: lload #9
    //   1734: lstore_3
    //   1735: lload #7
    //   1737: lstore #5
    //   1739: aload #16
    //   1741: iload_1
    //   1742: iload_1
    //   1743: sipush #154
    //   1746: ior
    //   1747: bipush #98
    //   1749: invokestatic a : (III)Ljava/lang/String;
    //   1752: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1755: aload #19
    //   1757: invokevirtual toString : ()Ljava/lang/String;
    //   1760: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1763: pop
    //   1764: lload #9
    //   1766: lstore_3
    //   1767: lload #7
    //   1769: lstore #5
    //   1771: invokestatic currentTimeMillis : ()J
    //   1774: lstore #7
    //   1776: lload #9
    //   1778: lstore_3
    //   1779: lload #7
    //   1781: lstore #5
    //   1783: getstatic com/datami/smi/b/m.M : Landroid/content/Context;
    //   1786: aload #15
    //   1788: aload #19
    //   1790: invokevirtual toString : ()Ljava/lang/String;
    //   1793: iconst_0
    //   1794: iload #14
    //   1796: invokestatic a : (Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    //   1799: astore #15
    //   1801: lload #9
    //   1803: lstore_3
    //   1804: lload #7
    //   1806: lstore #5
    //   1808: invokestatic currentTimeMillis : ()J
    //   1811: lstore #9
    //   1813: lload #9
    //   1815: lstore_3
    //   1816: lload #7
    //   1818: lstore #5
    //   1820: new java/lang/StringBuilder
    //   1823: dup
    //   1824: invokespecial <init> : ()V
    //   1827: getstatic com/datami/smi/b/m.cB : [B
    //   1830: sipush #836
    //   1833: baload
    //   1834: sipush #1053
    //   1837: bipush #93
    //   1839: invokestatic a : (III)Ljava/lang/String;
    //   1842: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1845: aload #15
    //   1847: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1850: getstatic com/datami/smi/b/m.cB : [B
    //   1853: sipush #141
    //   1856: baload
    //   1857: sipush #1482
    //   1860: getstatic com/datami/smi/b/m.cB : [B
    //   1863: sipush #836
    //   1866: baload
    //   1867: invokestatic a : (III)Ljava/lang/String;
    //   1870: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1873: invokestatic a : ()I
    //   1876: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   1879: pop
    //   1880: lload #9
    //   1882: lstore_3
    //   1883: lload #7
    //   1885: lstore #5
    //   1887: new org/json/JSONObject
    //   1890: dup
    //   1891: aload #15
    //   1893: invokespecial <init> : (Ljava/lang/String;)V
    //   1896: astore #15
    //   1898: lload #9
    //   1900: lstore_3
    //   1901: lload #7
    //   1903: lstore #5
    //   1905: sipush #200
    //   1908: invokestatic a : ()I
    //   1911: if_icmpne -> 3079
    //   1914: lload #9
    //   1916: lstore_3
    //   1917: lload #7
    //   1919: lstore #5
    //   1921: new java/util/Properties
    //   1924: dup
    //   1925: invokespecial <init> : ()V
    //   1928: astore #16
    //   1930: lload #9
    //   1932: lstore_3
    //   1933: lload #7
    //   1935: lstore #5
    //   1937: aload #16
    //   1939: bipush #105
    //   1941: sipush #618
    //   1944: bipush #103
    //   1946: invokestatic a : (III)Ljava/lang/String;
    //   1949: getstatic com/datami/smi/d/c.a : Lcom/datami/smi/d/c;
    //   1952: invokestatic a : (Lcom/datami/smi/d/c;)Ljava/lang/String;
    //   1955: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1958: pop
    //   1959: lload #9
    //   1961: lstore_3
    //   1962: lload #7
    //   1964: lstore #5
    //   1966: getstatic com/datami/smi/d/d.c : Lcom/datami/smi/d/d;
    //   1969: invokestatic a : (Lcom/datami/smi/d/d;)Ljava/lang/String;
    //   1972: aload #16
    //   1974: invokestatic b : (Ljava/lang/String;Ljava/util/Properties;)V
    //   1977: lload #9
    //   1979: lstore_3
    //   1980: lload #7
    //   1982: lstore #5
    //   1984: aload #15
    //   1986: bipush #105
    //   1988: sipush #2349
    //   1991: bipush #100
    //   1993: invokestatic a : (III)Ljava/lang/String;
    //   1996: invokevirtual getJSONObject : (Ljava/lang/String;)Lorg/json/JSONObject;
    //   1999: getstatic com/datami/smi/b/m.cB : [B
    //   2002: sipush #3021
    //   2005: baload
    //   2006: sipush #3813
    //   2009: bipush #102
    //   2011: invokestatic a : (III)Ljava/lang/String;
    //   2014: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   2017: astore #16
    //   2019: lload #9
    //   2021: lstore_3
    //   2022: lload #7
    //   2024: lstore #5
    //   2026: aload_0
    //   2027: aload #16
    //   2029: invokevirtual trim : ()Ljava/lang/String;
    //   2032: invokestatic parseInt : (Ljava/lang/String;)I
    //   2035: putfield X : I
    //   2038: lload #9
    //   2040: lstore_3
    //   2041: lload #7
    //   2043: lstore #5
    //   2045: getstatic com/datami/smi/b/m.cB : [B
    //   2048: sipush #3926
    //   2051: baload
    //   2052: istore_1
    //   2053: lload #9
    //   2055: lstore_3
    //   2056: lload #7
    //   2058: lstore #5
    //   2060: aload #16
    //   2062: iload_1
    //   2063: iload_1
    //   2064: sipush #208
    //   2067: ior
    //   2068: bipush #105
    //   2070: invokestatic a : (III)Ljava/lang/String;
    //   2073: invokevirtual equals : (Ljava/lang/Object;)Z
    //   2076: ifeq -> 3015
    //   2079: lload #9
    //   2081: lstore_3
    //   2082: lload #7
    //   2084: lstore #5
    //   2086: getstatic com/datami/smi/b/m.J : Ljava/lang/String;
    //   2089: getstatic com/datami/smi/b/m.cB : [B
    //   2092: sipush #836
    //   2095: baload
    //   2096: sipush #2611
    //   2099: bipush #94
    //   2101: invokestatic a : (III)Ljava/lang/String;
    //   2104: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   2107: pop
    //   2108: lload #9
    //   2110: lstore_3
    //   2111: lload #7
    //   2113: lstore #5
    //   2115: aload_0
    //   2116: aload #15
    //   2118: invokevirtual a : (Lorg/json/JSONObject;)V
    //   2121: lload #9
    //   2123: lstore_3
    //   2124: lload #7
    //   2126: lstore #5
    //   2128: getstatic com/datami/smi/b/a.b : Lcom/datami/smi/b/a;
    //   2131: aload_0
    //   2132: getfield ad : Lcom/datami/smi/b/a;
    //   2135: if_acmpne -> 2560
    //   2138: lload #9
    //   2140: lstore_3
    //   2141: lload #7
    //   2143: lstore #5
    //   2145: aload_0
    //   2146: getfield aD : J
    //   2149: lconst_0
    //   2150: lcmp
    //   2151: ifeq -> 2229
    //   2154: lload #9
    //   2156: lstore_3
    //   2157: lload #7
    //   2159: lstore #5
    //   2161: aload #15
    //   2163: getstatic com/datami/smi/b/m.cB : [B
    //   2166: sipush #836
    //   2169: baload
    //   2170: sipush #463
    //   2173: getstatic com/datami/smi/b/m.cC : I
    //   2176: bipush #12
    //   2178: ior
    //   2179: invokestatic a : (III)Ljava/lang/String;
    //   2182: aload_0
    //   2183: getfield aD : J
    //   2186: invokevirtual put : (Ljava/lang/String;J)Lorg/json/JSONObject;
    //   2189: pop
    //   2190: lload #9
    //   2192: lstore_3
    //   2193: lload #7
    //   2195: lstore #5
    //   2197: new java/lang/StringBuilder
    //   2200: dup
    //   2201: invokespecial <init> : ()V
    //   2204: bipush #105
    //   2206: sipush #4384
    //   2209: getstatic com/datami/smi/b/m.cB : [B
    //   2212: bipush #73
    //   2214: baload
    //   2215: invokestatic a : (III)Ljava/lang/String;
    //   2218: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2221: aload_0
    //   2222: getfield aD : J
    //   2225: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   2228: pop
    //   2229: lload #9
    //   2231: lstore_3
    //   2232: lload #7
    //   2234: lstore #5
    //   2236: aload #15
    //   2238: invokevirtual toString : ()Ljava/lang/String;
    //   2241: astore #15
    //   2243: lload #9
    //   2245: lstore_3
    //   2246: lload #7
    //   2248: lstore #5
    //   2250: getstatic com/datami/smi/b/m.cB : [B
    //   2253: sipush #3021
    //   2256: baload
    //   2257: iconst_1
    //   2258: iadd
    //   2259: istore_1
    //   2260: lload #9
    //   2262: lstore_3
    //   2263: lload #7
    //   2265: lstore #5
    //   2267: new com/datami/smi/c/a
    //   2270: dup
    //   2271: iload_1
    //   2272: iload_1
    //   2273: bipush #33
    //   2275: ior
    //   2276: getstatic com/datami/smi/b/m.cB : [B
    //   2279: sipush #3021
    //   2282: baload
    //   2283: invokestatic a : (III)Ljava/lang/String;
    //   2286: invokespecial <init> : (Ljava/lang/String;)V
    //   2289: astore #16
    //   2291: lload #9
    //   2293: lstore_3
    //   2294: lload #7
    //   2296: lstore #5
    //   2298: getstatic com/datami/smi/b/m.M : Landroid/content/Context;
    //   2301: invokestatic a : (Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   2304: astore #17
    //   2306: lload #9
    //   2308: lstore_3
    //   2309: lload #7
    //   2311: lstore #5
    //   2313: aload #17
    //   2315: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   2320: astore #19
    //   2322: lload #9
    //   2324: lstore_3
    //   2325: lload #7
    //   2327: lstore #5
    //   2329: aload #17
    //   2331: bipush #106
    //   2333: sipush #161
    //   2336: getstatic com/datami/smi/b/m.cB : [B
    //   2339: sipush #3021
    //   2342: baload
    //   2343: invokestatic a : (III)Ljava/lang/String;
    //   2346: invokeinterface contains : (Ljava/lang/String;)Z
    //   2351: ifeq -> 2384
    //   2354: lload #9
    //   2356: lstore_3
    //   2357: lload #7
    //   2359: lstore #5
    //   2361: aload #19
    //   2363: bipush #106
    //   2365: sipush #161
    //   2368: getstatic com/datami/smi/b/m.cB : [B
    //   2371: sipush #3021
    //   2374: baload
    //   2375: invokestatic a : (III)Ljava/lang/String;
    //   2378: invokeinterface remove : (Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   2383: pop
    //   2384: lload #9
    //   2386: lstore_3
    //   2387: lload #7
    //   2389: lstore #5
    //   2391: aload #17
    //   2393: bipush #106
    //   2395: getstatic com/datami/smi/b/m.cB : [B
    //   2398: sipush #347
    //   2401: baload
    //   2402: getstatic com/datami/smi/b/m.cB : [B
    //   2405: sipush #817
    //   2408: baload
    //   2409: invokestatic a : (III)Ljava/lang/String;
    //   2412: invokeinterface contains : (Ljava/lang/String;)Z
    //   2417: ifeq -> 2454
    //   2420: lload #9
    //   2422: lstore_3
    //   2423: lload #7
    //   2425: lstore #5
    //   2427: aload #19
    //   2429: bipush #106
    //   2431: getstatic com/datami/smi/b/m.cB : [B
    //   2434: sipush #347
    //   2437: baload
    //   2438: getstatic com/datami/smi/b/m.cB : [B
    //   2441: sipush #817
    //   2444: baload
    //   2445: invokestatic a : (III)Ljava/lang/String;
    //   2448: invokeinterface remove : (Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   2453: pop
    //   2454: lload #9
    //   2456: lstore_3
    //   2457: lload #7
    //   2459: lstore #5
    //   2461: aload #19
    //   2463: bipush #106
    //   2465: sipush #161
    //   2468: getstatic com/datami/smi/b/m.cB : [B
    //   2471: sipush #3021
    //   2474: baload
    //   2475: invokestatic a : (III)Ljava/lang/String;
    //   2478: aload #16
    //   2480: aload #15
    //   2482: invokevirtual a : (Ljava/lang/String;)Ljava/lang/String;
    //   2485: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   2490: pop
    //   2491: lload #9
    //   2493: lstore_3
    //   2494: lload #7
    //   2496: lstore #5
    //   2498: aload #19
    //   2500: bipush #106
    //   2502: getstatic com/datami/smi/b/m.cB : [B
    //   2505: sipush #347
    //   2508: baload
    //   2509: getstatic com/datami/smi/b/m.cB : [B
    //   2512: sipush #817
    //   2515: baload
    //   2516: invokestatic a : (III)Ljava/lang/String;
    //   2519: getstatic com/datami/smi/b/m.c : Ljava/util/concurrent/atomic/AtomicLong;
    //   2522: invokevirtual get : ()J
    //   2525: invokeinterface putLong : (Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    //   2530: pop
    //   2531: lload #9
    //   2533: lstore_3
    //   2534: lload #7
    //   2536: lstore #5
    //   2538: aload #19
    //   2540: invokeinterface commit : ()Z
    //   2545: pop
    //   2546: lload #9
    //   2548: lstore_3
    //   2549: lload #7
    //   2551: lstore #5
    //   2553: aload #19
    //   2555: invokeinterface apply : ()V
    //   2560: lload #9
    //   2562: lstore_3
    //   2563: lload #7
    //   2565: lstore #5
    //   2567: iconst_3
    //   2568: aload_0
    //   2569: getfield ac : I
    //   2572: if_icmpne -> 3567
    //   2575: lload #9
    //   2577: lstore_3
    //   2578: lload #7
    //   2580: lstore #5
    //   2582: invokestatic currentTimeMillis : ()J
    //   2585: lstore #11
    //   2587: aload #18
    //   2589: ifnull -> 2662
    //   2592: lload #9
    //   2594: lstore_3
    //   2595: lload #7
    //   2597: lstore #5
    //   2599: aload #18
    //   2601: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   2606: astore #15
    //   2608: lload #9
    //   2610: lstore_3
    //   2611: lload #7
    //   2613: lstore #5
    //   2615: aload #15
    //   2617: getstatic com/datami/smi/b/m.cB : [B
    //   2620: sipush #836
    //   2623: baload
    //   2624: sipush #3200
    //   2627: getstatic com/datami/smi/b/m.cC : I
    //   2630: iconst_2
    //   2631: isub
    //   2632: invokestatic a : (III)Ljava/lang/String;
    //   2635: lload #11
    //   2637: ldc2_w 300000
    //   2640: ladd
    //   2641: invokeinterface putLong : (Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    //   2646: pop
    //   2647: lload #9
    //   2649: lstore_3
    //   2650: lload #7
    //   2652: lstore #5
    //   2654: aload #15
    //   2656: invokeinterface commit : ()Z
    //   2661: pop
    //   2662: lload #9
    //   2664: lstore_3
    //   2665: lload #7
    //   2667: lstore #5
    //   2669: iconst_0
    //   2670: putstatic com/datami/smi/b/m.ab : Z
    //   2673: lload #9
    //   2675: lload #7
    //   2677: lsub
    //   2678: lconst_0
    //   2679: lcmp
    //   2680: ifle -> 3689
    //   2683: invokestatic a : ()Lcom/datami/smi/a/d;
    //   2686: lload #9
    //   2688: lload #7
    //   2690: lsub
    //   2691: invokevirtual e : (J)V
    //   2694: return
    //   2695: lload #9
    //   2697: lstore_3
    //   2698: lload #7
    //   2700: lstore #5
    //   2702: aload #20
    //   2704: bipush #107
    //   2706: sipush #650
    //   2709: bipush #100
    //   2711: invokestatic a : (III)Ljava/lang/String;
    //   2714: new java/lang/StringBuilder
    //   2717: dup
    //   2718: invokespecial <init> : ()V
    //   2721: getstatic com/datami/smi/b/m.O : Ljava/lang/String;
    //   2724: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2727: getstatic com/datami/smi/b/m.cB : [B
    //   2730: sipush #575
    //   2733: baload
    //   2734: ineg
    //   2735: sipush #349
    //   2738: bipush #105
    //   2740: invokestatic a : (III)Ljava/lang/String;
    //   2743: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2746: getstatic com/datami/smi/c/c.e : Ljava/lang/String;
    //   2749: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2752: invokevirtual toString : ()Ljava/lang/String;
    //   2755: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   2758: pop
    //   2759: goto -> 911
    //   2762: astore #15
    //   2764: aload_0
    //   2765: iconst_3
    //   2766: putfield ac : I
    //   2769: aload_0
    //   2770: aload #15
    //   2772: putfield aa : Ljava/lang/Exception;
    //   2775: invokestatic a : ()I
    //   2778: istore_1
    //   2779: sipush #200
    //   2782: iload_1
    //   2783: if_icmpeq -> 2824
    //   2786: aload_0
    //   2787: iload_1
    //   2788: putfield X : I
    //   2791: new java/lang/StringBuilder
    //   2794: dup
    //   2795: invokespecial <init> : ()V
    //   2798: getstatic com/datami/smi/b/m.cB : [B
    //   2801: iconst_1
    //   2802: baload
    //   2803: ineg
    //   2804: sipush #1930
    //   2807: getstatic com/datami/smi/b/m.cB : [B
    //   2810: bipush #73
    //   2812: baload
    //   2813: invokestatic a : (III)Ljava/lang/String;
    //   2816: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2819: iload_1
    //   2820: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   2823: pop
    //   2824: lload_3
    //   2825: lstore #9
    //   2827: lload #5
    //   2829: lstore #7
    //   2831: aload_0
    //   2832: getfield W : Ljava/lang/String;
    //   2835: ifnull -> 2673
    //   2838: lload_3
    //   2839: lstore #9
    //   2841: lload #5
    //   2843: lstore #7
    //   2845: aload_0
    //   2846: getfield W : Ljava/lang/String;
    //   2849: getstatic com/datami/smi/b/m.cB : [B
    //   2852: iconst_1
    //   2853: baload
    //   2854: ineg
    //   2855: sipush #1474
    //   2858: bipush #97
    //   2860: invokestatic a : (III)Ljava/lang/String;
    //   2863: invokevirtual equals : (Ljava/lang/Object;)Z
    //   2866: ifeq -> 2673
    //   2869: new com/datami/smi/b/x
    //   2872: dup
    //   2873: getstatic com/datami/smi/b/m.M : Landroid/content/Context;
    //   2876: getstatic com/datami/smi/b/m.O : Ljava/lang/String;
    //   2879: invokespecial <init> : (Landroid/content/Context;Ljava/lang/String;)V
    //   2882: astore #15
    //   2884: lload_3
    //   2885: lstore #9
    //   2887: lload #5
    //   2889: lstore #7
    //   2891: getstatic com/datami/smi/b/m.ab : Z
    //   2894: ifne -> 2673
    //   2897: iconst_1
    //   2898: putstatic com/datami/smi/b/m.ab : Z
    //   2901: getstatic com/datami/smi/b/m.cC : I
    //   2904: iconst_2
    //   2905: isub
    //   2906: istore_1
    //   2907: iload_1
    //   2908: iload_1
    //   2909: sipush #2592
    //   2912: ior
    //   2913: getstatic com/datami/smi/b/m.cB : [B
    //   2916: sipush #3021
    //   2919: baload
    //   2920: invokestatic a : (III)Ljava/lang/String;
    //   2923: pop
    //   2924: getstatic com/datami/smi/b/m.cB : [B
    //   2927: sipush #1430
    //   2930: baload
    //   2931: ineg
    //   2932: sipush #1305
    //   2935: getstatic com/datami/smi/b/m.cB : [B
    //   2938: sipush #1893
    //   2941: baload
    //   2942: invokestatic a : (III)Ljava/lang/String;
    //   2945: pop
    //   2946: getstatic com/datami/smi/b/m.a : Ljava/util/concurrent/ScheduledExecutorService;
    //   2949: aload #15
    //   2951: ldc2_w 120
    //   2954: getstatic java/util/concurrent/TimeUnit.SECONDS : Ljava/util/concurrent/TimeUnit;
    //   2957: invokeinterface schedule : (Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    //   2962: putstatic com/datami/smi/b/m.L : Ljava/util/concurrent/ScheduledFuture;
    //   2965: lload_3
    //   2966: lstore #9
    //   2968: lload #5
    //   2970: lstore #7
    //   2972: goto -> 2673
    //   2975: lload #9
    //   2977: lstore_3
    //   2978: lload #7
    //   2980: lstore #5
    //   2982: aload #20
    //   2984: bipush #102
    //   2986: sipush #3770
    //   2989: bipush #101
    //   2991: invokestatic a : (III)Ljava/lang/String;
    //   2994: getstatic com/datami/smi/b/m.cC : I
    //   2997: bipush #12
    //   2999: ior
    //   3000: sipush #2088
    //   3003: bipush #104
    //   3005: invokestatic a : (III)Ljava/lang/String;
    //   3008: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   3011: pop
    //   3012: goto -> 1341
    //   3015: lload #9
    //   3017: lstore_3
    //   3018: lload #7
    //   3020: lstore #5
    //   3022: getstatic com/datami/smi/b/m.J : Ljava/lang/String;
    //   3025: new java/lang/StringBuilder
    //   3028: dup
    //   3029: invokespecial <init> : ()V
    //   3032: getstatic com/datami/smi/b/m.cB : [B
    //   3035: sipush #836
    //   3038: baload
    //   3039: sipush #3329
    //   3042: bipush #93
    //   3044: invokestatic a : (III)Ljava/lang/String;
    //   3047: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3050: aload_0
    //   3051: getfield X : I
    //   3054: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   3057: invokevirtual toString : ()Ljava/lang/String;
    //   3060: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   3063: pop
    //   3064: lload #9
    //   3066: lstore_3
    //   3067: lload #7
    //   3069: lstore #5
    //   3071: aload_0
    //   3072: iconst_3
    //   3073: putfield ac : I
    //   3076: goto -> 2560
    //   3079: lload #9
    //   3081: lstore_3
    //   3082: lload #7
    //   3084: lstore #5
    //   3086: aload #15
    //   3088: getstatic com/datami/smi/b/m.cB : [B
    //   3091: sipush #3021
    //   3094: baload
    //   3095: sipush #3813
    //   3098: bipush #102
    //   3100: invokestatic a : (III)Ljava/lang/String;
    //   3103: invokevirtual has : (Ljava/lang/String;)Z
    //   3106: ifeq -> 3515
    //   3109: lload #9
    //   3111: lstore_3
    //   3112: lload #7
    //   3114: lstore #5
    //   3116: aload_0
    //   3117: aload #15
    //   3119: getstatic com/datami/smi/b/m.cB : [B
    //   3122: sipush #3021
    //   3125: baload
    //   3126: sipush #3813
    //   3129: bipush #102
    //   3131: invokestatic a : (III)Ljava/lang/String;
    //   3134: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   3137: invokestatic valueOf : (Ljava/lang/String;)Ljava/lang/Integer;
    //   3140: invokevirtual intValue : ()I
    //   3143: putfield X : I
    //   3146: lload #9
    //   3148: lstore_3
    //   3149: lload #7
    //   3151: lstore #5
    //   3153: getstatic com/datami/smi/b/m.J : Ljava/lang/String;
    //   3156: new java/lang/StringBuilder
    //   3159: dup
    //   3160: invokespecial <init> : ()V
    //   3163: getstatic com/datami/smi/b/m.cB : [B
    //   3166: sipush #836
    //   3169: baload
    //   3170: sipush #3329
    //   3173: bipush #93
    //   3175: invokestatic a : (III)Ljava/lang/String;
    //   3178: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3181: aload_0
    //   3182: getfield X : I
    //   3185: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   3188: invokevirtual toString : ()Ljava/lang/String;
    //   3191: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   3194: pop
    //   3195: lload #9
    //   3197: lstore_3
    //   3198: lload #7
    //   3200: lstore #5
    //   3202: aload_0
    //   3203: iconst_3
    //   3204: putfield ac : I
    //   3207: lload #9
    //   3209: lstore_3
    //   3210: lload #7
    //   3212: lstore #5
    //   3214: aload #15
    //   3216: bipush #99
    //   3218: sipush #331
    //   3221: bipush #102
    //   3223: invokestatic a : (III)Ljava/lang/String;
    //   3226: invokevirtual has : (Ljava/lang/String;)Z
    //   3229: ifeq -> 3258
    //   3232: lload #9
    //   3234: lstore_3
    //   3235: lload #7
    //   3237: lstore #5
    //   3239: aload_0
    //   3240: aload #15
    //   3242: bipush #99
    //   3244: sipush #331
    //   3247: bipush #102
    //   3249: invokestatic a : (III)Ljava/lang/String;
    //   3252: invokevirtual getJSONObject : (Ljava/lang/String;)Lorg/json/JSONObject;
    //   3255: invokespecial b : (Lorg/json/JSONObject;)V
    //   3258: lload #9
    //   3260: lstore_3
    //   3261: lload #7
    //   3263: lstore #5
    //   3265: aload_0
    //   3266: getfield X : I
    //   3269: sipush #20014
    //   3272: if_icmpne -> 3415
    //   3275: lload #9
    //   3277: lstore_3
    //   3278: lload #7
    //   3280: lstore #5
    //   3282: invokestatic s : ()I
    //   3285: istore_1
    //   3286: iload_1
    //   3287: bipush #7
    //   3289: if_icmpeq -> 3415
    //   3292: lload #9
    //   3294: lstore_3
    //   3295: lload #7
    //   3297: lstore #5
    //   3299: getstatic com/datami/smi/b/m.cC : I
    //   3302: iconst_2
    //   3303: isub
    //   3304: istore_2
    //   3305: lload #9
    //   3307: lstore_3
    //   3308: lload #7
    //   3310: lstore #5
    //   3312: iload_2
    //   3313: iload_2
    //   3314: sipush #2592
    //   3317: ior
    //   3318: getstatic com/datami/smi/b/m.cB : [B
    //   3321: sipush #3021
    //   3324: baload
    //   3325: invokestatic a : (III)Ljava/lang/String;
    //   3328: pop
    //   3329: lload #9
    //   3331: lstore_3
    //   3332: lload #7
    //   3334: lstore #5
    //   3336: new java/lang/StringBuilder
    //   3339: dup
    //   3340: invokespecial <init> : ()V
    //   3343: getstatic com/datami/smi/b/m.cB : [B
    //   3346: sipush #1249
    //   3349: baload
    //   3350: sipush #3911
    //   3353: getstatic com/datami/smi/b/m.cB : [B
    //   3356: sipush #265
    //   3359: baload
    //   3360: invokestatic a : (III)Ljava/lang/String;
    //   3363: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3366: iload_1
    //   3367: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   3370: pop
    //   3371: lload #9
    //   3373: lstore_3
    //   3374: lload #7
    //   3376: lstore #5
    //   3378: new com/datami/smi/b/u
    //   3381: dup
    //   3382: getstatic com/datami/smi/b/m.M : Landroid/content/Context;
    //   3385: iload_1
    //   3386: invokespecial <init> : (Landroid/content/Context;I)V
    //   3389: astore #15
    //   3391: lload #9
    //   3393: lstore_3
    //   3394: lload #7
    //   3396: lstore #5
    //   3398: getstatic com/datami/smi/b/m.a : Ljava/util/concurrent/ScheduledExecutorService;
    //   3401: aload #15
    //   3403: ldc2_w 30
    //   3406: getstatic java/util/concurrent/TimeUnit.MINUTES : Ljava/util/concurrent/TimeUnit;
    //   3409: invokeinterface schedule : (Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    //   3414: pop
    //   3415: lload #9
    //   3417: lstore_3
    //   3418: lload #7
    //   3420: lstore #5
    //   3422: new java/util/Properties
    //   3425: dup
    //   3426: invokespecial <init> : ()V
    //   3429: astore #15
    //   3431: lload #9
    //   3433: lstore_3
    //   3434: lload #7
    //   3436: lstore #5
    //   3438: aload #15
    //   3440: getstatic com/datami/smi/b/m.cC : I
    //   3443: bipush #8
    //   3445: ior
    //   3446: sipush #3370
    //   3449: bipush #97
    //   3451: invokestatic a : (III)Ljava/lang/String;
    //   3454: aload_0
    //   3455: getfield X : I
    //   3458: invokestatic toString : (I)Ljava/lang/String;
    //   3461: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   3464: pop
    //   3465: lload #9
    //   3467: lstore_3
    //   3468: lload #7
    //   3470: lstore #5
    //   3472: aload #15
    //   3474: bipush #105
    //   3476: sipush #618
    //   3479: bipush #103
    //   3481: invokestatic a : (III)Ljava/lang/String;
    //   3484: getstatic com/datami/smi/d/c.b : Lcom/datami/smi/d/c;
    //   3487: invokestatic a : (Lcom/datami/smi/d/c;)Ljava/lang/String;
    //   3490: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   3493: pop
    //   3494: lload #9
    //   3496: lstore_3
    //   3497: lload #7
    //   3499: lstore #5
    //   3501: getstatic com/datami/smi/d/d.c : Lcom/datami/smi/d/d;
    //   3504: invokestatic a : (Lcom/datami/smi/d/d;)Ljava/lang/String;
    //   3507: aload #15
    //   3509: invokestatic b : (Ljava/lang/String;Ljava/util/Properties;)V
    //   3512: goto -> 2560
    //   3515: lload #9
    //   3517: lstore_3
    //   3518: lload #7
    //   3520: lstore #5
    //   3522: getstatic com/datami/smi/b/m.J : Ljava/lang/String;
    //   3525: new java/lang/StringBuilder
    //   3528: dup
    //   3529: invokespecial <init> : ()V
    //   3532: getstatic com/datami/smi/b/m.cB : [B
    //   3535: sipush #836
    //   3538: baload
    //   3539: sipush #2354
    //   3542: getstatic com/datami/smi/b/m.cC : I
    //   3545: invokestatic a : (III)Ljava/lang/String;
    //   3548: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3551: invokestatic a : ()I
    //   3554: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   3557: invokevirtual toString : ()Ljava/lang/String;
    //   3560: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   3563: pop
    //   3564: goto -> 3195
    //   3567: lload #9
    //   3569: lstore_3
    //   3570: lload #7
    //   3572: lstore #5
    //   3574: iconst_2
    //   3575: aload_0
    //   3576: getfield ac : I
    //   3579: if_icmpne -> 2662
    //   3582: aload #18
    //   3584: ifnull -> 2662
    //   3587: lload #9
    //   3589: lstore_3
    //   3590: lload #7
    //   3592: lstore #5
    //   3594: aload #18
    //   3596: getstatic com/datami/smi/b/m.cB : [B
    //   3599: sipush #836
    //   3602: baload
    //   3603: sipush #3200
    //   3606: getstatic com/datami/smi/b/m.cC : I
    //   3609: iconst_2
    //   3610: isub
    //   3611: invokestatic a : (III)Ljava/lang/String;
    //   3614: invokeinterface contains : (Ljava/lang/String;)Z
    //   3619: ifeq -> 2662
    //   3622: lload #9
    //   3624: lstore_3
    //   3625: lload #7
    //   3627: lstore #5
    //   3629: aload #18
    //   3631: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   3636: astore #15
    //   3638: lload #9
    //   3640: lstore_3
    //   3641: lload #7
    //   3643: lstore #5
    //   3645: aload #15
    //   3647: getstatic com/datami/smi/b/m.cB : [B
    //   3650: sipush #836
    //   3653: baload
    //   3654: sipush #3200
    //   3657: getstatic com/datami/smi/b/m.cC : I
    //   3660: iconst_2
    //   3661: isub
    //   3662: invokestatic a : (III)Ljava/lang/String;
    //   3665: invokeinterface remove : (Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   3670: pop
    //   3671: lload #9
    //   3673: lstore_3
    //   3674: lload #7
    //   3676: lstore #5
    //   3678: aload #15
    //   3680: invokeinterface commit : ()Z
    //   3685: pop
    //   3686: goto -> 2662
    //   3689: return
    // Exception table:
    //   from	to	target	type
    //   13	21	2762	java/lang/Exception
    //   28	32	2762	java/lang/Exception
    //   39	60	2762	java/lang/Exception
    //   67	80	2762	java/lang/Exception
    //   92	100	2762	java/lang/Exception
    //   111	129	2762	java/lang/Exception
    //   136	148	2762	java/lang/Exception
    //   155	166	2762	java/lang/Exception
    //   173	180	2762	java/lang/Exception
    //   187	196	2762	java/lang/Exception
    //   203	212	2762	java/lang/Exception
    //   219	237	2762	java/lang/Exception
    //   244	262	2762	java/lang/Exception
    //   269	276	2762	java/lang/Exception
    //   283	289	2762	java/lang/Exception
    //   296	301	2762	java/lang/Exception
    //   314	323	2762	java/lang/Exception
    //   330	336	2762	java/lang/Exception
    //   343	358	2762	java/lang/Exception
    //   365	373	2762	java/lang/Exception
    //   380	388	2762	java/lang/Exception
    //   395	403	2762	java/lang/Exception
    //   410	417	2762	java/lang/Exception
    //   424	446	2762	java/lang/Exception
    //   453	458	2762	java/lang/Exception
    //   471	479	2762	java/lang/Exception
    //   486	504	2762	java/lang/Exception
    //   511	518	2762	java/lang/Exception
    //   530	538	2762	java/lang/Exception
    //   545	563	2762	java/lang/Exception
    //   570	577	2762	java/lang/Exception
    //   584	595	2762	java/lang/Exception
    //   602	609	2762	java/lang/Exception
    //   616	626	2762	java/lang/Exception
    //   633	641	2762	java/lang/Exception
    //   654	673	2762	java/lang/Exception
    //   680	689	2762	java/lang/Exception
    //   696	715	2762	java/lang/Exception
    //   722	741	2762	java/lang/Exception
    //   748	767	2762	java/lang/Exception
    //   774	780	2762	java/lang/Exception
    //   787	796	2762	java/lang/Exception
    //   803	809	2762	java/lang/Exception
    //   816	825	2762	java/lang/Exception
    //   832	847	2762	java/lang/Exception
    //   854	911	2762	java/lang/Exception
    //   918	946	2762	java/lang/Exception
    //   958	966	2762	java/lang/Exception
    //   973	993	2762	java/lang/Exception
    //   1000	1023	2762	java/lang/Exception
    //   1030	1055	2762	java/lang/Exception
    //   1062	1071	2762	java/lang/Exception
    //   1078	1087	2762	java/lang/Exception
    //   1094	1117	2762	java/lang/Exception
    //   1124	1143	2762	java/lang/Exception
    //   1150	1173	2762	java/lang/Exception
    //   1180	1187	2762	java/lang/Exception
    //   1194	1228	2762	java/lang/Exception
    //   1235	1253	2762	java/lang/Exception
    //   1260	1269	2762	java/lang/Exception
    //   1285	1293	2762	java/lang/Exception
    //   1300	1316	2762	java/lang/Exception
    //   1323	1341	2762	java/lang/Exception
    //   1348	1355	2762	java/lang/Exception
    //   1362	1373	2762	java/lang/Exception
    //   1380	1387	2762	java/lang/Exception
    //   1394	1404	2762	java/lang/Exception
    //   1411	1435	2762	java/lang/Exception
    //   1442	1452	2762	java/lang/Exception
    //   1459	1470	2762	java/lang/Exception
    //   1477	1487	2762	java/lang/Exception
    //   1494	1501	2762	java/lang/Exception
    //   1508	1533	2762	java/lang/Exception
    //   1540	1567	2762	java/lang/Exception
    //   1574	1597	2762	java/lang/Exception
    //   1604	1631	2762	java/lang/Exception
    //   1643	1666	2762	java/lang/Exception
    //   1673	1679	2762	java/lang/Exception
    //   1686	1718	2762	java/lang/Exception
    //   1725	1732	2762	java/lang/Exception
    //   1739	1764	2762	java/lang/Exception
    //   1771	1776	2762	java/lang/Exception
    //   1783	1801	2762	java/lang/Exception
    //   1808	1813	2762	java/lang/Exception
    //   1820	1880	2762	java/lang/Exception
    //   1887	1898	2762	java/lang/Exception
    //   1905	1914	2762	java/lang/Exception
    //   1921	1930	2762	java/lang/Exception
    //   1937	1959	2762	java/lang/Exception
    //   1966	1977	2762	java/lang/Exception
    //   1984	2019	2762	java/lang/Exception
    //   2026	2038	2762	java/lang/Exception
    //   2045	2053	2762	java/lang/Exception
    //   2060	2079	2762	java/lang/Exception
    //   2086	2108	2762	java/lang/Exception
    //   2115	2121	2762	java/lang/Exception
    //   2128	2138	2762	java/lang/Exception
    //   2145	2154	2762	java/lang/Exception
    //   2161	2190	2762	java/lang/Exception
    //   2197	2229	2762	java/lang/Exception
    //   2236	2243	2762	java/lang/Exception
    //   2250	2260	2762	java/lang/Exception
    //   2267	2291	2762	java/lang/Exception
    //   2298	2306	2762	java/lang/Exception
    //   2313	2322	2762	java/lang/Exception
    //   2329	2354	2762	java/lang/Exception
    //   2361	2384	2762	java/lang/Exception
    //   2391	2420	2762	java/lang/Exception
    //   2427	2454	2762	java/lang/Exception
    //   2461	2491	2762	java/lang/Exception
    //   2498	2531	2762	java/lang/Exception
    //   2538	2546	2762	java/lang/Exception
    //   2553	2560	2762	java/lang/Exception
    //   2567	2575	2762	java/lang/Exception
    //   2582	2587	2762	java/lang/Exception
    //   2599	2608	2762	java/lang/Exception
    //   2615	2647	2762	java/lang/Exception
    //   2654	2662	2762	java/lang/Exception
    //   2669	2673	2762	java/lang/Exception
    //   2702	2759	2762	java/lang/Exception
    //   2982	3012	2762	java/lang/Exception
    //   3022	3064	2762	java/lang/Exception
    //   3071	3076	2762	java/lang/Exception
    //   3086	3109	2762	java/lang/Exception
    //   3116	3146	2762	java/lang/Exception
    //   3153	3195	2762	java/lang/Exception
    //   3202	3207	2762	java/lang/Exception
    //   3214	3232	2762	java/lang/Exception
    //   3239	3258	2762	java/lang/Exception
    //   3265	3275	2762	java/lang/Exception
    //   3282	3286	2762	java/lang/Exception
    //   3299	3305	2762	java/lang/Exception
    //   3312	3329	2762	java/lang/Exception
    //   3336	3371	2762	java/lang/Exception
    //   3378	3391	2762	java/lang/Exception
    //   3398	3415	2762	java/lang/Exception
    //   3422	3431	2762	java/lang/Exception
    //   3438	3465	2762	java/lang/Exception
    //   3472	3494	2762	java/lang/Exception
    //   3501	3512	2762	java/lang/Exception
    //   3522	3564	2762	java/lang/Exception
    //   3574	3582	2762	java/lang/Exception
    //   3594	3622	2762	java/lang/Exception
    //   3629	3638	2762	java/lang/Exception
    //   3645	3671	2762	java/lang/Exception
    //   3678	3686	2762	java/lang/Exception
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */