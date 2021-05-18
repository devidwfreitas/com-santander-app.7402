package android.support.annotation;

public enum RestrictTo$Scope {
  GROUP_ID, LIBRARY, LIBRARY_GROUP, SUBCLASSES, TESTS;
  
  static {
    GROUP_ID = new RestrictTo$Scope("GROUP_ID", 2);
    TESTS = new RestrictTo$Scope("TESTS", 3);
    SUBCLASSES = new RestrictTo$Scope("SUBCLASSES", 4);
    $VALUES = new RestrictTo$Scope[] { LIBRARY, LIBRARY_GROUP, GROUP_ID, TESTS, SUBCLASSES };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\annotation\RestrictTo$Scope.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */