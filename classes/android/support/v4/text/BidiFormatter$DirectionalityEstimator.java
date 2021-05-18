package android.support.v4.text;

class BidiFormatter$DirectionalityEstimator {
  private static final byte[] DIR_TYPE_CACHE = new byte[1792];
  
  private static final int DIR_TYPE_CACHE_SIZE = 1792;
  
  private int charIndex;
  
  private final boolean isHtml;
  
  private char lastChar;
  
  private final int length;
  
  private final CharSequence text;
  
  static {
    for (int i = 0; i < 1792; i++)
      DIR_TYPE_CACHE[i] = Character.getDirectionality(i); 
  }
  
  BidiFormatter$DirectionalityEstimator(CharSequence paramCharSequence, boolean paramBoolean) {
    this.text = paramCharSequence;
    this.isHtml = paramBoolean;
    this.length = paramCharSequence.length();
  }
  
  private static byte getCachedDirectionality(char paramChar) {
    return (paramChar < '܀') ? DIR_TYPE_CACHE[paramChar] : Character.getDirectionality(paramChar);
  }
  
  private byte skipEntityBackward() {
    int i = this.charIndex;
    while (this.charIndex > 0) {
      CharSequence charSequence = this.text;
      int j = this.charIndex - 1;
      this.charIndex = j;
      this.lastChar = charSequence.charAt(j);
      if (this.lastChar == '&')
        return 12; 
      if (this.lastChar == ';')
        break; 
    } 
    this.charIndex = i;
    this.lastChar = ';';
    return 13;
  }
  
  private byte skipEntityForward() {
    while (this.charIndex < this.length) {
      CharSequence charSequence = this.text;
      int i = this.charIndex;
      this.charIndex = i + 1;
      char c = charSequence.charAt(i);
      this.lastChar = c;
      if (c == ';')
        break; 
    } 
    return 12;
  }
  
  private byte skipTagBackward() {
    int i = this.charIndex;
    while (true) {
      if (this.charIndex > 0) {
        CharSequence charSequence = this.text;
        int j = this.charIndex - 1;
        this.charIndex = j;
        this.lastChar = charSequence.charAt(j);
        if (this.lastChar == '<')
          return 12; 
        if (this.lastChar != '>') {
          if (this.lastChar == '"' || this.lastChar == '\'') {
            j = this.lastChar;
            while (this.charIndex > 0) {
              charSequence = this.text;
              int k = this.charIndex - 1;
              this.charIndex = k;
              char c = charSequence.charAt(k);
              this.lastChar = c;
              if (c != j);
            } 
          } 
          continue;
        } 
      } 
      this.charIndex = i;
      this.lastChar = '>';
      return 13;
    } 
  }
  
  private byte skipTagForward() {
    int i = this.charIndex;
    while (this.charIndex < this.length) {
      CharSequence charSequence = this.text;
      int j = this.charIndex;
      this.charIndex = j + 1;
      this.lastChar = charSequence.charAt(j);
      if (this.lastChar == '>')
        return 12; 
      if (this.lastChar == '"' || this.lastChar == '\'') {
        j = this.lastChar;
        while (this.charIndex < this.length) {
          charSequence = this.text;
          int k = this.charIndex;
          this.charIndex = k + 1;
          char c = charSequence.charAt(k);
          this.lastChar = c;
          if (c != j);
        } 
      } 
    } 
    this.charIndex = i;
    this.lastChar = '<';
    return 13;
  }
  
  byte dirTypeBackward() {
    this.lastChar = this.text.charAt(this.charIndex - 1);
    if (Character.isLowSurrogate(this.lastChar)) {
      int i = Character.codePointBefore(this.text, this.charIndex);
      this.charIndex -= Character.charCount(i);
      return Character.getDirectionality(i);
    } 
    this.charIndex--;
    byte b1 = getCachedDirectionality(this.lastChar);
    byte b = b1;
    if (this.isHtml) {
      if (this.lastChar == '>')
        return skipTagBackward(); 
      b = b1;
      if (this.lastChar == ';')
        return skipEntityBackward(); 
    } 
    return b;
  }
  
  byte dirTypeForward() {
    this.lastChar = this.text.charAt(this.charIndex);
    if (Character.isHighSurrogate(this.lastChar)) {
      int i = Character.codePointAt(this.text, this.charIndex);
      this.charIndex += Character.charCount(i);
      return Character.getDirectionality(i);
    } 
    this.charIndex++;
    byte b1 = getCachedDirectionality(this.lastChar);
    byte b = b1;
    if (this.isHtml) {
      if (this.lastChar == '<')
        return skipTagForward(); 
      b = b1;
      if (this.lastChar == '&')
        return skipEntityForward(); 
    } 
    return b;
  }
  
  int getEntryDir() {
    this.charIndex = 0;
    int j = 0;
    byte b = 0;
    int i = 0;
    while (this.charIndex < this.length && !j) {
      switch (dirTypeForward()) {
        case 9:
          continue;
        default:
          j = i;
          continue;
        case 14:
        case 15:
          i++;
          b = -1;
          continue;
        case 16:
        case 17:
          i++;
          b = 1;
          continue;
        case 18:
          i--;
          b = 0;
          continue;
        case 0:
          if (i != 0) {
            j = i;
            continue;
          } 
          return -1;
        case 1:
        case 2:
          break;
      } 
      if (i == 0)
        return 1; 
      j = i;
    } 
    if (j == 0)
      return 0; 
    if (b != 0)
      return b; 
    while (this.charIndex > 0) {
      switch (dirTypeBackward()) {
        case 14:
        case 15:
          if (j != i) {
            i--;
            break;
          } 
          return -1;
        case 16:
        case 17:
          if (j == i)
            return 1; 
          i--;
          break;
        case 18:
          i++;
          break;
      } 
    } 
    return 0;
  }
  
  int getExitDir() {
    byte b = 0;
    this.charIndex = this.length;
    int j = 0;
    int i = 0;
    while (true) {
      byte b1 = b;
      if (this.charIndex > 0) {
        switch (dirTypeBackward()) {
          case 9:
            break;
          case 0:
            if (!i)
              return -1; 
            if (!j)
              j = i; 
            break;
          case 14:
          case 15:
            if (j == i)
              return -1; 
            i--;
            break;
          case 1:
          case 2:
            if (i == 0)
              return 1; 
            if (j == 0)
              j = i; 
            break;
          case 16:
          case 17:
            if (j == i)
              return 1; 
            i--;
            break;
          case 18:
            i++;
            break;
        } 
        continue;
      } 
      return b1;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\text\BidiFormatter$DirectionalityEstimator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */