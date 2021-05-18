public enum epr {
  BEGIN_ARRAY, BEGIN_OBJECT, BOOLEAN, END_ARRAY, END_DOCUMENT, END_OBJECT, NAME, NULL, NUMBER, STRING;
  
  static {
    BEGIN_OBJECT = new epr("BEGIN_OBJECT", 2);
    END_OBJECT = new epr("END_OBJECT", 3);
    NAME = new epr("NAME", 4);
    STRING = new epr("STRING", 5);
    NUMBER = new epr("NUMBER", 6);
    BOOLEAN = new epr("BOOLEAN", 7);
    NULL = new epr("NULL", 8);
    END_DOCUMENT = new epr("END_DOCUMENT", 9);
    $VALUES = new epr[] { BEGIN_ARRAY, END_ARRAY, BEGIN_OBJECT, END_OBJECT, NAME, STRING, NUMBER, BOOLEAN, NULL, END_DOCUMENT };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\epr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */