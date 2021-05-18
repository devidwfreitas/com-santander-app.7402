package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class PathParser implements Expression {
  protected boolean attribute;
  
  protected Cache<String> attributes = (Cache<String>)new ConcurrentCache();
  
  protected StringBuilder builder = new StringBuilder();
  
  protected String cache;
  
  protected int count;
  
  protected char[] data;
  
  protected Cache<String> elements = (Cache<String>)new ConcurrentCache();
  
  protected List<Integer> indexes = new ArrayList<Integer>();
  
  protected String location;
  
  protected List<String> names = new ArrayList<String>();
  
  protected int off;
  
  protected String path;
  
  protected List<String> prefixes = new ArrayList<String>();
  
  protected int start;
  
  protected Style style;
  
  protected Type type;
  
  public PathParser(String paramString, Type paramType, Format paramFormat) {
    this.style = paramFormat.getStyle();
    this.type = paramType;
    this.path = paramString;
    parse(paramString);
  }
  
  private void align() {
    if (this.names.size() > this.indexes.size())
      this.indexes.add(Integer.valueOf(1)); 
  }
  
  private void attribute() {
    int i = this.off + 1;
    this.off = i;
    while (this.off < this.count) {
      char[] arrayOfChar = this.data;
      int j = this.off;
      this.off = j + 1;
      char c = arrayOfChar[j];
      if (!isValid(c))
        throw new PathException("Illegal character '%s' in attribute for '%s' in %s", new Object[] { Character.valueOf(c), this.path, this.type }); 
    } 
    if (this.off <= i)
      throw new PathException("Attribute reference in '%s' for %s is empty", new Object[] { this.path, this.type }); 
    this.attribute = true;
    attribute(i, this.off - i);
  }
  
  private void attribute(int paramInt1, int paramInt2) {
    String str = new String(this.data, paramInt1, paramInt2);
    if (paramInt2 > 0)
      attribute(str); 
  }
  
  private void attribute(String paramString) {
    paramString = this.style.getAttribute(paramString);
    this.prefixes.add(null);
    this.names.add(paramString);
  }
  
  private void build() {
    int j = this.names.size();
    for (int i = 0; i < j; i++) {
      String str1 = this.prefixes.get(i);
      String str2 = this.names.get(i);
      int k = ((Integer)this.indexes.get(i)).intValue();
      if (i > 0)
        this.builder.append('/'); 
      if (this.attribute && i == j - 1) {
        this.builder.append('@');
        this.builder.append(str2);
      } else {
        if (str1 != null) {
          this.builder.append(str1);
          this.builder.append(':');
        } 
        this.builder.append(str2);
        this.builder.append('[');
        this.builder.append(k);
        this.builder.append(']');
      } 
    } 
    this.location = this.builder.toString();
  }
  
  private void element() {
    int j = this.off;
    int i = 0;
    while (true) {
      if (this.off < this.count) {
        char[] arrayOfChar = this.data;
        int k = this.off;
        this.off = k + 1;
        char c = arrayOfChar[k];
        if (!isValid(c)) {
          if (c == '@') {
            this.off--;
          } else if (c == '[') {
            index();
          } else if (c != '/') {
            throw new PathException("Illegal character '%s' in element for '%s' in %s", new Object[] { Character.valueOf(c), this.path, this.type });
          } 
        } else {
          i++;
          continue;
        } 
      } 
      element(j, i);
      return;
    } 
  }
  
  private void element(int paramInt1, int paramInt2) {
    String str = new String(this.data, paramInt1, paramInt2);
    if (paramInt2 > 0)
      element(str); 
  }
  
  private void element(String paramString) {
    int i = paramString.indexOf(':');
    String str1 = null;
    String str2 = paramString;
    if (i > 0) {
      str1 = paramString.substring(0, i);
      str2 = paramString.substring(i + 1);
    } 
    paramString = this.style.getElement(str2);
    this.prefixes.add(str1);
    this.names.add(paramString);
  }
  
  private void index() {
    // Byte code:
    //   0: aload_0
    //   1: getfield data : [C
    //   4: aload_0
    //   5: getfield off : I
    //   8: iconst_1
    //   9: isub
    //   10: caload
    //   11: bipush #91
    //   13: if_icmpne -> 149
    //   16: iconst_0
    //   17: istore_2
    //   18: iload_2
    //   19: istore_3
    //   20: aload_0
    //   21: getfield off : I
    //   24: aload_0
    //   25: getfield count : I
    //   28: if_icmpge -> 64
    //   31: aload_0
    //   32: getfield data : [C
    //   35: astore #4
    //   37: aload_0
    //   38: getfield off : I
    //   41: istore_3
    //   42: aload_0
    //   43: iload_3
    //   44: iconst_1
    //   45: iadd
    //   46: putfield off : I
    //   49: aload #4
    //   51: iload_3
    //   52: caload
    //   53: istore_1
    //   54: aload_0
    //   55: iload_1
    //   56: invokespecial isDigit : (C)Z
    //   59: ifne -> 121
    //   62: iload_2
    //   63: istore_3
    //   64: aload_0
    //   65: getfield data : [C
    //   68: astore #4
    //   70: aload_0
    //   71: getfield off : I
    //   74: istore_2
    //   75: aload_0
    //   76: iload_2
    //   77: iconst_1
    //   78: iadd
    //   79: putfield off : I
    //   82: aload #4
    //   84: iload_2
    //   85: iconst_1
    //   86: isub
    //   87: caload
    //   88: bipush #93
    //   90: if_icmpeq -> 134
    //   93: new org/simpleframework/xml/core/PathException
    //   96: dup
    //   97: ldc 'Invalid index for path '%s' in %s'
    //   99: iconst_2
    //   100: anewarray java/lang/Object
    //   103: dup
    //   104: iconst_0
    //   105: aload_0
    //   106: getfield path : Ljava/lang/String;
    //   109: aastore
    //   110: dup
    //   111: iconst_1
    //   112: aload_0
    //   113: getfield type : Lorg/simpleframework/xml/strategy/Type;
    //   116: aastore
    //   117: invokespecial <init> : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   120: athrow
    //   121: iload_2
    //   122: bipush #10
    //   124: imul
    //   125: iload_1
    //   126: iadd
    //   127: bipush #48
    //   129: isub
    //   130: istore_2
    //   131: goto -> 18
    //   134: aload_0
    //   135: getfield indexes : Ljava/util/List;
    //   138: iload_3
    //   139: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   142: invokeinterface add : (Ljava/lang/Object;)Z
    //   147: pop
    //   148: return
    //   149: iconst_0
    //   150: istore_3
    //   151: goto -> 64
  }
  
  private boolean isDigit(char paramChar) {
    return Character.isDigit(paramChar);
  }
  
  private boolean isEmpty(String paramString) {
    return (paramString == null || paramString.length() == 0);
  }
  
  private boolean isLetter(char paramChar) {
    return Character.isLetterOrDigit(paramChar);
  }
  
  private boolean isSpecial(char paramChar) {
    return (paramChar == '_' || paramChar == '-' || paramChar == ':');
  }
  
  private boolean isValid(char paramChar) {
    return (isLetter(paramChar) || isSpecial(paramChar));
  }
  
  private void parse(String paramString) {
    if (paramString != null) {
      this.count = paramString.length();
      this.data = new char[this.count];
      paramString.getChars(0, this.count, this.data, 0);
    } 
    path();
  }
  
  private void path() {
    if (this.data[this.off] == '/')
      throw new PathException("Path '%s' in %s references document root", new Object[] { this.path, this.type }); 
    if (this.data[this.off] == '.')
      skip(); 
    while (this.off < this.count) {
      if (this.attribute)
        throw new PathException("Path '%s' in %s references an invalid attribute", new Object[] { this.path, this.type }); 
      segment();
    } 
    truncate();
    build();
  }
  
  private void segment() {
    char c = this.data[this.off];
    if (c == '/')
      throw new PathException("Invalid path expression '%s' in %s", new Object[] { this.path, this.type }); 
    if (c == '@') {
      attribute();
    } else {
      element();
    } 
    align();
  }
  
  private void skip() {
    if (this.data.length > 1) {
      if (this.data[this.off + 1] != '/')
        throw new PathException("Path '%s' in %s has an illegal syntax", new Object[] { this.path, this.type }); 
      this.off++;
    } 
    int i = this.off + 1;
    this.off = i;
    this.start = i;
  }
  
  private void truncate() {
    if (this.off - 1 >= this.data.length) {
      this.off--;
      return;
    } 
    if (this.data[this.off - 1] == '/') {
      this.off--;
      return;
    } 
  }
  
  public String getAttribute(String paramString) {
    if (!isEmpty(this.location)) {
      String str2 = (String)this.attributes.fetch(paramString);
      String str1 = str2;
      if (str2 == null) {
        str2 = getAttributePath(this.location, paramString);
        str1 = str2;
        if (str2 != null) {
          this.attributes.cache(paramString, str2);
          str1 = str2;
        } 
      } 
      return str1;
    } 
    return this.style.getAttribute(paramString);
  }
  
  protected String getAttributePath(String paramString1, String paramString2) {
    paramString2 = this.style.getAttribute(paramString2);
    return isEmpty(paramString1) ? paramString2 : (paramString1 + "/@" + paramString2);
  }
  
  public String getElement(String paramString) {
    if (!isEmpty(this.location)) {
      String str2 = (String)this.elements.fetch(paramString);
      String str1 = str2;
      if (str2 == null) {
        str2 = getElementPath(this.location, paramString);
        str1 = str2;
        if (str2 != null) {
          this.elements.cache(paramString, str2);
          str1 = str2;
        } 
      } 
      return str1;
    } 
    return this.style.getElement(paramString);
  }
  
  protected String getElementPath(String paramString1, String paramString2) {
    paramString2 = this.style.getElement(paramString2);
    return isEmpty(paramString2) ? paramString1 : (isEmpty(paramString1) ? paramString2 : (paramString1 + "/" + paramString2 + "[1]"));
  }
  
  public String getFirst() {
    return this.names.get(0);
  }
  
  public int getIndex() {
    return ((Integer)this.indexes.get(0)).intValue();
  }
  
  public String getLast() {
    int i = this.names.size();
    return this.names.get(i - 1);
  }
  
  public String getPath() {
    return this.location;
  }
  
  public Expression getPath(int paramInt) {
    return getPath(paramInt, 0);
  }
  
  public Expression getPath(int paramInt1, int paramInt2) {
    int i = this.names.size() - 1;
    return (i - paramInt2 >= paramInt1) ? new PathParser$PathSection(this, paramInt1, i - paramInt2) : new PathParser$PathSection(this, paramInt1, paramInt1);
  }
  
  public String getPrefix() {
    return this.prefixes.get(0);
  }
  
  public boolean isAttribute() {
    return this.attribute;
  }
  
  public boolean isEmpty() {
    return isEmpty(this.location);
  }
  
  public boolean isPath() {
    return (this.names.size() > 1);
  }
  
  public Iterator<String> iterator() {
    return this.names.iterator();
  }
  
  public String toString() {
    int i = this.off;
    int j = this.start;
    if (this.cache == null)
      this.cache = new String(this.data, this.start, i - j); 
    return this.cache;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\PathParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */