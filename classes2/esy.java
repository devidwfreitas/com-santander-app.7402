public enum esy {
  ADDRESSBOOK, CALENDAR, EMAIL_ADDRESS, GEO, ISBN, PRODUCT, SMS, TEL, TEXT, URI, VIN, WIFI;
  
  static {
    TEXT = new esy("TEXT", 4);
    GEO = new esy("GEO", 5);
    TEL = new esy("TEL", 6);
    SMS = new esy("SMS", 7);
    CALENDAR = new esy("CALENDAR", 8);
    WIFI = new esy("WIFI", 9);
    ISBN = new esy("ISBN", 10);
    VIN = new esy("VIN", 11);
    $VALUES = new esy[] { 
        ADDRESSBOOK, EMAIL_ADDRESS, PRODUCT, URI, TEXT, GEO, TEL, SMS, CALENDAR, WIFI, 
        ISBN, VIN };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */