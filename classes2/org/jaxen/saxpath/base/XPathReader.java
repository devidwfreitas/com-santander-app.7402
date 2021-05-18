package org.jaxen.saxpath.base;

import java.util.ArrayList;
import org.jaxen.saxpath.Axis;
import org.jaxen.saxpath.XPathHandler;
import org.jaxen.saxpath.XPathReader;
import org.jaxen.saxpath.XPathSyntaxException;
import org.jaxen.saxpath.helpers.DefaultXPathHandler;

public class XPathReader implements XPathReader {
  private static XPathHandler defaultHandler = (XPathHandler)new DefaultXPathHandler();
  
  private XPathHandler handler;
  
  private XPathLexer lexer;
  
  private ArrayList tokens;
  
  public XPathReader() {
    setXPathHandler(defaultHandler);
  }
  
  private int LA(int paramInt) {
    return LT(paramInt).getTokenType();
  }
  
  private Token LT(int paramInt) {
    if (this.tokens.size() <= paramInt - 1)
      for (int i = 0; i < paramInt; i++)
        this.tokens.add(this.lexer.nextToken());  
    return this.tokens.get(paramInt - 1);
  }
  
  private void abbrStep() {
    switch (LA(1)) {
      default:
        return;
      case 14:
        match(14);
        getXPathHandler().startAllNodeStep(11);
        predicates();
        getXPathHandler().endAllNodeStep();
        return;
      case 15:
        break;
    } 
    match(15);
    getXPathHandler().startAllNodeStep(3);
    predicates();
    getXPathHandler().endAllNodeStep();
  }
  
  private void absoluteLocationPath() {
    getXPathHandler().startAbsoluteLocationPath();
    switch (LA(1)) {
      default:
      
      case 12:
        match(12);
        switch (LA(1)) {
          default:
            getXPathHandler().endAbsoluteLocationPath();
            return;
          case 9:
          case 14:
          case 15:
          case 16:
          case 17:
            break;
        } 
        steps();
      case 13:
        break;
    } 
    getXPathHandler().startAllNodeStep(12);
    getXPathHandler().endAllNodeStep();
    match(13);
    switch (LA(1)) {
      default:
        throw createSyntaxException("Location path cannot end with //");
      case 9:
      case 14:
      case 15:
      case 16:
      case 17:
        break;
    } 
    steps();
  }
  
  private void additiveExpr() {
    multiplicativeExpr();
    int i = LA(1);
    while (i == 7 || i == 8) {
      switch (i) {
        case 7:
          match(7);
          getXPathHandler().startAdditiveExpr();
          multiplicativeExpr();
          getXPathHandler().endAdditiveExpr(7);
          i = LA(1);
          break;
        case 8:
          match(8);
          getXPathHandler().startAdditiveExpr();
          multiplicativeExpr();
          getXPathHandler().endAdditiveExpr(8);
          i = LA(1);
          break;
      } 
    } 
  }
  
  private void andExpr() {
    boolean bool = true;
    getXPathHandler().startAndExpr();
    equalityExpr();
    switch (LA(1)) {
      default:
        bool = false;
        getXPathHandler().endAndExpr(bool);
        return;
      case 27:
        break;
    } 
    match(27);
    andExpr();
    getXPathHandler().endAndExpr(bool);
  }
  
  private void arguments() {
    while (LA(1) != 24) {
      expr();
      if (LA(1) == 30)
        match(30); 
    } 
  }
  
  private int axisSpecifier() {
    switch (LA(1)) {
      default:
        return 0;
      case 17:
        match(17);
        return 9;
      case 16:
        break;
    } 
    Token token = LT(1);
    int i = Axis.lookup(token.getTokenText());
    if (i == 0)
      throwInvalidAxis(token.getTokenText()); 
    match(16);
    match(20);
    return i;
  }
  
  private XPathSyntaxException createSyntaxException(String paramString) {
    return new XPathSyntaxException(this.lexer.getXPath(), LT(1).getTokenBegin(), paramString);
  }
  
  private void equalityExpr() {
    relationalExpr();
    int i = LA(1);
    while (i == 1 || i == 2) {
      switch (i) {
        case 1:
          match(1);
          getXPathHandler().startEqualityExpr();
          relationalExpr();
          getXPathHandler().endEqualityExpr(1);
          i = LA(1);
          break;
        case 2:
          match(2);
          getXPathHandler().startEqualityExpr();
          relationalExpr();
          getXPathHandler().endEqualityExpr(2);
          i = LA(1);
          break;
      } 
    } 
  }
  
  private void expr() {
    orExpr();
  }
  
  private void filterExpr() {
    Token token;
    getXPathHandler().startFilterExpr();
    switch (LA(1)) {
      default:
        predicates();
        getXPathHandler().endFilterExpr();
        return;
      case 29:
        token = match(29);
        getXPathHandler().number(Double.parseDouble(token.getTokenText()));
      case 26:
        literal();
      case 23:
        match(23);
        expr();
        match(24);
      case 16:
        functionCall();
      case 25:
        break;
    } 
    variableReference();
  }
  
  private void functionCall() {
    String str1;
    if (LA(2) == 19) {
      str1 = match(16).getTokenText();
      match(19);
    } else {
      str1 = "";
    } 
    String str2 = match(16).getTokenText();
    getXPathHandler().startFunction(str1, str2);
    match(23);
    arguments();
    match(24);
    getXPathHandler().endFunction();
  }
  
  private boolean isNodeTypeName(Token paramToken) {
    String str = paramToken.getTokenText();
    return ("node".equals(str) || "comment".equals(str) || "text".equals(str) || "processing-instruction".equals(str));
  }
  
  private void literal() {
    Token token = match(26);
    getXPathHandler().literal(token.getTokenText());
  }
  
  private Token match(int paramInt) {
    LT(1);
    Token token = this.tokens.get(0);
    if (token.getTokenType() == paramInt) {
      this.tokens.remove(0);
      return token;
    } 
    throw createSyntaxException("Expected: " + TokenTypes.getTokenText(paramInt));
  }
  
  private void multiplicativeExpr() {
    unaryExpr();
    int i = LA(1);
    while (i == 31 || i == 11 || i == 10) {
      switch (i) {
        default:
          i = LA(1);
          continue;
        case 9:
        case 31:
          match(31);
          getXPathHandler().startMultiplicativeExpr();
          unaryExpr();
          getXPathHandler().endMultiplicativeExpr(9);
        case 11:
          match(11);
          getXPathHandler().startMultiplicativeExpr();
          unaryExpr();
          getXPathHandler().endMultiplicativeExpr(11);
        case 10:
          break;
      } 
      match(10);
      getXPathHandler().startMultiplicativeExpr();
      unaryExpr();
      getXPathHandler().endMultiplicativeExpr(10);
    } 
  }
  
  private void nameTest(int paramInt) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: iconst_2
    //   4: invokespecial LA : (I)I
    //   7: tableswitch default -> 24, 19 -> 94
    //   24: aconst_null
    //   25: astore_2
    //   26: aload_0
    //   27: iconst_1
    //   28: invokespecial LA : (I)I
    //   31: lookupswitch default -> 56, 9 -> 152, 16 -> 139
    //   56: aload_2
    //   57: astore #4
    //   59: aload_2
    //   60: ifnonnull -> 67
    //   63: ldc ''
    //   65: astore #4
    //   67: aload_0
    //   68: invokevirtual getXPathHandler : ()Lorg/jaxen/saxpath/XPathHandler;
    //   71: iload_1
    //   72: aload #4
    //   74: aload_3
    //   75: invokeinterface startNameStep : (ILjava/lang/String;Ljava/lang/String;)V
    //   80: aload_0
    //   81: invokespecial predicates : ()V
    //   84: aload_0
    //   85: invokevirtual getXPathHandler : ()Lorg/jaxen/saxpath/XPathHandler;
    //   88: invokeinterface endNameStep : ()V
    //   93: return
    //   94: aload_0
    //   95: iconst_1
    //   96: invokespecial LA : (I)I
    //   99: tableswitch default -> 116, 16 -> 119
    //   116: goto -> 24
    //   119: aload_0
    //   120: bipush #16
    //   122: invokespecial match : (I)Lorg/jaxen/saxpath/base/Token;
    //   125: invokevirtual getTokenText : ()Ljava/lang/String;
    //   128: astore_2
    //   129: aload_0
    //   130: bipush #19
    //   132: invokespecial match : (I)Lorg/jaxen/saxpath/base/Token;
    //   135: pop
    //   136: goto -> 26
    //   139: aload_0
    //   140: bipush #16
    //   142: invokespecial match : (I)Lorg/jaxen/saxpath/base/Token;
    //   145: invokevirtual getTokenText : ()Ljava/lang/String;
    //   148: astore_3
    //   149: goto -> 56
    //   152: aload_0
    //   153: bipush #9
    //   155: invokespecial match : (I)Lorg/jaxen/saxpath/base/Token;
    //   158: pop
    //   159: ldc_w '*'
    //   162: astore_3
    //   163: goto -> 56
  }
  
  private void nodeTest(int paramInt) {
    switch (LA(1)) {
      default:
        throw createSyntaxException("Expected <QName> or *");
      case 16:
        switch (LA(2)) {
          default:
            nameTest(paramInt);
            return;
          case 23:
            break;
        } 
        nodeTypeTest(paramInt);
        return;
      case 9:
        break;
    } 
    nameTest(paramInt);
  }
  
  private void nodeTypeTest(int paramInt) {
    String str = match(16).getTokenText();
    match(23);
    if ("processing-instruction".equals(str)) {
      str = "";
      if (LA(1) == 26)
        str = match(26).getTokenText(); 
      match(24);
      getXPathHandler().startProcessingInstructionNodeStep(paramInt, str);
      predicates();
      getXPathHandler().endProcessingInstructionNodeStep();
      return;
    } 
    if ("node".equals(str)) {
      match(24);
      getXPathHandler().startAllNodeStep(paramInt);
      predicates();
      getXPathHandler().endAllNodeStep();
      return;
    } 
    if ("text".equals(str)) {
      match(24);
      getXPathHandler().startTextNodeStep(paramInt);
      predicates();
      getXPathHandler().endTextNodeStep();
      return;
    } 
    if ("comment".equals(str)) {
      match(24);
      getXPathHandler().startCommentNodeStep(paramInt);
      predicates();
      getXPathHandler().endCommentNodeStep();
      return;
    } 
    throw createSyntaxException("Expected node-type");
  }
  
  private void orExpr() {
    boolean bool = true;
    getXPathHandler().startOrExpr();
    andExpr();
    switch (LA(1)) {
      default:
        bool = false;
        getXPathHandler().endOrExpr(bool);
        return;
      case 28:
        break;
    } 
    match(28);
    orExpr();
    getXPathHandler().endOrExpr(bool);
  }
  
  private void pathExpr() {
    getXPathHandler().startPathExpr();
    switch (LA(1)) {
      default:
        throw createSyntaxException("Unexpected '" + LT(1).getTokenText() + "'");
      case 26:
      case 29:
        filterExpr();
        if (LA(1) == 12 || LA(1) == 13)
          throw createSyntaxException("Node-set expected"); 
        getXPathHandler().endPathExpr();
        return;
      case 23:
      case 25:
        filterExpr();
        if (LA(1) == 12 || LA(1) == 13)
          locationPath(false); 
        getXPathHandler().endPathExpr();
        return;
      case 16:
        if ((LA(2) == 23 && !isNodeTypeName(LT(1))) || (LA(2) == 19 && LA(4) == 23)) {
          filterExpr();
          if (LA(1) == 12 || LA(1) == 13)
            locationPath(false); 
        } else {
          locationPath(false);
        } 
        getXPathHandler().endPathExpr();
        return;
      case 9:
      case 14:
      case 15:
      case 17:
        locationPath(false);
        getXPathHandler().endPathExpr();
        return;
      case 12:
      case 13:
        break;
    } 
    locationPath(true);
    getXPathHandler().endPathExpr();
  }
  
  private void predicateExpr() {
    expr();
  }
  
  private void predicates() {
    while (LA(1) == 21)
      predicate(); 
  }
  
  private void relationalExpr() {
    additiveExpr();
    int i = LA(1);
    while (i == 3 || i == 5 || i == 4 || i == 6) {
      switch (i) {
        default:
          i = LA(1);
          continue;
        case 3:
          match(3);
          getXPathHandler().startRelationalExpr();
          additiveExpr();
          getXPathHandler().endRelationalExpr(3);
        case 5:
          match(5);
          getXPathHandler().startRelationalExpr();
          additiveExpr();
          getXPathHandler().endRelationalExpr(5);
        case 6:
          match(6);
          getXPathHandler().startRelationalExpr();
          additiveExpr();
          getXPathHandler().endRelationalExpr(6);
        case 4:
          break;
      } 
      match(4);
      getXPathHandler().startRelationalExpr();
      additiveExpr();
      getXPathHandler().endRelationalExpr(4);
    } 
  }
  
  private void relativeLocationPath() {
    getXPathHandler().startRelativeLocationPath();
    switch (LA(1)) {
      default:
        steps();
        getXPathHandler().endRelativeLocationPath();
        return;
      case 12:
        match(12);
      case 13:
        break;
    } 
    getXPathHandler().startAllNodeStep(12);
    getXPathHandler().endAllNodeStep();
    match(13);
  }
  
  private void steps() {
    switch (LA(1)) {
      default:
        throw createSyntaxException("Expected one of '.', '..', '@', '*', <QName>");
      case 9:
      case 14:
      case 15:
      case 16:
      case 17:
        step();
        while (LA(1) == 12 || LA(1) == 13) {
          switch (LA(1)) {
            default:
              switch (LA(1)) {
                default:
                  throw createSyntaxException("Expected one of '.', '..', '@', '*', <QName>");
                case 9:
                case 14:
                case 15:
                case 16:
                case 17:
                  break;
              } 
              break;
            case 12:
              match(12);
            case 13:
              getXPathHandler().startAllNodeStep(12);
              getXPathHandler().endAllNodeStep();
              match(13);
          } 
          step();
        } 
        break;
      case -1:
        break;
    } 
  }
  
  private void throwInvalidAxis(String paramString) {
    throw new XPathSyntaxException(this.lexer.getXPath(), LT(1).getTokenBegin(), "Expected valid axis name instead of [" + paramString + "]");
  }
  
  private void unaryExpr() {
    switch (LA(1)) {
      default:
        unionExpr();
        return;
      case 8:
        break;
    } 
    getXPathHandler().startUnaryExpr();
    match(8);
    unaryExpr();
    getXPathHandler().endUnaryExpr(12);
  }
  
  private void unionExpr() {
    boolean bool = true;
    getXPathHandler().startUnionExpr();
    pathExpr();
    switch (LA(1)) {
      default:
        bool = false;
        getXPathHandler().endUnionExpr(bool);
        return;
      case 18:
        break;
    } 
    match(18);
    expr();
    getXPathHandler().endUnionExpr(bool);
  }
  
  private void variableReference() {
    String str1;
    match(25);
    if (LA(2) == 19) {
      str1 = match(16).getTokenText();
      match(19);
    } else {
      str1 = "";
    } 
    String str2 = match(16).getTokenText();
    getXPathHandler().variableReference(str1, str2);
  }
  
  public XPathHandler getXPathHandler() {
    return this.handler;
  }
  
  void locationPath(boolean paramBoolean) {
    switch (LA(1)) {
      default:
        throw createSyntaxException("Unexpected '" + LT(1).getTokenText() + "'");
      case 12:
      case 13:
        if (paramBoolean) {
          absoluteLocationPath();
          return;
        } 
        relativeLocationPath();
        return;
      case 9:
      case 14:
      case 15:
      case 16:
      case 17:
        break;
    } 
    relativeLocationPath();
  }
  
  public void parse(String paramString) {
    setUpParse(paramString);
    getXPathHandler().startXPath();
    expr();
    getXPathHandler().endXPath();
    if (LA(1) != -1)
      throw createSyntaxException("Unexpected '" + LT(1).getTokenText() + "'"); 
    this.lexer = null;
    this.tokens = null;
  }
  
  void predicate() {
    getXPathHandler().startPredicate();
    match(21);
    predicateExpr();
    match(22);
    getXPathHandler().endPredicate();
  }
  
  void setUpParse(String paramString) {
    this.tokens = new ArrayList();
    this.lexer = new XPathLexer(paramString);
  }
  
  public void setXPathHandler(XPathHandler paramXPathHandler) {
    this.handler = paramXPathHandler;
  }
  
  void step() {
    byte b = 1;
    int i = b;
    switch (LA(1)) {
      default:
        i = 0;
      case 9:
        nodeTest(i);
        return;
      case 14:
      case 15:
        abbrStep();
        return;
      case 17:
        i = axisSpecifier();
      case 16:
        break;
    } 
    i = b;
    if (LA(2) == 20)
      i = axisSpecifier(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\saxpath\base\XPathReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */