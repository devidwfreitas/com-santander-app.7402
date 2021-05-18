import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.UUID;

class bmd {
  private static final String a = "com.facebook.appevents.SessionInfo.sessionStartTime";
  
  private static final String b = "com.facebook.appevents.SessionInfo.sessionEndTime";
  
  private static final String c = "com.facebook.appevents.SessionInfo.interruptionCount";
  
  private static final String d = "com.facebook.appevents.SessionInfo.sessionId";
  
  private Long e;
  
  private Long f;
  
  private int g;
  
  private Long h;
  
  private bmf i;
  
  private UUID j;
  
  public bmd(Long paramLong1, Long paramLong2) {
    this(paramLong1, paramLong2, UUID.randomUUID());
  }
  
  public bmd(Long paramLong1, Long paramLong2, UUID paramUUID) {
    this.e = paramLong1;
    this.f = paramLong2;
    this.j = paramUUID;
  }
  
  public static bmd a() {
    SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(bhv.h());
    long l1 = sharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionStartTime", 0L);
    long l2 = sharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionEndTime", 0L);
    String str = sharedPreferences.getString("com.facebook.appevents.SessionInfo.sessionId", null);
    if (l1 == 0L || l2 == 0L || str == null)
      return null; 
    bmd bmd1 = new bmd(Long.valueOf(l1), Long.valueOf(l2));
    bmd1.g = sharedPreferences.getInt("com.facebook.appevents.SessionInfo.interruptionCount", 0);
    bmd1.i = bmf.a();
    bmd1.h = Long.valueOf(System.currentTimeMillis());
    bmd1.j = UUID.fromString(str);
    return bmd1;
  }
  
  public static void b() {
    SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(bhv.h()).edit();
    editor.remove("com.facebook.appevents.SessionInfo.sessionStartTime");
    editor.remove("com.facebook.appevents.SessionInfo.sessionEndTime");
    editor.remove("com.facebook.appevents.SessionInfo.interruptionCount");
    editor.remove("com.facebook.appevents.SessionInfo.sessionId");
    editor.apply();
    bmf.b();
  }
  
  public void a(bmf parambmf) {
    this.i = parambmf;
  }
  
  public void a(Long paramLong) {
    this.e = paramLong;
  }
  
  public void b(Long paramLong) {
    this.f = paramLong;
  }
  
  public Long c() {
    return this.e;
  }
  
  public Long d() {
    return this.f;
  }
  
  public int e() {
    return this.g;
  }
  
  public void f() {
    this.g++;
  }
  
  public long g() {
    return (this.h == null) ? 0L : this.h.longValue();
  }
  
  public UUID h() {
    return this.j;
  }
  
  public long i() {
    return (this.e == null || this.f == null) ? 0L : (this.f.longValue() - this.e.longValue());
  }
  
  public bmf j() {
    return this.i;
  }
  
  public void k() {
    SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(bhv.h()).edit();
    editor.putLong("com.facebook.appevents.SessionInfo.sessionStartTime", this.e.longValue());
    editor.putLong("com.facebook.appevents.SessionInfo.sessionEndTime", this.f.longValue());
    editor.putInt("com.facebook.appevents.SessionInfo.interruptionCount", this.g);
    editor.putString("com.facebook.appevents.SessionInfo.sessionId", this.j.toString());
    editor.apply();
    if (this.i != null)
      this.i.e(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bmd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */