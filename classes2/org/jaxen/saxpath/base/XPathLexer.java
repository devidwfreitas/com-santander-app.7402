package org.jaxen.saxpath.base;

class XPathLexer {
  private int currentPosition;
  
  private int endPosition;
  
  private boolean expectOperator = false;
  
  private String xpath;
  
  XPathLexer(String paramString) {
    setXPath(paramString);
  }
  
  private char LA(int paramInt) {
    return (this.currentPosition + paramInt - 1 >= this.endPosition) ? Character.MAX_VALUE : getXPath().charAt(this.currentPosition + paramInt - 1);
  }
  
  private Token and() {
    Token token2 = null;
    Token token1 = token2;
    if (LA(1) == 'a') {
      token1 = token2;
      if (LA(2) == 'n') {
        token1 = token2;
        if (LA(3) == 'd') {
          token1 = new Token(27, getXPath(), this.currentPosition, this.currentPosition + 3);
          consume();
          consume();
          consume();
        } 
      } 
    } 
    return token1;
  }
  
  private Token at() {
    Token token = new Token(17, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private Token colon() {
    Token token = new Token(19, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private Token comma() {
    Token token = new Token(30, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private void consume() {
    this.currentPosition++;
  }
  
  private Token div() {
    Token token2 = null;
    Token token1 = token2;
    if (LA(1) == 'd') {
      token1 = token2;
      if (LA(2) == 'i') {
        token1 = token2;
        if (LA(3) == 'v') {
          token1 = new Token(11, getXPath(), this.currentPosition, this.currentPosition + 3);
          consume();
          consume();
          consume();
        } 
      } 
    } 
    return token1;
  }
  
  private Token dollar() {
    Token token = new Token(25, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private Token dots() {
    switch (LA(2)) {
      default:
        token = new Token(14, getXPath(), this.currentPosition, this.currentPosition + 1);
        consume();
        return token;
      case '.':
        break;
    } 
    Token token = new Token(15, getXPath(), this.currentPosition, this.currentPosition + 2);
    consume();
    consume();
    return token;
  }
  
  private Token doubleColon() {
    Token token = new Token(20, getXPath(), this.currentPosition, this.currentPosition + 2);
    consume();
    consume();
    return token;
  }
  
  private Token equals() {
    Token token = new Token(1, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private boolean hasMoreChars() {
    return (this.currentPosition < this.endPosition);
  }
  
  private Token identifier() {
    int i = this.currentPosition;
    while (hasMoreChars() && Verifier.isXMLNCNameCharacter(LA(1)))
      consume(); 
    return new Token(16, getXPath(), i, this.currentPosition);
  }
  
  private Token identifierOrOperatorName() {
    return this.expectOperator ? operatorName() : identifier();
  }
  
  private Token leftBracket() {
    Token token = new Token(21, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private Token leftParen() {
    Token token = new Token(23, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private Token literal() {
    Token token = null;
    char c = LA(1);
    consume();
    int i = this.currentPosition;
    while (token == null && hasMoreChars()) {
      if (LA(1) == c)
        token = new Token(26, getXPath(), i, this.currentPosition); 
      consume();
    } 
    return token;
  }
  
  private Token minus() {
    Token token = new Token(8, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private Token mod() {
    Token token2 = null;
    Token token1 = token2;
    if (LA(1) == 'm') {
      token1 = token2;
      if (LA(2) == 'o') {
        token1 = token2;
        if (LA(3) == 'd') {
          token1 = new Token(10, getXPath(), this.currentPosition, this.currentPosition + 3);
          consume();
          consume();
          consume();
        } 
      } 
    } 
    return token1;
  }
  
  private Token notEquals() {
    Token token = new Token(2, getXPath(), this.currentPosition, this.currentPosition + 2);
    consume();
    consume();
    return token;
  }
  
  private Token number() {
    int i = this.currentPosition;
    boolean bool = true;
    while (true) {
      switch (LA(1)) {
        default:
          return new Token(29, getXPath(), i, this.currentPosition);
        case '.':
          if (bool) {
            bool = false;
            consume();
            continue;
          } 
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          break;
      } 
      consume();
    } 
  }
  
  private Token operatorName() {
    switch (LA(1)) {
      default:
        return null;
      case 'a':
        return and();
      case 'o':
        return or();
      case 'm':
        return mod();
      case 'd':
        break;
    } 
    return div();
  }
  
  private Token or() {
    Token token2 = null;
    Token token1 = token2;
    if (LA(1) == 'o') {
      token1 = token2;
      if (LA(2) == 'r') {
        token1 = new Token(28, getXPath(), this.currentPosition, this.currentPosition + 2);
        consume();
        consume();
      } 
    } 
    return token1;
  }
  
  private Token pipe() {
    Token token = new Token(18, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private Token plus() {
    Token token = new Token(7, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private Token relationalOperator() {
    switch (LA(1)) {
      default:
        return null;
      case '<':
        if (LA(2) == '=') {
          Token token1 = new Token(4, getXPath(), this.currentPosition, this.currentPosition + 2);
          consume();
          consume();
          return token1;
        } 
        token = new Token(3, getXPath(), this.currentPosition, this.currentPosition + 1);
        consume();
        return token;
      case '>':
        break;
    } 
    if (LA(2) == '=') {
      token = new Token(6, getXPath(), this.currentPosition, this.currentPosition + 2);
      consume();
      consume();
      return token;
    } 
    Token token = new Token(5, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private Token rightBracket() {
    Token token = new Token(22, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private Token rightParen() {
    Token token = new Token(24, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private void setXPath(String paramString) {
    this.xpath = paramString;
    this.currentPosition = 0;
    this.endPosition = paramString.length();
  }
  
  private Token slashes() {
    switch (LA(2)) {
      default:
        token = new Token(12, getXPath(), this.currentPosition, this.currentPosition + 1);
        consume();
        return token;
      case '/':
        break;
    } 
    Token token = new Token(13, getXPath(), this.currentPosition, this.currentPosition + 2);
    consume();
    consume();
    return token;
  }
  
  private Token star() {
    if (this.expectOperator) {
      byte b1 = 31;
      Token token1 = new Token(b1, getXPath(), this.currentPosition, this.currentPosition + 1);
      consume();
      return token1;
    } 
    byte b = 9;
    Token token = new Token(b, getXPath(), this.currentPosition, this.currentPosition + 1);
    consume();
    return token;
  }
  
  private Token whitespace() {
    consume();
    while (true) {
      if (hasMoreChars()) {
        switch (LA(1)) {
          default:
            return new Token(-2, getXPath(), 0, 0);
          case '\t':
          case '\n':
          case '\r':
          case ' ':
            break;
        } 
        consume();
      } 
    } 
  }
  
  String getXPath() {
    return this.xpath;
  }
  
  Token nextToken() {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: iconst_1
    //   4: invokespecial LA : (I)C
    //   7: lookupswitch default -> 288, 9 -> 744, 10 -> 744, 13 -> 744, 32 -> 744, 33 -> 591, 34 -> 503, 36 -> 495, 39 -> 503, 40 -> 527, 41 -> 535, 42 -> 651, 43 -> 559, 44 -> 519, 45 -> 567, 46 -> 659, 47 -> 511, 48 -> 736, 49 -> 736, 50 -> 736, 51 -> 736, 52 -> 736, 53 -> 736, 54 -> 736, 55 -> 736, 56 -> 736, 57 -> 736, 58 -> 625, 60 -> 575, 61 -> 583, 62 -> 575, 64 -> 617, 91 -> 543, 93 -> 551, 124 -> 609
    //   288: aload_0
    //   289: iconst_1
    //   290: invokespecial LA : (I)C
    //   293: invokestatic isXMLNCNameStartCharacter : (C)Z
    //   296: ifeq -> 304
    //   299: aload_0
    //   300: invokespecial identifierOrOperatorName : ()Lorg/jaxen/saxpath/base/Token;
    //   303: astore_1
    //   304: aload_1
    //   305: astore_2
    //   306: aload_1
    //   307: ifnonnull -> 338
    //   310: aload_0
    //   311: invokespecial hasMoreChars : ()Z
    //   314: ifne -> 752
    //   317: new org/jaxen/saxpath/base/Token
    //   320: dup
    //   321: iconst_m1
    //   322: aload_0
    //   323: invokevirtual getXPath : ()Ljava/lang/String;
    //   326: aload_0
    //   327: getfield currentPosition : I
    //   330: aload_0
    //   331: getfield endPosition : I
    //   334: invokespecial <init> : (ILjava/lang/String;II)V
    //   337: astore_2
    //   338: aload_2
    //   339: invokevirtual getTokenType : ()I
    //   342: bipush #-2
    //   344: if_icmpeq -> 0
    //   347: aload_2
    //   348: invokevirtual getTokenType : ()I
    //   351: tableswitch default -> 488, 1 -> 777, 2 -> 777, 3 -> 777, 4 -> 777, 5 -> 777, 6 -> 777, 7 -> 777, 8 -> 777, 9 -> 488, 10 -> 777, 11 -> 777, 12 -> 777, 13 -> 777, 14 -> 488, 15 -> 488, 16 -> 488, 17 -> 777, 18 -> 777, 19 -> 777, 20 -> 777, 21 -> 777, 22 -> 488, 23 -> 777, 24 -> 488, 25 -> 777, 26 -> 488, 27 -> 777, 28 -> 777, 29 -> 488, 30 -> 777, 31 -> 777
    //   488: aload_0
    //   489: iconst_1
    //   490: putfield expectOperator : Z
    //   493: aload_2
    //   494: areturn
    //   495: aload_0
    //   496: invokespecial dollar : ()Lorg/jaxen/saxpath/base/Token;
    //   499: astore_1
    //   500: goto -> 304
    //   503: aload_0
    //   504: invokespecial literal : ()Lorg/jaxen/saxpath/base/Token;
    //   507: astore_1
    //   508: goto -> 304
    //   511: aload_0
    //   512: invokespecial slashes : ()Lorg/jaxen/saxpath/base/Token;
    //   515: astore_1
    //   516: goto -> 304
    //   519: aload_0
    //   520: invokespecial comma : ()Lorg/jaxen/saxpath/base/Token;
    //   523: astore_1
    //   524: goto -> 304
    //   527: aload_0
    //   528: invokespecial leftParen : ()Lorg/jaxen/saxpath/base/Token;
    //   531: astore_1
    //   532: goto -> 304
    //   535: aload_0
    //   536: invokespecial rightParen : ()Lorg/jaxen/saxpath/base/Token;
    //   539: astore_1
    //   540: goto -> 304
    //   543: aload_0
    //   544: invokespecial leftBracket : ()Lorg/jaxen/saxpath/base/Token;
    //   547: astore_1
    //   548: goto -> 304
    //   551: aload_0
    //   552: invokespecial rightBracket : ()Lorg/jaxen/saxpath/base/Token;
    //   555: astore_1
    //   556: goto -> 304
    //   559: aload_0
    //   560: invokespecial plus : ()Lorg/jaxen/saxpath/base/Token;
    //   563: astore_1
    //   564: goto -> 304
    //   567: aload_0
    //   568: invokespecial minus : ()Lorg/jaxen/saxpath/base/Token;
    //   571: astore_1
    //   572: goto -> 304
    //   575: aload_0
    //   576: invokespecial relationalOperator : ()Lorg/jaxen/saxpath/base/Token;
    //   579: astore_1
    //   580: goto -> 304
    //   583: aload_0
    //   584: invokespecial equals : ()Lorg/jaxen/saxpath/base/Token;
    //   587: astore_1
    //   588: goto -> 304
    //   591: aload_0
    //   592: iconst_2
    //   593: invokespecial LA : (I)C
    //   596: bipush #61
    //   598: if_icmpne -> 304
    //   601: aload_0
    //   602: invokespecial notEquals : ()Lorg/jaxen/saxpath/base/Token;
    //   605: astore_1
    //   606: goto -> 304
    //   609: aload_0
    //   610: invokespecial pipe : ()Lorg/jaxen/saxpath/base/Token;
    //   613: astore_1
    //   614: goto -> 304
    //   617: aload_0
    //   618: invokespecial at : ()Lorg/jaxen/saxpath/base/Token;
    //   621: astore_1
    //   622: goto -> 304
    //   625: aload_0
    //   626: iconst_2
    //   627: invokespecial LA : (I)C
    //   630: bipush #58
    //   632: if_icmpne -> 643
    //   635: aload_0
    //   636: invokespecial doubleColon : ()Lorg/jaxen/saxpath/base/Token;
    //   639: astore_1
    //   640: goto -> 304
    //   643: aload_0
    //   644: invokespecial colon : ()Lorg/jaxen/saxpath/base/Token;
    //   647: astore_1
    //   648: goto -> 304
    //   651: aload_0
    //   652: invokespecial star : ()Lorg/jaxen/saxpath/base/Token;
    //   655: astore_1
    //   656: goto -> 304
    //   659: aload_0
    //   660: iconst_2
    //   661: invokespecial LA : (I)C
    //   664: tableswitch default -> 720, 48 -> 728, 49 -> 728, 50 -> 728, 51 -> 728, 52 -> 728, 53 -> 728, 54 -> 728, 55 -> 728, 56 -> 728, 57 -> 728
    //   720: aload_0
    //   721: invokespecial dots : ()Lorg/jaxen/saxpath/base/Token;
    //   724: astore_1
    //   725: goto -> 304
    //   728: aload_0
    //   729: invokespecial number : ()Lorg/jaxen/saxpath/base/Token;
    //   732: astore_1
    //   733: goto -> 304
    //   736: aload_0
    //   737: invokespecial number : ()Lorg/jaxen/saxpath/base/Token;
    //   740: astore_1
    //   741: goto -> 304
    //   744: aload_0
    //   745: invokespecial whitespace : ()Lorg/jaxen/saxpath/base/Token;
    //   748: astore_1
    //   749: goto -> 304
    //   752: new org/jaxen/saxpath/base/Token
    //   755: dup
    //   756: bipush #-3
    //   758: aload_0
    //   759: invokevirtual getXPath : ()Ljava/lang/String;
    //   762: aload_0
    //   763: getfield currentPosition : I
    //   766: aload_0
    //   767: getfield endPosition : I
    //   770: invokespecial <init> : (ILjava/lang/String;II)V
    //   773: astore_2
    //   774: goto -> 338
    //   777: aload_0
    //   778: iconst_0
    //   779: putfield expectOperator : Z
    //   782: aload_2
    //   783: areturn
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\saxpath\base\XPathLexer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */