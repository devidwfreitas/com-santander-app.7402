enum blm {
  EAGER_FLUSHING_EVENT, EVENT_THRESHOLD, EXPLICIT, PERSISTED_EVENTS, SESSION_CHANGE, TIMER;
  
  static {
    SESSION_CHANGE = new blm("SESSION_CHANGE", 2);
    PERSISTED_EVENTS = new blm("PERSISTED_EVENTS", 3);
    EVENT_THRESHOLD = new blm("EVENT_THRESHOLD", 4);
    EAGER_FLUSHING_EVENT = new blm("EAGER_FLUSHING_EVENT", 5);
    $VALUES = new blm[] { EXPLICIT, TIMER, SESSION_CHANGE, PERSISTED_EVENTS, EVENT_THRESHOLD, EAGER_FLUSHING_EVENT };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\blm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */