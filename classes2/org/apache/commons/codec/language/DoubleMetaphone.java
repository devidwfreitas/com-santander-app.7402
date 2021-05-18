package org.apache.commons.codec.language;

import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class DoubleMetaphone implements StringEncoder {
  private static final String[] ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER;
  
  private static final String[] L_R_N_M_B_H_F_V_W_SPACE;
  
  private static final String[] L_T_K_S_N_M_B_Z;
  
  private static final String[] SILENT_START = new String[] { "GN", "KN", "PN", "WR", "PS" };
  
  private static final String VOWELS = "AEIOUY";
  
  private int maxCodeLen = 4;
  
  static {
    L_R_N_M_B_H_F_V_W_SPACE = new String[] { "L", "R", "N", "M", "B", "H", "F", "V", "W", " " };
    ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER = new String[] { 
        "ES", "EP", "EB", "EL", "EY", "IB", "IL", "IN", "IE", "EI", 
        "ER" };
    L_T_K_S_N_M_B_Z = new String[] { "L", "T", "K", "S", "N", "M", "B", "Z" };
  }
  
  private String cleanInput(String paramString) {
    if (paramString != null) {
      paramString = paramString.trim();
      if (paramString.length() != 0)
        return paramString.toUpperCase(Locale.ENGLISH); 
    } 
    return null;
  }
  
  private boolean conditionC0(String paramString, int paramInt) {
    boolean bool2 = false;
    if (contains(paramString, paramInt, 4, "CHIA"))
      return true; 
    boolean bool1 = bool2;
    if (paramInt > 1) {
      bool1 = bool2;
      if (!isVowel(charAt(paramString, paramInt - 2))) {
        bool1 = bool2;
        if (contains(paramString, paramInt - 1, 3, "ACH")) {
          char c = charAt(paramString, paramInt + 2);
          if (c == 'I' || c == 'E') {
            bool1 = bool2;
            return contains(paramString, paramInt - 2, 6, "BACHER", "MACHER") ? true : bool1;
          } 
          return true;
        } 
      } 
    } 
    return bool1;
  }
  
  private boolean conditionCH0(String paramString, int paramInt) {
    return (paramInt != 0) ? false : ((!contains(paramString, paramInt + 1, 5, "HARAC", "HARIS") && !contains(paramString, paramInt + 1, 3, "HOR", "HYM", "HIA", "HEM")) ? false : (!contains(paramString, 0, 5, "CHORE")));
  }
  
  private boolean conditionCH1(String paramString, int paramInt) {
    return (contains(paramString, 0, 4, "VAN ", "VON ") || contains(paramString, 0, 3, "SCH") || contains(paramString, paramInt - 2, 6, "ORCHES", "ARCHIT", "ORCHID") || contains(paramString, paramInt + 2, 1, "T", "S") || ((contains(paramString, paramInt - 1, 1, "A", "O", "U", "E") || paramInt == 0) && (contains(paramString, paramInt + 2, 1, L_R_N_M_B_H_F_V_W_SPACE) || paramInt + 1 == paramString.length() - 1)));
  }
  
  private boolean conditionL0(String paramString, int paramInt) {
    return (paramInt == paramString.length() - 3 && contains(paramString, paramInt - 1, 4, "ILLO", "ILLA", "ALLE")) ? true : (((contains(paramString, paramString.length() - 2, 2, "AS", "OS") || contains(paramString, paramString.length() - 1, 1, "A", "O")) && contains(paramString, paramInt - 1, 4, "ALLE")));
  }
  
  private boolean conditionM0(String paramString, int paramInt) {
    return !(charAt(paramString, paramInt + 1) != 'M' && (!contains(paramString, paramInt - 1, 3, "UMB") || (paramInt + 1 != paramString.length() - 1 && !contains(paramString, paramInt + 2, 2, "ER"))));
  }
  
  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2) {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2 });
  }
  
  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3) {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3 });
  }
  
  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4) {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3, paramString4 });
  }
  
  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, String paramString5) {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3, paramString4, paramString5 });
  }
  
  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6) {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3, paramString4, paramString5, paramString6 });
  }
  
  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7) {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3, paramString4, paramString5, paramString6, paramString7 });
  }
  
  protected static boolean contains(String paramString, int paramInt1, int paramInt2, String[] paramArrayOfString) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt1 >= 0) {
      bool1 = bool2;
      if (paramInt1 + paramInt2 <= paramString.length()) {
        paramString = paramString.substring(paramInt1, paramInt1 + paramInt2);
        for (paramInt1 = 0;; paramInt1++) {
          bool1 = bool2;
          if (paramInt1 < paramArrayOfString.length) {
            if (paramString.equals(paramArrayOfString[paramInt1]))
              return true; 
          } else {
            return bool1;
          } 
        } 
      } 
    } 
    return bool1;
  }
  
  private int handleAEIOUY(DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt) {
    if (paramInt == 0)
      paramDoubleMetaphone$DoubleMetaphoneResult.append('A'); 
    return paramInt + 1;
  }
  
  private int handleC(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt) {
    if (conditionC0(paramString, paramInt)) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('K');
      return paramInt + 2;
    } 
    if (paramInt == 0 && contains(paramString, paramInt, 6, "CAESAR")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('S');
      return paramInt + 2;
    } 
    if (contains(paramString, paramInt, 2, "CH"))
      return handleCH(paramString, paramDoubleMetaphone$DoubleMetaphoneResult, paramInt); 
    if (contains(paramString, paramInt, 2, "CZ") && !contains(paramString, paramInt - 2, 4, "WICZ")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('S', 'X');
      return paramInt + 2;
    } 
    if (contains(paramString, paramInt + 1, 3, "CIA")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('X');
      return paramInt + 3;
    } 
    if (contains(paramString, paramInt, 2, "CC") && (paramInt != 1 || charAt(paramString, 0) != 'M'))
      return handleCC(paramString, paramDoubleMetaphone$DoubleMetaphoneResult, paramInt); 
    if (contains(paramString, paramInt, 2, "CK", "CG", "CQ")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('K');
      return paramInt + 2;
    } 
    if (contains(paramString, paramInt, 2, "CI", "CE", "CY")) {
      if (contains(paramString, paramInt, 3, "CIO", "CIE", "CIA")) {
        paramDoubleMetaphone$DoubleMetaphoneResult.append('S', 'X');
        return paramInt + 2;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append('S');
      return paramInt + 2;
    } 
    paramDoubleMetaphone$DoubleMetaphoneResult.append('K');
    return contains(paramString, paramInt + 1, 2, " C", " Q", " G") ? (paramInt + 3) : ((contains(paramString, paramInt + 1, 1, "C", "K", "Q") && !contains(paramString, paramInt + 1, 2, "CE", "CI")) ? (paramInt + 2) : (paramInt + 1));
  }
  
  private int handleCC(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt) {
    if (contains(paramString, paramInt + 2, 1, "I", "E", "H") && !contains(paramString, paramInt + 2, 2, "HU")) {
      if ((paramInt == 1 && charAt(paramString, paramInt - 1) == 'A') || contains(paramString, paramInt - 1, 5, "UCCEE", "UCCES")) {
        paramDoubleMetaphone$DoubleMetaphoneResult.append("KS");
        return paramInt + 3;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append('X');
      return paramInt + 3;
    } 
    paramDoubleMetaphone$DoubleMetaphoneResult.append('K');
    return paramInt + 2;
  }
  
  private int handleCH(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt) {
    if (paramInt > 0 && contains(paramString, paramInt, 4, "CHAE")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('K', 'X');
      return paramInt + 2;
    } 
    if (conditionCH0(paramString, paramInt)) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('K');
      return paramInt + 2;
    } 
    if (conditionCH1(paramString, paramInt)) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('K');
      return paramInt + 2;
    } 
    if (paramInt > 0) {
      if (contains(paramString, 0, 2, "MC")) {
        paramDoubleMetaphone$DoubleMetaphoneResult.append('K');
        return paramInt + 2;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append('X', 'K');
      return paramInt + 2;
    } 
    paramDoubleMetaphone$DoubleMetaphoneResult.append('X');
    return paramInt + 2;
  }
  
  private int handleD(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt) {
    if (contains(paramString, paramInt, 2, "DG")) {
      if (contains(paramString, paramInt + 2, 1, "I", "E", "Y")) {
        paramDoubleMetaphone$DoubleMetaphoneResult.append('J');
        return paramInt + 3;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append("TK");
      return paramInt + 2;
    } 
    if (contains(paramString, paramInt, 2, "DT", "DD")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('T');
      return paramInt + 2;
    } 
    paramDoubleMetaphone$DoubleMetaphoneResult.append('T');
    return paramInt + 1;
  }
  
  private int handleG(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt, boolean paramBoolean) {
    if (charAt(paramString, paramInt + 1) == 'H')
      return handleGH(paramString, paramDoubleMetaphone$DoubleMetaphoneResult, paramInt); 
    if (charAt(paramString, paramInt + 1) == 'N') {
      if (paramInt == 1 && isVowel(charAt(paramString, 0)) && !paramBoolean) {
        paramDoubleMetaphone$DoubleMetaphoneResult.append("KN", "N");
        return paramInt + 2;
      } 
      if (!contains(paramString, paramInt + 2, 2, "EY") && charAt(paramString, paramInt + 1) != 'Y' && !paramBoolean) {
        paramDoubleMetaphone$DoubleMetaphoneResult.append("N", "KN");
        return paramInt + 2;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append("KN");
      return paramInt + 2;
    } 
    if (contains(paramString, paramInt + 1, 2, "LI") && !paramBoolean) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append("KL", "L");
      return paramInt + 2;
    } 
    if (paramInt == 0 && (charAt(paramString, paramInt + 1) == 'Y' || contains(paramString, paramInt + 1, 2, ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER))) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('K', 'J');
      return paramInt + 2;
    } 
    if ((contains(paramString, paramInt + 1, 2, "ER") || charAt(paramString, paramInt + 1) == 'Y') && !contains(paramString, 0, 6, "DANGER", "RANGER", "MANGER") && !contains(paramString, paramInt - 1, 1, "E", "I") && !contains(paramString, paramInt - 1, 3, "RGY", "OGY")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('K', 'J');
      return paramInt + 2;
    } 
    if (contains(paramString, paramInt + 1, 1, "E", "I", "Y") || contains(paramString, paramInt - 1, 4, "AGGI", "OGGI")) {
      if (contains(paramString, 0, 4, "VAN ", "VON ") || contains(paramString, 0, 3, "SCH") || contains(paramString, paramInt + 1, 2, "ET")) {
        paramDoubleMetaphone$DoubleMetaphoneResult.append('K');
        return paramInt + 2;
      } 
      if (contains(paramString, paramInt + 1, 3, "IER")) {
        paramDoubleMetaphone$DoubleMetaphoneResult.append('J');
        return paramInt + 2;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append('J', 'K');
      return paramInt + 2;
    } 
    if (charAt(paramString, paramInt + 1) == 'G') {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('K');
      return paramInt + 2;
    } 
    paramDoubleMetaphone$DoubleMetaphoneResult.append('K');
    return paramInt + 1;
  }
  
  private int handleGH(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt) {
    if (paramInt > 0 && !isVowel(charAt(paramString, paramInt - 1))) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('K');
      return paramInt + 2;
    } 
    if (paramInt == 0) {
      if (charAt(paramString, paramInt + 2) == 'I') {
        paramDoubleMetaphone$DoubleMetaphoneResult.append('J');
        return paramInt + 2;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append('K');
      return paramInt + 2;
    } 
    if ((paramInt > 1 && contains(paramString, paramInt - 2, 1, "B", "H", "D")) || (paramInt > 2 && contains(paramString, paramInt - 3, 1, "B", "H", "D")) || (paramInt > 3 && contains(paramString, paramInt - 4, 1, "B", "H")))
      return paramInt + 2; 
    if (paramInt > 2 && charAt(paramString, paramInt - 1) == 'U' && contains(paramString, paramInt - 3, 1, "C", "G", "L", "R", "T")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('F');
      return paramInt + 2;
    } 
    if (paramInt > 0 && charAt(paramString, paramInt - 1) != 'I')
      paramDoubleMetaphone$DoubleMetaphoneResult.append('K'); 
    return paramInt + 2;
  }
  
  private int handleH(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt) {
    if ((paramInt == 0 || isVowel(charAt(paramString, paramInt - 1))) && isVowel(charAt(paramString, paramInt + 1))) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('H');
      return paramInt + 2;
    } 
    return paramInt + 1;
  }
  
  private int handleJ(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt, boolean paramBoolean) {
    if (contains(paramString, paramInt, 4, "JOSE") || contains(paramString, 0, 4, "SAN ")) {
      if ((paramInt == 0 && charAt(paramString, paramInt + 4) == ' ') || paramString.length() == 4 || contains(paramString, 0, 4, "SAN ")) {
        paramDoubleMetaphone$DoubleMetaphoneResult.append('H');
        return paramInt + 1;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append('J', 'H');
      return paramInt + 1;
    } 
    if (paramInt == 0 && !contains(paramString, paramInt, 4, "JOSE")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('J', 'A');
    } else if (isVowel(charAt(paramString, paramInt - 1)) && !paramBoolean && (charAt(paramString, paramInt + 1) == 'A' || charAt(paramString, paramInt + 1) == 'O')) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('J', 'H');
    } else if (paramInt == paramString.length() - 1) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('J', ' ');
    } else if (!contains(paramString, paramInt + 1, 1, L_T_K_S_N_M_B_Z) && !contains(paramString, paramInt - 1, 1, "S", "K", "L")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('J');
    } 
    return (charAt(paramString, paramInt + 1) == 'J') ? (paramInt + 2) : (paramInt + 1);
  }
  
  private int handleL(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt) {
    if (charAt(paramString, paramInt + 1) == 'L') {
      if (conditionL0(paramString, paramInt)) {
        paramDoubleMetaphone$DoubleMetaphoneResult.appendPrimary('L');
        return paramInt + 2;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append('L');
      return paramInt + 2;
    } 
    paramDoubleMetaphone$DoubleMetaphoneResult.append('L');
    return paramInt + 1;
  }
  
  private int handleP(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt) {
    if (charAt(paramString, paramInt + 1) == 'H') {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('F');
      return paramInt + 2;
    } 
    paramDoubleMetaphone$DoubleMetaphoneResult.append('P');
    return contains(paramString, paramInt + 1, 1, "P", "B") ? (paramInt + 2) : (paramInt + 1);
  }
  
  private int handleR(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt, boolean paramBoolean) {
    if (paramInt == paramString.length() - 1 && !paramBoolean && contains(paramString, paramInt - 2, 2, "IE") && !contains(paramString, paramInt - 4, 2, "ME", "MA")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.appendAlternate('R');
    } else {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('R');
    } 
    return (charAt(paramString, paramInt + 1) == 'R') ? (paramInt + 2) : (paramInt + 1);
  }
  
  private int handleS(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt, boolean paramBoolean) {
    if (contains(paramString, paramInt - 1, 3, "ISL", "YSL"))
      return paramInt + 1; 
    if (paramInt == 0 && contains(paramString, paramInt, 5, "SUGAR")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('X', 'S');
      return paramInt + 1;
    } 
    if (contains(paramString, paramInt, 2, "SH")) {
      if (contains(paramString, paramInt + 1, 4, "HEIM", "HOEK", "HOLM", "HOLZ")) {
        paramDoubleMetaphone$DoubleMetaphoneResult.append('S');
        return paramInt + 2;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append('X');
      return paramInt + 2;
    } 
    if (contains(paramString, paramInt, 3, "SIO", "SIA") || contains(paramString, paramInt, 4, "SIAN")) {
      if (paramBoolean) {
        paramDoubleMetaphone$DoubleMetaphoneResult.append('S');
        return paramInt + 3;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append('S', 'X');
      return paramInt + 3;
    } 
    if ((paramInt == 0 && contains(paramString, paramInt + 1, 1, "M", "N", "L", "W")) || contains(paramString, paramInt + 1, 1, "Z")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('S', 'X');
      return contains(paramString, paramInt + 1, 1, "Z") ? (paramInt + 2) : (paramInt + 1);
    } 
    if (contains(paramString, paramInt, 2, "SC"))
      return handleSC(paramString, paramDoubleMetaphone$DoubleMetaphoneResult, paramInt); 
    if (paramInt == paramString.length() - 1 && contains(paramString, paramInt - 2, 2, "AI", "OI")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.appendAlternate('S');
    } else {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('S');
    } 
    return contains(paramString, paramInt + 1, 1, "S", "Z") ? (paramInt + 2) : (paramInt + 1);
  }
  
  private int handleSC(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt) {
    if (charAt(paramString, paramInt + 2) == 'H') {
      if (contains(paramString, paramInt + 3, 2, "OO", "ER", "EN", "UY", "ED", "EM")) {
        if (contains(paramString, paramInt + 3, 2, "ER", "EN")) {
          paramDoubleMetaphone$DoubleMetaphoneResult.append("X", "SK");
          return paramInt + 3;
        } 
        paramDoubleMetaphone$DoubleMetaphoneResult.append("SK");
        return paramInt + 3;
      } 
      if (paramInt == 0 && !isVowel(charAt(paramString, 3)) && charAt(paramString, 3) != 'W') {
        paramDoubleMetaphone$DoubleMetaphoneResult.append('X', 'S');
        return paramInt + 3;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append('X');
      return paramInt + 3;
    } 
    if (contains(paramString, paramInt + 2, 1, "I", "E", "Y")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('S');
      return paramInt + 3;
    } 
    paramDoubleMetaphone$DoubleMetaphoneResult.append("SK");
    return paramInt + 3;
  }
  
  private int handleT(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt) {
    if (contains(paramString, paramInt, 4, "TION")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('X');
      return paramInt + 3;
    } 
    if (contains(paramString, paramInt, 3, "TIA", "TCH")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('X');
      return paramInt + 3;
    } 
    if (contains(paramString, paramInt, 2, "TH") || contains(paramString, paramInt, 3, "TTH")) {
      if (contains(paramString, paramInt + 2, 2, "OM", "AM") || contains(paramString, 0, 4, "VAN ", "VON ") || contains(paramString, 0, 3, "SCH")) {
        paramDoubleMetaphone$DoubleMetaphoneResult.append('T');
        return paramInt + 2;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append('0', 'T');
      return paramInt + 2;
    } 
    paramDoubleMetaphone$DoubleMetaphoneResult.append('T');
    return contains(paramString, paramInt + 1, 1, "T", "D") ? (paramInt + 2) : (paramInt + 1);
  }
  
  private int handleW(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt) {
    if (contains(paramString, paramInt, 2, "WR")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('R');
      return paramInt + 2;
    } 
    if (paramInt == 0 && (isVowel(charAt(paramString, paramInt + 1)) || contains(paramString, paramInt, 2, "WH"))) {
      if (isVowel(charAt(paramString, paramInt + 1))) {
        paramDoubleMetaphone$DoubleMetaphoneResult.append('A', 'F');
        return paramInt + 1;
      } 
      paramDoubleMetaphone$DoubleMetaphoneResult.append('A');
      return paramInt + 1;
    } 
    if ((paramInt == paramString.length() - 1 && isVowel(charAt(paramString, paramInt - 1))) || contains(paramString, paramInt - 1, 5, "EWSKI", "EWSKY", "OWSKI", "OWSKY") || contains(paramString, 0, 3, "SCH")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.appendAlternate('F');
      return paramInt + 1;
    } 
    if (contains(paramString, paramInt, 4, "WICZ", "WITZ")) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append("TS", "FX");
      return paramInt + 4;
    } 
    return paramInt + 1;
  }
  
  private int handleX(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt) {
    if (paramInt == 0) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('S');
      return paramInt + 1;
    } 
    if (paramInt != paramString.length() - 1 || (!contains(paramString, paramInt - 3, 3, "IAU", "EAU") && !contains(paramString, paramInt - 2, 2, "AU", "OU")))
      paramDoubleMetaphone$DoubleMetaphoneResult.append("KS"); 
    return contains(paramString, paramInt + 1, 1, "C", "X") ? (paramInt + 2) : (paramInt + 1);
  }
  
  private int handleZ(String paramString, DoubleMetaphone$DoubleMetaphoneResult paramDoubleMetaphone$DoubleMetaphoneResult, int paramInt, boolean paramBoolean) {
    if (charAt(paramString, paramInt + 1) == 'H') {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('J');
      return paramInt + 2;
    } 
    if (contains(paramString, paramInt + 1, 2, "ZO", "ZI", "ZA") || (paramBoolean && paramInt > 0 && charAt(paramString, paramInt - 1) != 'T')) {
      paramDoubleMetaphone$DoubleMetaphoneResult.append("S", "TS");
    } else {
      paramDoubleMetaphone$DoubleMetaphoneResult.append('S');
    } 
    return (charAt(paramString, paramInt + 1) == 'Z') ? (paramInt + 2) : (paramInt + 1);
  }
  
  private boolean isSilentStart(String paramString) {
    boolean bool = false;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < SILENT_START.length) {
        if (paramString.startsWith(SILENT_START[i]))
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  private boolean isSlavoGermanic(String paramString) {
    return (paramString.indexOf('W') > -1 || paramString.indexOf('K') > -1 || paramString.indexOf("CZ") > -1 || paramString.indexOf("WITZ") > -1);
  }
  
  private boolean isVowel(char paramChar) {
    return ("AEIOUY".indexOf(paramChar) != -1);
  }
  
  protected char charAt(String paramString, int paramInt) {
    return (paramInt < 0 || paramInt >= paramString.length()) ? Character.MIN_VALUE : paramString.charAt(paramInt);
  }
  
  public String doubleMetaphone(String paramString) {
    return doubleMetaphone(paramString, false);
  }
  
  public String doubleMetaphone(String paramString, boolean paramBoolean) {
    int i;
    paramString = cleanInput(paramString);
    if (paramString == null)
      return null; 
    boolean bool = isSlavoGermanic(paramString);
    if (isSilentStart(paramString)) {
      i = 1;
    } else {
      i = 0;
    } 
    DoubleMetaphone$DoubleMetaphoneResult doubleMetaphone$DoubleMetaphoneResult = new DoubleMetaphone$DoubleMetaphoneResult(this, getMaxCodeLen());
    while (!doubleMetaphone$DoubleMetaphoneResult.isComplete() && i <= paramString.length() - 1) {
      switch (paramString.charAt(i)) {
        default:
          i++;
          continue;
        case 'A':
        case 'E':
        case 'I':
        case 'O':
        case 'U':
        case 'Y':
          i = handleAEIOUY(doubleMetaphone$DoubleMetaphoneResult, i);
          continue;
        case 'B':
          doubleMetaphone$DoubleMetaphoneResult.append('P');
          if (charAt(paramString, i + 1) == 'B') {
            i += 2;
            continue;
          } 
          i++;
          continue;
        case 'Ç':
          doubleMetaphone$DoubleMetaphoneResult.append('S');
          i++;
          continue;
        case 'C':
          i = handleC(paramString, doubleMetaphone$DoubleMetaphoneResult, i);
          continue;
        case 'D':
          i = handleD(paramString, doubleMetaphone$DoubleMetaphoneResult, i);
          continue;
        case 'F':
          doubleMetaphone$DoubleMetaphoneResult.append('F');
          if (charAt(paramString, i + 1) == 'F') {
            i += 2;
            continue;
          } 
          i++;
          continue;
        case 'G':
          i = handleG(paramString, doubleMetaphone$DoubleMetaphoneResult, i, bool);
          continue;
        case 'H':
          i = handleH(paramString, doubleMetaphone$DoubleMetaphoneResult, i);
          continue;
        case 'J':
          i = handleJ(paramString, doubleMetaphone$DoubleMetaphoneResult, i, bool);
          continue;
        case 'K':
          doubleMetaphone$DoubleMetaphoneResult.append('K');
          if (charAt(paramString, i + 1) == 'K') {
            i += 2;
            continue;
          } 
          i++;
          continue;
        case 'L':
          i = handleL(paramString, doubleMetaphone$DoubleMetaphoneResult, i);
          continue;
        case 'M':
          doubleMetaphone$DoubleMetaphoneResult.append('M');
          if (conditionM0(paramString, i)) {
            i += 2;
            continue;
          } 
          i++;
          continue;
        case 'N':
          doubleMetaphone$DoubleMetaphoneResult.append('N');
          if (charAt(paramString, i + 1) == 'N') {
            i += 2;
            continue;
          } 
          i++;
          continue;
        case 'Ñ':
          doubleMetaphone$DoubleMetaphoneResult.append('N');
          i++;
          continue;
        case 'P':
          i = handleP(paramString, doubleMetaphone$DoubleMetaphoneResult, i);
          continue;
        case 'Q':
          doubleMetaphone$DoubleMetaphoneResult.append('K');
          if (charAt(paramString, i + 1) == 'Q') {
            i += 2;
            continue;
          } 
          i++;
          continue;
        case 'R':
          i = handleR(paramString, doubleMetaphone$DoubleMetaphoneResult, i, bool);
          continue;
        case 'S':
          i = handleS(paramString, doubleMetaphone$DoubleMetaphoneResult, i, bool);
          continue;
        case 'T':
          i = handleT(paramString, doubleMetaphone$DoubleMetaphoneResult, i);
          continue;
        case 'V':
          doubleMetaphone$DoubleMetaphoneResult.append('F');
          if (charAt(paramString, i + 1) == 'V') {
            i += 2;
            continue;
          } 
          i++;
          continue;
        case 'W':
          i = handleW(paramString, doubleMetaphone$DoubleMetaphoneResult, i);
          continue;
        case 'X':
          i = handleX(paramString, doubleMetaphone$DoubleMetaphoneResult, i);
          continue;
        case 'Z':
          break;
      } 
      i = handleZ(paramString, doubleMetaphone$DoubleMetaphoneResult, i, bool);
    } 
    return paramBoolean ? doubleMetaphone$DoubleMetaphoneResult.getAlternate() : doubleMetaphone$DoubleMetaphoneResult.getPrimary();
  }
  
  public Object encode(Object paramObject) {
    if (!(paramObject instanceof String))
      throw new EncoderException("DoubleMetaphone encode parameter is not of type String"); 
    return doubleMetaphone((String)paramObject);
  }
  
  public String encode(String paramString) {
    return doubleMetaphone(paramString);
  }
  
  public int getMaxCodeLen() {
    return this.maxCodeLen;
  }
  
  public boolean isDoubleMetaphoneEqual(String paramString1, String paramString2) {
    return isDoubleMetaphoneEqual(paramString1, paramString2, false);
  }
  
  public boolean isDoubleMetaphoneEqual(String paramString1, String paramString2, boolean paramBoolean) {
    return doubleMetaphone(paramString1, paramBoolean).equals(doubleMetaphone(paramString2, paramBoolean));
  }
  
  public void setMaxCodeLen(int paramInt) {
    this.maxCodeLen = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\language\DoubleMetaphone.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */