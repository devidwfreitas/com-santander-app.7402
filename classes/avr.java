import com.adjust.sdk.ActivityState;

class avr {
  long a = -1L;
  
  int b = -1;
  
  String c = null;
  
  int d = -1;
  
  int e = -1;
  
  long f = -1L;
  
  long g = -1L;
  
  String h = null;
  
  avr(avq paramavq, ActivityState paramActivityState) {
    if (paramActivityState == null)
      return; 
    this.a = paramActivityState.lastInterval;
    this.b = paramActivityState.eventCount;
    this.c = paramActivityState.uuid;
    this.d = paramActivityState.sessionCount;
    this.e = paramActivityState.subsessionCount;
    this.f = paramActivityState.sessionLength;
    this.g = paramActivityState.timeSpent;
    this.h = paramActivityState.pushToken;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */