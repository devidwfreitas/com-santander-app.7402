import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class etm extends etb {
  private static final Pattern a = Pattern.compile("BEGIN:VCARD", 2);
  
  private static final Pattern b = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");
  
  private static final Pattern c = Pattern.compile("\r\n[ \t]");
  
  private static final Pattern d = Pattern.compile("\\\\[nN]");
  
  private static final Pattern e = Pattern.compile("\\\\([,;\\\\])");
  
  private static final Pattern f = Pattern.compile("=");
  
  private static final Pattern g = Pattern.compile(";");
  
  private static final Pattern h = Pattern.compile("(?<!\\\\);+");
  
  private static final Pattern i = Pattern.compile(",");
  
  private static final Pattern j = Pattern.compile("[;,]");
  
  private static String a(CharSequence paramCharSequence, String paramString) {
    int j = paramCharSequence.length();
    StringBuilder stringBuilder = new StringBuilder(j);
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    int i = 0;
    while (i < j) {
      char c = paramCharSequence.charAt(i);
      int k = i;
      switch (c) {
        case '\n':
        case '\r':
          i = k + 1;
          break;
        case '=':
          k = i;
          if (i < j - 2) {
            c = paramCharSequence.charAt(i + 1);
            k = i;
            if (c != '\r') {
              k = i;
              if (c != '\n') {
                char c1 = paramCharSequence.charAt(i + 2);
                k = a(c);
                int m = a(c1);
                if (k >= 0 && m >= 0)
                  byteArrayOutputStream.write((k << 4) + m); 
                k = i + 2;
              } 
            } 
          } 
      } 
    } 
    a(byteArrayOutputStream, paramString, stringBuilder);
    return stringBuilder.toString();
  }
  
  private static String a(List<String> paramList) {
    return (paramList == null || paramList.isEmpty()) ? null : paramList.get(0);
  }
  
  static List<List<String>> a(CharSequence paramCharSequence, String paramString, boolean paramBoolean1, boolean paramBoolean2) {
    ArrayList<ArrayList<String>> arrayList = null;
    int i = 0;
    int j = paramString.length();
    while (true) {
      if (i < j) {
        Matcher matcher = Pattern.compile("(?:^|\n)" + paramCharSequence + "(?:;([^:]*))?:", 2).matcher(paramString);
        int k = i;
        if (i > 0)
          k = i - 1; 
        if (matcher.find(k)) {
          int n;
          int m = matcher.end(0);
          String str2 = matcher.group(1);
          String str1 = null;
          k = 0;
          i = 0;
          matcher = null;
          if (str2 != null) {
            String str;
            String[] arrayOfString = g.split(str2);
            n = arrayOfString.length;
            k = 0;
            while (k < n) {
              ArrayList<String> arrayList2;
              String str3 = arrayOfString[k];
              str2 = str1;
              if (str1 == null)
                arrayList2 = new ArrayList(1); 
              arrayList2.add(str3);
              String[] arrayOfString1 = f.split(str3, 2);
              if (arrayOfString1.length > 1) {
                str3 = arrayOfString1[0];
                String str4 = arrayOfString1[1];
                if ("ENCODING".equalsIgnoreCase(str3) && "QUOTED-PRINTABLE".equalsIgnoreCase(str4)) {
                  i = 1;
                } else if ("CHARSET".equalsIgnoreCase(str3)) {
                  str = str4;
                } 
              } 
              k++;
              ArrayList<String> arrayList1 = arrayList2;
            } 
            k = i;
            str2 = str;
          } else {
            str2 = null;
            str1 = null;
          } 
          i = m;
          while (true) {
            n = paramString.indexOf('\n', i);
            if (n >= 0) {
              if (n < paramString.length() - 1 && (paramString.charAt(n + 1) == ' ' || paramString.charAt(n + 1) == '\t')) {
                i = n + 2;
                continue;
              } 
              if (k != 0 && ((n >= 1 && paramString.charAt(n - 1) == '=') || (n >= 2 && paramString.charAt(n - 2) == '='))) {
                i = n + 1;
                continue;
              } 
            } 
            break;
          } 
          if (n < 0) {
            i = j;
            continue;
          } 
          if (n > m) {
            ArrayList<String> arrayList1;
            if (arrayList == null)
              arrayList = new ArrayList(1); 
            i = n;
            if (n >= 1) {
              i = n;
              if (paramString.charAt(n - 1) == '\r')
                i = n - 1; 
            } 
            String str4 = paramString.substring(m, i);
            String str3 = str4;
            if (paramBoolean1)
              str3 = str4.trim(); 
            if (k != 0) {
              str2 = a(str3, str2);
              str3 = str2;
              if (paramBoolean2)
                str3 = h.matcher(str2).replaceAll("\n").trim(); 
            } else {
              str2 = str3;
              if (paramBoolean2)
                str2 = h.matcher(str3).replaceAll("\n").trim(); 
              str3 = c.matcher(str2).replaceAll("");
              str3 = d.matcher(str3).replaceAll("\n");
              str3 = e.matcher(str3).replaceAll("$1");
            } 
            if (str1 == null) {
              arrayList1 = new ArrayList(1);
              arrayList1.add(str3);
              arrayList.add(arrayList1);
            } else {
              arrayList1.add(0, str3);
              arrayList.add(arrayList1);
            } 
            i++;
            continue;
          } 
          i = n + 1;
          continue;
        } 
      } 
      return (List)arrayList;
    } 
  }
  
  private static void a(ByteArrayOutputStream paramByteArrayOutputStream, String paramString, StringBuilder paramStringBuilder) {
    if (paramByteArrayOutputStream.size() > 0) {
      String str;
      byte[] arrayOfByte = paramByteArrayOutputStream.toByteArray();
      if (paramString == null) {
        paramString = new String(arrayOfByte, Charset.forName("UTF-8"));
      } else {
        try {
          paramString = new String(arrayOfByte, paramString);
        } catch (UnsupportedEncodingException unsupportedEncodingException) {
          str = new String(arrayOfByte, Charset.forName("UTF-8"));
        } 
      } 
      paramByteArrayOutputStream.reset();
      paramStringBuilder.append(str);
    } 
  }
  
  private static void a(Iterable<List<String>> paramIterable) {
    if (paramIterable != null)
      for (List<String> list : paramIterable) {
        String str = list.get(0);
        String[] arrayOfString = new String[5];
        int i = 0;
        int j = 0;
        while (i < arrayOfString.length - 1) {
          int k = str.indexOf(';', j);
          if (k >= 0) {
            arrayOfString[i] = str.substring(j, k);
            i++;
            j = k + 1;
          } 
        } 
        arrayOfString[i] = str.substring(j);
        StringBuilder stringBuilder = new StringBuilder(100);
        a(arrayOfString, 3, stringBuilder);
        a(arrayOfString, 1, stringBuilder);
        a(arrayOfString, 2, stringBuilder);
        a(arrayOfString, 0, stringBuilder);
        a(arrayOfString, 4, stringBuilder);
        list.set(0, stringBuilder.toString().trim());
      }  
  }
  
  private static void a(String[] paramArrayOfString, int paramInt, StringBuilder paramStringBuilder) {
    if (paramArrayOfString[paramInt] != null && !paramArrayOfString[paramInt].isEmpty()) {
      if (paramStringBuilder.length() > 0)
        paramStringBuilder.append(' '); 
      paramStringBuilder.append(paramArrayOfString[paramInt]);
    } 
  }
  
  private static boolean a(CharSequence paramCharSequence) {
    return (paramCharSequence == null || b.matcher(paramCharSequence).matches());
  }
  
  private static String[] a(Collection<List<String>> paramCollection) {
    if (paramCollection == null || paramCollection.isEmpty())
      return null; 
    ArrayList<String> arrayList = new ArrayList(paramCollection.size());
    Iterator<List<String>> iterator = paramCollection.iterator();
    while (iterator.hasNext()) {
      String str = ((List<String>)iterator.next()).get(0);
      if (str != null && !str.isEmpty())
        arrayList.add(str); 
    } 
    return arrayList.<String>toArray(new String[paramCollection.size()]);
  }
  
  static List<String> b(CharSequence paramCharSequence, String paramString, boolean paramBoolean1, boolean paramBoolean2) {
    List<List<String>> list = a(paramCharSequence, paramString, paramBoolean1, paramBoolean2);
    return (list == null || list.isEmpty()) ? null : list.get(0);
  }
  
  private static String[] b(Collection<List<String>> paramCollection) {
    // Byte code:
    //   0: aload_0
    //   1: ifnull -> 13
    //   4: aload_0
    //   5: invokeinterface isEmpty : ()Z
    //   10: ifeq -> 15
    //   13: aconst_null
    //   14: areturn
    //   15: new java/util/ArrayList
    //   18: dup
    //   19: aload_0
    //   20: invokeinterface size : ()I
    //   25: invokespecial <init> : (I)V
    //   28: astore #4
    //   30: aload_0
    //   31: invokeinterface iterator : ()Ljava/util/Iterator;
    //   36: astore #5
    //   38: aload #5
    //   40: invokeinterface hasNext : ()Z
    //   45: ifeq -> 141
    //   48: aload #5
    //   50: invokeinterface next : ()Ljava/lang/Object;
    //   55: checkcast java/util/List
    //   58: astore #6
    //   60: iconst_1
    //   61: istore_1
    //   62: iload_1
    //   63: aload #6
    //   65: invokeinterface size : ()I
    //   70: if_icmpge -> 161
    //   73: aload #6
    //   75: iload_1
    //   76: invokeinterface get : (I)Ljava/lang/Object;
    //   81: checkcast java/lang/String
    //   84: astore_3
    //   85: aload_3
    //   86: bipush #61
    //   88: invokevirtual indexOf : (I)I
    //   91: istore_2
    //   92: iload_2
    //   93: ifge -> 108
    //   96: aload #4
    //   98: aload_3
    //   99: invokeinterface add : (Ljava/lang/Object;)Z
    //   104: pop
    //   105: goto -> 38
    //   108: ldc_w 'TYPE'
    //   111: aload_3
    //   112: iconst_0
    //   113: iload_2
    //   114: invokevirtual substring : (II)Ljava/lang/String;
    //   117: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   120: ifeq -> 134
    //   123: aload_3
    //   124: iload_2
    //   125: iconst_1
    //   126: iadd
    //   127: invokevirtual substring : (I)Ljava/lang/String;
    //   130: astore_3
    //   131: goto -> 96
    //   134: iload_1
    //   135: iconst_1
    //   136: iadd
    //   137: istore_1
    //   138: goto -> 62
    //   141: aload #4
    //   143: aload_0
    //   144: invokeinterface size : ()I
    //   149: anewarray java/lang/String
    //   152: invokeinterface toArray : ([Ljava/lang/Object;)[Ljava/lang/Object;
    //   157: checkcast [Ljava/lang/String;
    //   160: areturn
    //   161: aconst_null
    //   162: astore_3
    //   163: goto -> 96
  }
  
  public esk a(eqm parameqm) {
    String[] arrayOfString1;
    String[] arrayOfString2;
    String str = c(parameqm);
    Matcher matcher = a.matcher(str);
    if (!matcher.find() || matcher.start() != 0)
      return null; 
    List<List<String>> list1 = a("FN", str, true, false);
    List<List<String>> list2 = list1;
    if (list1 == null) {
      list2 = a("N", str, true, false);
      a(list2);
    } 
    list1 = (List)b("NICKNAME", str, true, false);
    if (list1 == null) {
      arrayOfString2 = null;
    } else {
      arrayOfString2 = i.split((CharSequence)list1.get(0));
    } 
    List<List<String>> list4 = a("TEL", str, true, false);
    List<List<String>> list5 = a("EMAIL", str, true, false);
    List<String> list6 = b("NOTE", str, false, false);
    List<List<String>> list7 = a("ADR", str, true, true);
    List<String> list8 = b("ORG", str, true, true);
    List<String> list3 = b("BDAY", str, true, false);
    if (list3 != null && !a(list3.get(0)))
      list3 = null; 
    List<String> list9 = b("TITLE", str, true, false);
    List<List<String>> list10 = a("URL", str, true, false);
    List<String> list11 = b("IMPP", str, true, false);
    list1 = (List)b("GEO", str, true, false);
    if (list1 == null) {
      list1 = null;
    } else {
      arrayOfString1 = j.split((CharSequence)list1.get(0));
    } 
    String[] arrayOfString3 = arrayOfString1;
    if (arrayOfString1 != null) {
      arrayOfString3 = arrayOfString1;
      if (arrayOfString1.length != 2)
        arrayOfString3 = null; 
    } 
    return new esk(a(list2), arrayOfString2, null, a(list4), b(list4), a(list5), b(list5), a(list11), a(list6), a(list7), b(list7), a(list8), a(list3), a(list9), a(list10), arrayOfString3);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */