final class eyi {
  private static final Object a = new Object();
  
  private static final Object[][] b;
  
  private static final Object[][] c;
  
  private static final Object[][] d = new Object[][] { 
      { "310", Integer.valueOf(6) }, { "311", Integer.valueOf(6) }, { "312", Integer.valueOf(6) }, { "313", Integer.valueOf(6) }, { "314", Integer.valueOf(6) }, { "315", Integer.valueOf(6) }, { "316", Integer.valueOf(6) }, { "320", Integer.valueOf(6) }, { "321", Integer.valueOf(6) }, { "322", Integer.valueOf(6) }, 
      { "323", Integer.valueOf(6) }, { "324", Integer.valueOf(6) }, { "325", Integer.valueOf(6) }, { "326", Integer.valueOf(6) }, { "327", Integer.valueOf(6) }, { "328", Integer.valueOf(6) }, { "329", Integer.valueOf(6) }, { "330", Integer.valueOf(6) }, { "331", Integer.valueOf(6) }, { "332", Integer.valueOf(6) }, 
      { "333", Integer.valueOf(6) }, { "334", Integer.valueOf(6) }, { "335", Integer.valueOf(6) }, { "336", Integer.valueOf(6) }, { "340", Integer.valueOf(6) }, { "341", Integer.valueOf(6) }, { "342", Integer.valueOf(6) }, { "343", Integer.valueOf(6) }, { "344", Integer.valueOf(6) }, { "345", Integer.valueOf(6) }, 
      { "346", Integer.valueOf(6) }, { "347", Integer.valueOf(6) }, { "348", Integer.valueOf(6) }, { "349", Integer.valueOf(6) }, { "350", Integer.valueOf(6) }, { "351", Integer.valueOf(6) }, { "352", Integer.valueOf(6) }, { "353", Integer.valueOf(6) }, { "354", Integer.valueOf(6) }, { "355", Integer.valueOf(6) }, 
      { "356", Integer.valueOf(6) }, { "357", Integer.valueOf(6) }, { "360", Integer.valueOf(6) }, { "361", Integer.valueOf(6) }, { "362", Integer.valueOf(6) }, { "363", Integer.valueOf(6) }, { "364", Integer.valueOf(6) }, { "365", Integer.valueOf(6) }, { "366", Integer.valueOf(6) }, { "367", Integer.valueOf(6) }, 
      { "368", Integer.valueOf(6) }, { "369", Integer.valueOf(6) }, { "390", a, Integer.valueOf(15) }, { "391", a, Integer.valueOf(18) }, { "392", a, Integer.valueOf(15) }, { "393", a, Integer.valueOf(18) }, { "703", a, Integer.valueOf(30) } };
  
  private static final Object[][] e;
  
  static {
    object7 = new Object[] { "7001", Integer.valueOf(13) };
    object1 = a;
    object8 = new Object[] { "8002", a, Integer.valueOf(20) };
    object2 = a;
    object3 = a;
    object9 = new Object[] { "8005", Integer.valueOf(6) };
    object10 = new Object[] { "8006", Integer.valueOf(18) };
    object4 = a;
    object5 = a;
    object11 = new Object[] { "8020", a, Integer.valueOf(25) };
    object12 = new Object[] { "8102", Integer.valueOf(2) };
    object13 = new Object[] { "8110", a, Integer.valueOf(70) };
    object6 = a;
    e = new Object[][] { 
        (Object[])object7, { "7002", object1, Integer.valueOf(30) }, { "7003", Integer.valueOf(10) }, { "8001", Integer.valueOf(14) }, (Object[])object8, { "8003", object2, Integer.valueOf(30) }, { "8004", object3, Integer.valueOf(30) }, (Object[])object9, (Object[])object10, { "8007", object4, Integer.valueOf(30) }, 
        { "8008", object5, Integer.valueOf(12) }, { "8018", Integer.valueOf(18) }, (Object[])object11, { "8100", Integer.valueOf(6) }, { "8101", Integer.valueOf(10) }, (Object[])object12, (Object[])object13, { "8200", object6, Integer.valueOf(70) } };
  }
  
  private static String a(int paramInt1, int paramInt2, String paramString) {
    if (paramString.length() < paramInt1)
      throw eqh.a(); 
    String str1 = paramString.substring(0, paramInt1);
    if (paramString.length() < paramInt1 + paramInt2)
      throw eqh.a(); 
    String str2 = paramString.substring(paramInt1, paramInt1 + paramInt2);
    paramString = paramString.substring(paramInt1 + paramInt2);
    str1 = '(' + str1 + ')' + str2;
    paramString = a(paramString);
    return (paramString == null) ? str1 : (str1 + paramString);
  }
  
  static String a(String paramString) {
    if (paramString.isEmpty())
      return null; 
    if (paramString.length() < 2)
      throw eqh.a(); 
    String str = paramString.substring(0, 2);
    for (Object[] arrayOfObject : b) {
      if (arrayOfObject[0].equals(str))
        return (arrayOfObject[1] == a) ? b(2, ((Integer)arrayOfObject[2]).intValue(), paramString) : a(2, ((Integer)arrayOfObject[1]).intValue(), paramString); 
    } 
    if (paramString.length() < 3)
      throw eqh.a(); 
    str = paramString.substring(0, 3);
    for (Object[] arrayOfObject : c) {
      if (arrayOfObject[0].equals(str))
        return (arrayOfObject[1] == a) ? b(3, ((Integer)arrayOfObject[2]).intValue(), paramString) : a(3, ((Integer)arrayOfObject[1]).intValue(), paramString); 
    } 
    for (Object[] arrayOfObject : d) {
      if (arrayOfObject[0].equals(str))
        return (arrayOfObject[1] == a) ? b(4, ((Integer)arrayOfObject[2]).intValue(), paramString) : a(4, ((Integer)arrayOfObject[1]).intValue(), paramString); 
    } 
    if (paramString.length() < 4)
      throw eqh.a(); 
    str = paramString.substring(0, 4);
    for (Object[] arrayOfObject : e) {
      if (arrayOfObject[0].equals(str))
        return (arrayOfObject[1] == a) ? b(4, ((Integer)arrayOfObject[2]).intValue(), paramString) : a(4, ((Integer)arrayOfObject[1]).intValue(), paramString); 
    } 
    throw eqh.a();
  }
  
  private static String b(int paramInt1, int paramInt2, String paramString) {
    String str1 = paramString.substring(0, paramInt1);
    if (paramString.length() < paramInt1 + paramInt2) {
      paramInt2 = paramString.length();
    } else {
      paramInt2 = paramInt1 + paramInt2;
    } 
    String str2 = paramString.substring(paramInt1, paramInt2);
    paramString = paramString.substring(paramInt2);
    str1 = '(' + str1 + ')' + str2;
    paramString = a(paramString);
    return (paramString == null) ? str1 : (str1 + paramString);
  }
  
  static {
    Object object1 = a;
    Object[] arrayOfObject1 = { "17", Integer.valueOf(6) };
    Object object2 = a;
    Object object3 = a;
    Object object4 = a;
    Object object5 = a;
    Object object6 = a;
    Object object7 = a;
    Object object8 = a;
    Object object9 = a;
    Object object10 = a;
    Object object11 = a;
    Object object12 = a;
    Object[] arrayOfObject2 = { "97", a, Integer.valueOf(30) };
    Object object13 = a;
    Object object14 = a;
    b = new Object[][] { 
        { "00", Integer.valueOf(18) }, { "01", Integer.valueOf(14) }, { "02", Integer.valueOf(14) }, { "10", object1, Integer.valueOf(20) }, { "11", Integer.valueOf(6) }, { "12", Integer.valueOf(6) }, { "13", Integer.valueOf(6) }, { "15", Integer.valueOf(6) }, arrayOfObject1, { "20", Integer.valueOf(2) }, 
        { "21", object2, Integer.valueOf(20) }, { "22", object3, Integer.valueOf(29) }, { "30", object4, Integer.valueOf(8) }, { "37", object5, Integer.valueOf(8) }, { "90", object6, Integer.valueOf(30) }, { "91", object7, Integer.valueOf(30) }, { "92", object8, Integer.valueOf(30) }, { "93", object9, Integer.valueOf(30) }, { "94", object10, Integer.valueOf(30) }, { "95", object11, Integer.valueOf(30) }, 
        { "96", object12, Integer.valueOf(30) }, arrayOfObject2, { "98", object13, Integer.valueOf(30) }, { "99", object14, Integer.valueOf(30) } };
    object2 = new Object[] { "240", a, Integer.valueOf(30) };
    object3 = new Object[] { "241", a, Integer.valueOf(30) };
    object4 = new Object[] { "242", a, Integer.valueOf(6) };
    object5 = new Object[] { "250", a, Integer.valueOf(30) };
    object6 = new Object[] { "251", a, Integer.valueOf(30) };
    object7 = new Object[] { "253", a, Integer.valueOf(17) };
    object1 = a;
    object8 = new Object[] { "400", a, Integer.valueOf(30) };
    object9 = new Object[] { "401", a, Integer.valueOf(30) };
    object10 = new Object[] { "402", Integer.valueOf(17) };
    object11 = new Object[] { "403", a, Integer.valueOf(30) };
    object12 = new Object[] { "411", Integer.valueOf(13) };
    object13 = new Object[] { "412", Integer.valueOf(13) };
    object14 = new Object[] { "413", Integer.valueOf(13) };
    arrayOfObject1 = new Object[] { "414", Integer.valueOf(13) };
    arrayOfObject2 = new Object[] { "420", a, Integer.valueOf(20) };
    Object[] arrayOfObject3 = { "421", a, Integer.valueOf(15) };
    Object[] arrayOfObject4 = { "422", Integer.valueOf(3) };
    Object[] arrayOfObject5 = { "423", a, Integer.valueOf(15) };
    Object[] arrayOfObject6 = { "424", Integer.valueOf(3) };
    Object[] arrayOfObject7 = { "425", Integer.valueOf(3) };
    Object[] arrayOfObject8 = { "426", Integer.valueOf(3) };
    c = new Object[][] { 
        (Object[])object2, (Object[])object3, (Object[])object4, (Object[])object5, (Object[])object6, (Object[])object7, { "254", object1, Integer.valueOf(20) }, (Object[])object8, (Object[])object9, (Object[])object10, 
        (Object[])object11, { "410", Integer.valueOf(13) }, (Object[])object12, (Object[])object13, (Object[])object14, arrayOfObject1, arrayOfObject2, arrayOfObject3, arrayOfObject4, arrayOfObject5, 
        arrayOfObject6, arrayOfObject7, arrayOfObject8 };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */