package org.jaxen.saxpath.base;

final class Verifier {
  static boolean isXMLCombiningChar(char paramChar) {
    if (paramChar >= '̀') {
      if (paramChar <= 'ͅ')
        return true; 
      if (paramChar >= '͠') {
        if (paramChar <= '͡')
          return true; 
        if (paramChar >= '҃') {
          if (paramChar <= '҆')
            return true; 
          if (paramChar >= '֑') {
            if (paramChar <= '֡')
              return true; 
            if (paramChar >= '֣') {
              if (paramChar <= 'ֹ')
                return true; 
              if (paramChar >= 'ֻ') {
                if (paramChar <= 'ֽ')
                  return true; 
                if (paramChar == 'ֿ')
                  return true; 
                if (paramChar >= 'ׁ') {
                  if (paramChar <= 'ׂ')
                    return true; 
                  if (paramChar == 'ׄ')
                    return true; 
                  if (paramChar >= 'ً') {
                    if (paramChar <= 'ْ')
                      return true; 
                    if (paramChar == 'ٰ')
                      return true; 
                    if (paramChar >= 'ۖ') {
                      if (paramChar <= 'ۜ')
                        return true; 
                      if (paramChar >= '۝') {
                        if (paramChar <= '۟')
                          return true; 
                        if (paramChar >= '۠') {
                          if (paramChar <= 'ۤ')
                            return true; 
                          if (paramChar >= 'ۧ') {
                            if (paramChar <= 'ۨ')
                              return true; 
                            if (paramChar >= '۪') {
                              if (paramChar <= 'ۭ')
                                return true; 
                              if (paramChar >= 'ँ') {
                                if (paramChar <= 'ः')
                                  return true; 
                                if (paramChar == '़')
                                  return true; 
                                if (paramChar >= 'ा') {
                                  if (paramChar <= 'ौ')
                                    return true; 
                                  if (paramChar == '्')
                                    return true; 
                                  if (paramChar >= '॑') {
                                    if (paramChar <= '॔')
                                      return true; 
                                    if (paramChar >= 'ॢ') {
                                      if (paramChar <= 'ॣ')
                                        return true; 
                                      if (paramChar >= 'ঁ') {
                                        if (paramChar <= 'ঃ')
                                          return true; 
                                        if (paramChar == '়')
                                          return true; 
                                        if (paramChar == 'া')
                                          return true; 
                                        if (paramChar == 'ি')
                                          return true; 
                                        if (paramChar >= 'ী') {
                                          if (paramChar <= 'ৄ')
                                            return true; 
                                          if (paramChar >= 'ে') {
                                            if (paramChar <= 'ৈ')
                                              return true; 
                                            if (paramChar >= 'ো') {
                                              if (paramChar <= '্')
                                                return true; 
                                              if (paramChar == 'ৗ')
                                                return true; 
                                              if (paramChar >= 'ৢ') {
                                                if (paramChar <= 'ৣ')
                                                  return true; 
                                                if (paramChar == 'ਂ')
                                                  return true; 
                                                if (paramChar == '਼')
                                                  return true; 
                                                if (paramChar == 'ਾ')
                                                  return true; 
                                                if (paramChar == 'ਿ')
                                                  return true; 
                                                if (paramChar >= 'ੀ') {
                                                  if (paramChar <= 'ੂ')
                                                    return true; 
                                                  if (paramChar >= 'ੇ') {
                                                    if (paramChar <= 'ੈ')
                                                      return true; 
                                                    if (paramChar >= 'ੋ') {
                                                      if (paramChar <= '੍')
                                                        return true; 
                                                      if (paramChar >= 'ੰ') {
                                                        if (paramChar <= 'ੱ')
                                                          return true; 
                                                        if (paramChar >= 'ઁ') {
                                                          if (paramChar <= 'ઃ')
                                                            return true; 
                                                          if (paramChar == '઼')
                                                            return true; 
                                                          if (paramChar >= 'ા') {
                                                            if (paramChar <= 'ૅ')
                                                              return true; 
                                                            if (paramChar >= 'ે') {
                                                              if (paramChar <= 'ૉ')
                                                                return true; 
                                                              if (paramChar >= 'ો') {
                                                                if (paramChar <= '્')
                                                                  return true; 
                                                                if (paramChar >= 'ଁ') {
                                                                  if (paramChar <= 'ଃ')
                                                                    return true; 
                                                                  if (paramChar == '଼')
                                                                    return true; 
                                                                  if (paramChar >= 'ା') {
                                                                    if (paramChar <= 'ୃ')
                                                                      return true; 
                                                                    if (paramChar >= 'େ') {
                                                                      if (paramChar <= 'ୈ')
                                                                        return true; 
                                                                      if (paramChar >= 'ୋ') {
                                                                        if (paramChar <= '୍')
                                                                          return true; 
                                                                        if (paramChar >= 'ୖ') {
                                                                          if (paramChar <= 'ୗ')
                                                                            return true; 
                                                                          if (paramChar >= 'ஂ') {
                                                                            if (paramChar <= 'ஃ')
                                                                              return true; 
                                                                            if (paramChar >= 'ா') {
                                                                              if (paramChar <= 'ூ')
                                                                                return true; 
                                                                              if (paramChar >= 'ெ') {
                                                                                if (paramChar <= 'ை')
                                                                                  return true; 
                                                                                if (paramChar >= 'ொ') {
                                                                                  if (paramChar <= '்')
                                                                                    return true; 
                                                                                  if (paramChar == 'ௗ')
                                                                                    return true; 
                                                                                  if (paramChar >= 'ఁ') {
                                                                                    if (paramChar <= 'ః')
                                                                                      return true; 
                                                                                    if (paramChar >= 'ా') {
                                                                                      if (paramChar <= 'ౄ')
                                                                                        return true; 
                                                                                      if (paramChar >= 'ె') {
                                                                                        if (paramChar <= 'ై')
                                                                                          return true; 
                                                                                        if (paramChar >= 'ొ') {
                                                                                          if (paramChar <= '్')
                                                                                            return true; 
                                                                                          if (paramChar >= 'ౕ') {
                                                                                            if (paramChar <= 'ౖ')
                                                                                              return true; 
                                                                                            if (paramChar >= 'ಂ') {
                                                                                              if (paramChar <= 'ಃ')
                                                                                                return true; 
                                                                                              if (paramChar >= 'ಾ') {
                                                                                                if (paramChar <= 'ೄ')
                                                                                                  return true; 
                                                                                                if (paramChar >= 'ೆ') {
                                                                                                  if (paramChar <= 'ೈ')
                                                                                                    return true; 
                                                                                                  if (paramChar >= 'ೊ') {
                                                                                                    if (paramChar <= '್')
                                                                                                      return true; 
                                                                                                    if (paramChar >= 'ೕ') {
                                                                                                      if (paramChar <= 'ೖ')
                                                                                                        return true; 
                                                                                                      if (paramChar >= 'ം') {
                                                                                                        if (paramChar <= 'ഃ')
                                                                                                          return true; 
                                                                                                        if (paramChar >= 'ാ') {
                                                                                                          if (paramChar <= 'ൃ')
                                                                                                            return true; 
                                                                                                          if (paramChar >= 'െ') {
                                                                                                            if (paramChar <= 'ൈ')
                                                                                                              return true; 
                                                                                                            if (paramChar >= 'ൊ') {
                                                                                                              if (paramChar <= '്')
                                                                                                                return true; 
                                                                                                              if (paramChar == 'ൗ')
                                                                                                                return true; 
                                                                                                              if (paramChar == 'ั')
                                                                                                                return true; 
                                                                                                              if (paramChar >= 'ิ') {
                                                                                                                if (paramChar <= 'ฺ')
                                                                                                                  return true; 
                                                                                                                if (paramChar >= '็') {
                                                                                                                  if (paramChar <= '๎')
                                                                                                                    return true; 
                                                                                                                  if (paramChar == 'ັ')
                                                                                                                    return true; 
                                                                                                                  if (paramChar >= 'ິ') {
                                                                                                                    if (paramChar <= 'ູ')
                                                                                                                      return true; 
                                                                                                                    if (paramChar >= 'ົ') {
                                                                                                                      if (paramChar <= 'ຼ')
                                                                                                                        return true; 
                                                                                                                      if (paramChar >= '່') {
                                                                                                                        if (paramChar <= 'ໍ')
                                                                                                                          return true; 
                                                                                                                        if (paramChar >= '༘') {
                                                                                                                          if (paramChar <= '༙')
                                                                                                                            return true; 
                                                                                                                          if (paramChar == '༵')
                                                                                                                            return true; 
                                                                                                                          if (paramChar == '༷')
                                                                                                                            return true; 
                                                                                                                          if (paramChar == '༹')
                                                                                                                            return true; 
                                                                                                                          if (paramChar == '༾')
                                                                                                                            return true; 
                                                                                                                          if (paramChar == '༿')
                                                                                                                            return true; 
                                                                                                                          if (paramChar >= 'ཱ') {
                                                                                                                            if (paramChar <= '྄')
                                                                                                                              return true; 
                                                                                                                            if (paramChar >= '྆') {
                                                                                                                              if (paramChar <= 'ྋ')
                                                                                                                                return true; 
                                                                                                                              if (paramChar >= 'ྐ') {
                                                                                                                                if (paramChar <= 'ྕ')
                                                                                                                                  return true; 
                                                                                                                                if (paramChar == 'ྗ')
                                                                                                                                  return true; 
                                                                                                                                if (paramChar >= 'ྙ') {
                                                                                                                                  if (paramChar <= 'ྭ')
                                                                                                                                    return true; 
                                                                                                                                  if (paramChar >= 'ྱ') {
                                                                                                                                    if (paramChar <= 'ྷ')
                                                                                                                                      return true; 
                                                                                                                                    if (paramChar == 'ྐྵ')
                                                                                                                                      return true; 
                                                                                                                                    if (paramChar >= '⃐') {
                                                                                                                                      if (paramChar <= '⃜')
                                                                                                                                        return true; 
                                                                                                                                      if (paramChar == '⃡')
                                                                                                                                        return true; 
                                                                                                                                      if (paramChar >= '〪') {
                                                                                                                                        if (paramChar <= '〯')
                                                                                                                                          return true; 
                                                                                                                                        if (paramChar == '゙')
                                                                                                                                          return true; 
                                                                                                                                        if (paramChar == '゚')
                                                                                                                                          return true; 
                                                                                                                                      } 
                                                                                                                                    } 
                                                                                                                                  } 
                                                                                                                                } 
                                                                                                                              } 
                                                                                                                            } 
                                                                                                                          } 
                                                                                                                        } 
                                                                                                                      } 
                                                                                                                    } 
                                                                                                                  } 
                                                                                                                } 
                                                                                                              } 
                                                                                                            } 
                                                                                                          } 
                                                                                                        } 
                                                                                                      } 
                                                                                                    } 
                                                                                                  } 
                                                                                                } 
                                                                                              } 
                                                                                            } 
                                                                                          } 
                                                                                        } 
                                                                                      } 
                                                                                    } 
                                                                                  } 
                                                                                } 
                                                                              } 
                                                                            } 
                                                                          } 
                                                                        } 
                                                                      } 
                                                                    } 
                                                                  } 
                                                                } 
                                                              } 
                                                            } 
                                                          } 
                                                        } 
                                                      } 
                                                    } 
                                                  } 
                                                } 
                                              } 
                                            } 
                                          } 
                                        } 
                                      } 
                                    } 
                                  } 
                                } 
                              } 
                            } 
                          } 
                        } 
                      } 
                    } 
                  } 
                } 
              } 
            } 
          } 
        } 
      } 
    } 
    return false;
  }
  
  static boolean isXMLDigit(char paramChar) {
    if (paramChar >= '0') {
      if (paramChar <= '9')
        return true; 
      if (paramChar >= '٠') {
        if (paramChar <= '٩')
          return true; 
        if (paramChar >= '۰') {
          if (paramChar <= '۹')
            return true; 
          if (paramChar >= '०') {
            if (paramChar <= '९')
              return true; 
            if (paramChar >= '০') {
              if (paramChar <= '৯')
                return true; 
              if (paramChar >= '੦') {
                if (paramChar <= '੯')
                  return true; 
                if (paramChar >= '૦') {
                  if (paramChar <= '૯')
                    return true; 
                  if (paramChar >= '୦') {
                    if (paramChar <= '୯')
                      return true; 
                    if (paramChar >= '௧') {
                      if (paramChar <= '௯')
                        return true; 
                      if (paramChar >= '౦') {
                        if (paramChar <= '౯')
                          return true; 
                        if (paramChar >= '೦') {
                          if (paramChar <= '೯')
                            return true; 
                          if (paramChar >= '൦') {
                            if (paramChar <= '൯')
                              return true; 
                            if (paramChar >= '๐') {
                              if (paramChar <= '๙')
                                return true; 
                              if (paramChar >= '໐') {
                                if (paramChar <= '໙')
                                  return true; 
                                if (paramChar >= '༠' && paramChar <= '༩')
                                  return true; 
                              } 
                            } 
                          } 
                        } 
                      } 
                    } 
                  } 
                } 
              } 
            } 
          } 
        } 
      } 
    } 
    return false;
  }
  
  static boolean isXMLExtender(char paramChar) {
    if (paramChar >= '¶') {
      if (paramChar == '·')
        return true; 
      if (paramChar == 'ː')
        return true; 
      if (paramChar == 'ˑ')
        return true; 
      if (paramChar == '·')
        return true; 
      if (paramChar == 'ـ')
        return true; 
      if (paramChar == 'ๆ')
        return true; 
      if (paramChar == 'ໆ')
        return true; 
      if (paramChar == '々')
        return true; 
      if (paramChar >= '〱') {
        if (paramChar <= '〵')
          return true; 
        if (paramChar >= 'ゝ') {
          if (paramChar <= 'ゞ')
            return true; 
          if (paramChar >= 'ー' && paramChar <= 'ヾ')
            return true; 
        } 
      } 
    } 
    return false;
  }
  
  static boolean isXMLLetter(char paramChar) {
    if (paramChar >= 'A') {
      if (paramChar <= 'Z')
        return true; 
      if (paramChar >= 'a') {
        if (paramChar <= 'z')
          return true; 
        if (paramChar >= 'À') {
          if (paramChar <= 'Ö')
            return true; 
          if (paramChar >= 'Ø') {
            if (paramChar <= 'ö')
              return true; 
            if (paramChar >= 'ø') {
              if (paramChar <= 'ÿ')
                return true; 
              if (paramChar >= 'Ā') {
                if (paramChar <= 'ı')
                  return true; 
                if (paramChar >= 'Ĵ') {
                  if (paramChar <= 'ľ')
                    return true; 
                  if (paramChar >= 'Ł') {
                    if (paramChar <= 'ň')
                      return true; 
                    if (paramChar >= 'Ŋ') {
                      if (paramChar <= 'ž')
                        return true; 
                      if (paramChar >= 'ƀ') {
                        if (paramChar <= 'ǃ')
                          return true; 
                        if (paramChar >= 'Ǎ') {
                          if (paramChar <= 'ǰ')
                            return true; 
                          if (paramChar >= 'Ǵ') {
                            if (paramChar <= 'ǵ')
                              return true; 
                            if (paramChar >= 'Ǻ') {
                              if (paramChar <= 'ȗ')
                                return true; 
                              if (paramChar >= 'ɐ') {
                                if (paramChar <= 'ʨ')
                                  return true; 
                                if (paramChar >= 'ʻ') {
                                  if (paramChar <= 'ˁ')
                                    return true; 
                                  if (paramChar == 'Ά')
                                    return true; 
                                  if (paramChar >= 'Έ') {
                                    if (paramChar <= 'Ί')
                                      return true; 
                                    if (paramChar == 'Ό')
                                      return true; 
                                    if (paramChar >= 'Ύ') {
                                      if (paramChar <= 'Ρ')
                                        return true; 
                                      if (paramChar >= 'Σ') {
                                        if (paramChar <= 'ώ')
                                          return true; 
                                        if (paramChar >= 'ϐ') {
                                          if (paramChar <= 'ϖ')
                                            return true; 
                                          if (paramChar == 'Ϛ')
                                            return true; 
                                          if (paramChar == 'Ϝ')
                                            return true; 
                                          if (paramChar == 'Ϟ')
                                            return true; 
                                          if (paramChar == 'Ϡ')
                                            return true; 
                                          if (paramChar >= 'Ϣ') {
                                            if (paramChar <= 'ϳ')
                                              return true; 
                                            if (paramChar >= 'Ё') {
                                              if (paramChar <= 'Ќ')
                                                return true; 
                                              if (paramChar >= 'Ў') {
                                                if (paramChar <= 'я')
                                                  return true; 
                                                if (paramChar >= 'ё') {
                                                  if (paramChar <= 'ќ')
                                                    return true; 
                                                  if (paramChar >= 'ў') {
                                                    if (paramChar <= 'ҁ')
                                                      return true; 
                                                    if (paramChar >= 'Ґ') {
                                                      if (paramChar <= 'ӄ')
                                                        return true; 
                                                      if (paramChar >= 'Ӈ') {
                                                        if (paramChar <= 'ӈ')
                                                          return true; 
                                                        if (paramChar >= 'Ӌ') {
                                                          if (paramChar <= 'ӌ')
                                                            return true; 
                                                          if (paramChar >= 'Ӑ') {
                                                            if (paramChar <= 'ӫ')
                                                              return true; 
                                                            if (paramChar >= 'Ӯ') {
                                                              if (paramChar <= 'ӵ')
                                                                return true; 
                                                              if (paramChar >= 'Ӹ') {
                                                                if (paramChar <= 'ӹ')
                                                                  return true; 
                                                                if (paramChar >= 'Ա') {
                                                                  if (paramChar <= 'Ֆ')
                                                                    return true; 
                                                                  if (paramChar == 'ՙ')
                                                                    return true; 
                                                                  if (paramChar >= 'ա') {
                                                                    if (paramChar <= 'ֆ')
                                                                      return true; 
                                                                    if (paramChar >= 'א') {
                                                                      if (paramChar <= 'ת')
                                                                        return true; 
                                                                      if (paramChar >= 'װ') {
                                                                        if (paramChar <= 'ײ')
                                                                          return true; 
                                                                        if (paramChar >= 'ء') {
                                                                          if (paramChar <= 'غ')
                                                                            return true; 
                                                                          if (paramChar >= 'ف') {
                                                                            if (paramChar <= 'ي')
                                                                              return true; 
                                                                            if (paramChar >= 'ٱ') {
                                                                              if (paramChar <= 'ڷ')
                                                                                return true; 
                                                                              if (paramChar >= 'ں') {
                                                                                if (paramChar <= 'ھ')
                                                                                  return true; 
                                                                                if (paramChar >= 'ۀ') {
                                                                                  if (paramChar <= 'ێ')
                                                                                    return true; 
                                                                                  if (paramChar >= 'ې') {
                                                                                    if (paramChar <= 'ۓ')
                                                                                      return true; 
                                                                                    if (paramChar == 'ە')
                                                                                      return true; 
                                                                                    if (paramChar >= 'ۥ') {
                                                                                      if (paramChar <= 'ۦ')
                                                                                        return true; 
                                                                                      if (paramChar >= 'अ') {
                                                                                        if (paramChar <= 'ह')
                                                                                          return true; 
                                                                                        if (paramChar == 'ऽ')
                                                                                          return true; 
                                                                                        if (paramChar >= 'क़') {
                                                                                          if (paramChar <= 'ॡ')
                                                                                            return true; 
                                                                                          if (paramChar >= 'অ') {
                                                                                            if (paramChar <= 'ঌ')
                                                                                              return true; 
                                                                                            if (paramChar >= 'এ') {
                                                                                              if (paramChar <= 'ঐ')
                                                                                                return true; 
                                                                                              if (paramChar >= 'ও') {
                                                                                                if (paramChar <= 'ন')
                                                                                                  return true; 
                                                                                                if (paramChar >= 'প') {
                                                                                                  if (paramChar <= 'র')
                                                                                                    return true; 
                                                                                                  if (paramChar == 'ল')
                                                                                                    return true; 
                                                                                                  if (paramChar >= 'শ') {
                                                                                                    if (paramChar <= 'হ')
                                                                                                      return true; 
                                                                                                    if (paramChar >= 'ড়') {
                                                                                                      if (paramChar <= 'ঢ়')
                                                                                                        return true; 
                                                                                                      if (paramChar >= 'য়') {
                                                                                                        if (paramChar <= 'ৡ')
                                                                                                          return true; 
                                                                                                        if (paramChar >= 'ৰ') {
                                                                                                          if (paramChar <= 'ৱ')
                                                                                                            return true; 
                                                                                                          if (paramChar >= 'ਅ') {
                                                                                                            if (paramChar <= 'ਊ')
                                                                                                              return true; 
                                                                                                            if (paramChar >= 'ਏ') {
                                                                                                              if (paramChar <= 'ਐ')
                                                                                                                return true; 
                                                                                                              if (paramChar >= 'ਓ') {
                                                                                                                if (paramChar <= 'ਨ')
                                                                                                                  return true; 
                                                                                                                if (paramChar >= 'ਪ') {
                                                                                                                  if (paramChar <= 'ਰ')
                                                                                                                    return true; 
                                                                                                                  if (paramChar >= 'ਲ') {
                                                                                                                    if (paramChar <= 'ਲ਼')
                                                                                                                      return true; 
                                                                                                                    if (paramChar >= 'ਵ') {
                                                                                                                      if (paramChar <= 'ਸ਼')
                                                                                                                        return true; 
                                                                                                                      if (paramChar >= 'ਸ') {
                                                                                                                        if (paramChar <= 'ਹ')
                                                                                                                          return true; 
                                                                                                                        if (paramChar >= 'ਖ਼') {
                                                                                                                          if (paramChar <= 'ੜ')
                                                                                                                            return true; 
                                                                                                                          if (paramChar == 'ਫ਼')
                                                                                                                            return true; 
                                                                                                                          if (paramChar >= 'ੲ') {
                                                                                                                            if (paramChar <= 'ੴ')
                                                                                                                              return true; 
                                                                                                                            if (paramChar >= 'અ') {
                                                                                                                              if (paramChar <= 'ઋ')
                                                                                                                                return true; 
                                                                                                                              if (paramChar == 'ઍ')
                                                                                                                                return true; 
                                                                                                                              if (paramChar >= 'એ') {
                                                                                                                                if (paramChar <= 'ઑ')
                                                                                                                                  return true; 
                                                                                                                                if (paramChar >= 'ઓ') {
                                                                                                                                  if (paramChar <= 'ન')
                                                                                                                                    return true; 
                                                                                                                                  if (paramChar >= 'પ') {
                                                                                                                                    if (paramChar <= 'ર')
                                                                                                                                      return true; 
                                                                                                                                    if (paramChar >= 'લ') {
                                                                                                                                      if (paramChar <= 'ળ')
                                                                                                                                        return true; 
                                                                                                                                      if (paramChar >= 'વ') {
                                                                                                                                        if (paramChar <= 'હ')
                                                                                                                                          return true; 
                                                                                                                                        if (paramChar == 'ઽ')
                                                                                                                                          return true; 
                                                                                                                                        if (paramChar == 'ૠ')
                                                                                                                                          return true; 
                                                                                                                                        if (paramChar >= 'ଅ') {
                                                                                                                                          if (paramChar <= 'ଌ')
                                                                                                                                            return true; 
                                                                                                                                          if (paramChar >= 'ଏ') {
                                                                                                                                            if (paramChar <= 'ଐ')
                                                                                                                                              return true; 
                                                                                                                                            if (paramChar >= 'ଓ') {
                                                                                                                                              if (paramChar <= 'ନ')
                                                                                                                                                return true; 
                                                                                                                                              if (paramChar >= 'ପ') {
                                                                                                                                                if (paramChar <= 'ର')
                                                                                                                                                  return true; 
                                                                                                                                                if (paramChar >= 'ଲ') {
                                                                                                                                                  if (paramChar <= 'ଳ')
                                                                                                                                                    return true; 
                                                                                                                                                  if (paramChar >= 'ଶ') {
                                                                                                                                                    if (paramChar <= 'ହ')
                                                                                                                                                      return true; 
                                                                                                                                                    if (paramChar == 'ଽ')
                                                                                                                                                      return true; 
                                                                                                                                                    if (paramChar >= 'ଡ଼') {
                                                                                                                                                      if (paramChar <= 'ଢ଼')
                                                                                                                                                        return true; 
                                                                                                                                                      if (paramChar >= 'ୟ') {
                                                                                                                                                        if (paramChar <= 'ୡ')
                                                                                                                                                          return true; 
                                                                                                                                                        if (paramChar >= 'அ') {
                                                                                                                                                          if (paramChar <= 'ஊ')
                                                                                                                                                            return true; 
                                                                                                                                                          if (paramChar >= 'எ') {
                                                                                                                                                            if (paramChar <= 'ஐ')
                                                                                                                                                              return true; 
                                                                                                                                                            if (paramChar >= 'ஒ') {
                                                                                                                                                              if (paramChar <= 'க')
                                                                                                                                                                return true; 
                                                                                                                                                              if (paramChar >= 'ங') {
                                                                                                                                                                if (paramChar <= 'ச')
                                                                                                                                                                  return true; 
                                                                                                                                                                if (paramChar == 'ஜ')
                                                                                                                                                                  return true; 
                                                                                                                                                                if (paramChar >= 'ஞ') {
                                                                                                                                                                  if (paramChar <= 'ட')
                                                                                                                                                                    return true; 
                                                                                                                                                                  if (paramChar >= 'ண') {
                                                                                                                                                                    if (paramChar <= 'த')
                                                                                                                                                                      return true; 
                                                                                                                                                                    if (paramChar >= 'ந') {
                                                                                                                                                                      if (paramChar <= 'ப')
                                                                                                                                                                        return true; 
                                                                                                                                                                      if (paramChar >= 'ம') {
                                                                                                                                                                        if (paramChar <= 'வ')
                                                                                                                                                                          return true; 
                                                                                                                                                                        if (paramChar >= 'ஷ') {
                                                                                                                                                                          if (paramChar <= 'ஹ')
                                                                                                                                                                            return true; 
                                                                                                                                                                          if (paramChar >= 'అ') {
                                                                                                                                                                            if (paramChar <= 'ఌ')
                                                                                                                                                                              return true; 
                                                                                                                                                                            if (paramChar >= 'ఎ') {
                                                                                                                                                                              if (paramChar <= 'ఐ')
                                                                                                                                                                                return true; 
                                                                                                                                                                              if (paramChar >= 'ఒ') {
                                                                                                                                                                                if (paramChar <= 'న')
                                                                                                                                                                                  return true; 
                                                                                                                                                                                if (paramChar >= 'ప') {
                                                                                                                                                                                  if (paramChar <= 'ళ')
                                                                                                                                                                                    return true; 
                                                                                                                                                                                  if (paramChar >= 'వ') {
                                                                                                                                                                                    if (paramChar <= 'హ')
                                                                                                                                                                                      return true; 
                                                                                                                                                                                    if (paramChar >= 'ౠ') {
                                                                                                                                                                                      if (paramChar <= 'ౡ')
                                                                                                                                                                                        return true; 
                                                                                                                                                                                      if (paramChar >= 'ಅ') {
                                                                                                                                                                                        if (paramChar <= 'ಌ')
                                                                                                                                                                                          return true; 
                                                                                                                                                                                        if (paramChar >= 'ಎ') {
                                                                                                                                                                                          if (paramChar <= 'ಐ')
                                                                                                                                                                                            return true; 
                                                                                                                                                                                          if (paramChar >= 'ಒ') {
                                                                                                                                                                                            if (paramChar <= 'ನ')
                                                                                                                                                                                              return true; 
                                                                                                                                                                                            if (paramChar >= 'ಪ') {
                                                                                                                                                                                              if (paramChar <= 'ಳ')
                                                                                                                                                                                                return true; 
                                                                                                                                                                                              if (paramChar >= 'ವ') {
                                                                                                                                                                                                if (paramChar <= 'ಹ')
                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                if (paramChar == 'ೞ')
                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                if (paramChar >= 'ೠ') {
                                                                                                                                                                                                  if (paramChar <= 'ೡ')
                                                                                                                                                                                                    return true; 
                                                                                                                                                                                                  if (paramChar >= 'അ') {
                                                                                                                                                                                                    if (paramChar <= 'ഌ')
                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                    if (paramChar >= 'എ') {
                                                                                                                                                                                                      if (paramChar <= 'ഐ')
                                                                                                                                                                                                        return true; 
                                                                                                                                                                                                      if (paramChar >= 'ഒ') {
                                                                                                                                                                                                        if (paramChar <= 'ന')
                                                                                                                                                                                                          return true; 
                                                                                                                                                                                                        if (paramChar >= 'പ') {
                                                                                                                                                                                                          if (paramChar <= 'ഹ')
                                                                                                                                                                                                            return true; 
                                                                                                                                                                                                          if (paramChar >= 'ൠ') {
                                                                                                                                                                                                            if (paramChar <= 'ൡ')
                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                            if (paramChar >= 'ก') {
                                                                                                                                                                                                              if (paramChar <= 'ฮ')
                                                                                                                                                                                                                return true; 
                                                                                                                                                                                                              if (paramChar == 'ะ')
                                                                                                                                                                                                                return true; 
                                                                                                                                                                                                              if (paramChar >= 'า') {
                                                                                                                                                                                                                if (paramChar <= 'ำ')
                                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                                if (paramChar >= 'เ') {
                                                                                                                                                                                                                  if (paramChar <= 'ๅ')
                                                                                                                                                                                                                    return true; 
                                                                                                                                                                                                                  if (paramChar >= 'ກ') {
                                                                                                                                                                                                                    if (paramChar <= 'ຂ')
                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                    if (paramChar == 'ຄ')
                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                    if (paramChar >= 'ງ') {
                                                                                                                                                                                                                      if (paramChar <= 'ຈ')
                                                                                                                                                                                                                        return true; 
                                                                                                                                                                                                                      if (paramChar == 'ຊ')
                                                                                                                                                                                                                        return true; 
                                                                                                                                                                                                                      if (paramChar == 'ຍ')
                                                                                                                                                                                                                        return true; 
                                                                                                                                                                                                                      if (paramChar >= 'ດ') {
                                                                                                                                                                                                                        if (paramChar <= 'ທ')
                                                                                                                                                                                                                          return true; 
                                                                                                                                                                                                                        if (paramChar >= 'ນ') {
                                                                                                                                                                                                                          if (paramChar <= 'ຟ')
                                                                                                                                                                                                                            return true; 
                                                                                                                                                                                                                          if (paramChar >= 'ມ') {
                                                                                                                                                                                                                            if (paramChar <= 'ຣ')
                                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                                            if (paramChar == 'ລ')
                                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                                            if (paramChar == 'ວ')
                                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                                            if (paramChar >= 'ສ') {
                                                                                                                                                                                                                              if (paramChar <= 'ຫ')
                                                                                                                                                                                                                                return true; 
                                                                                                                                                                                                                              if (paramChar >= 'ອ') {
                                                                                                                                                                                                                                if (paramChar <= 'ຮ')
                                                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                                                if (paramChar == 'ະ')
                                                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                                                if (paramChar >= 'າ') {
                                                                                                                                                                                                                                  if (paramChar <= 'ຳ')
                                                                                                                                                                                                                                    return true; 
                                                                                                                                                                                                                                  if (paramChar == 'ຽ')
                                                                                                                                                                                                                                    return true; 
                                                                                                                                                                                                                                  if (paramChar >= 'ເ') {
                                                                                                                                                                                                                                    if (paramChar <= 'ໄ')
                                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                                    if (paramChar >= 'ཀ') {
                                                                                                                                                                                                                                      if (paramChar <= 'ཇ')
                                                                                                                                                                                                                                        return true; 
                                                                                                                                                                                                                                      if (paramChar >= 'ཉ') {
                                                                                                                                                                                                                                        if (paramChar <= 'ཀྵ')
                                                                                                                                                                                                                                          return true; 
                                                                                                                                                                                                                                        if (paramChar >= 'Ⴀ') {
                                                                                                                                                                                                                                          if (paramChar <= 'Ⴥ')
                                                                                                                                                                                                                                            return true; 
                                                                                                                                                                                                                                          if (paramChar >= 'ა') {
                                                                                                                                                                                                                                            if (paramChar <= 'ჶ')
                                                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                                                            if (paramChar == 'ᄀ')
                                                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                                                            if (paramChar >= 'ᄂ') {
                                                                                                                                                                                                                                              if (paramChar <= 'ᄃ')
                                                                                                                                                                                                                                                return true; 
                                                                                                                                                                                                                                              if (paramChar >= 'ᄅ') {
                                                                                                                                                                                                                                                if (paramChar <= 'ᄇ')
                                                                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                                                                if (paramChar == 'ᄉ')
                                                                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                                                                if (paramChar >= 'ᄋ') {
                                                                                                                                                                                                                                                  if (paramChar <= 'ᄌ')
                                                                                                                                                                                                                                                    return true; 
                                                                                                                                                                                                                                                  if (paramChar >= 'ᄎ') {
                                                                                                                                                                                                                                                    if (paramChar <= 'ᄒ')
                                                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                                                    if (paramChar == 'ᄼ')
                                                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                                                    if (paramChar == 'ᄾ')
                                                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                                                    if (paramChar == 'ᅀ')
                                                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                                                    if (paramChar == 'ᅌ')
                                                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                                                    if (paramChar == 'ᅎ')
                                                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                                                    if (paramChar == 'ᅐ')
                                                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                                                    if (paramChar >= 'ᅔ') {
                                                                                                                                                                                                                                                      if (paramChar <= 'ᅕ')
                                                                                                                                                                                                                                                        return true; 
                                                                                                                                                                                                                                                      if (paramChar == 'ᅙ')
                                                                                                                                                                                                                                                        return true; 
                                                                                                                                                                                                                                                      if (paramChar >= 'ᅟ') {
                                                                                                                                                                                                                                                        if (paramChar <= 'ᅡ')
                                                                                                                                                                                                                                                          return true; 
                                                                                                                                                                                                                                                        if (paramChar == 'ᅣ')
                                                                                                                                                                                                                                                          return true; 
                                                                                                                                                                                                                                                        if (paramChar == 'ᅥ')
                                                                                                                                                                                                                                                          return true; 
                                                                                                                                                                                                                                                        if (paramChar == 'ᅧ')
                                                                                                                                                                                                                                                          return true; 
                                                                                                                                                                                                                                                        if (paramChar == 'ᅩ')
                                                                                                                                                                                                                                                          return true; 
                                                                                                                                                                                                                                                        if (paramChar >= 'ᅭ') {
                                                                                                                                                                                                                                                          if (paramChar <= 'ᅮ')
                                                                                                                                                                                                                                                            return true; 
                                                                                                                                                                                                                                                          if (paramChar >= 'ᅲ') {
                                                                                                                                                                                                                                                            if (paramChar <= 'ᅳ')
                                                                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                                                                            if (paramChar == 'ᅵ')
                                                                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                                                                            if (paramChar == 'ᆞ')
                                                                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                                                                            if (paramChar == 'ᆨ')
                                                                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                                                                            if (paramChar == 'ᆫ')
                                                                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                                                                            if (paramChar >= 'ᆮ') {
                                                                                                                                                                                                                                                              if (paramChar <= 'ᆯ')
                                                                                                                                                                                                                                                                return true; 
                                                                                                                                                                                                                                                              if (paramChar >= 'ᆷ') {
                                                                                                                                                                                                                                                                if (paramChar <= 'ᆸ')
                                                                                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                                                                                if (paramChar == 'ᆺ')
                                                                                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                                                                                if (paramChar >= 'ᆼ') {
                                                                                                                                                                                                                                                                  if (paramChar <= 'ᇂ')
                                                                                                                                                                                                                                                                    return true; 
                                                                                                                                                                                                                                                                  if (paramChar == 'ᇫ')
                                                                                                                                                                                                                                                                    return true; 
                                                                                                                                                                                                                                                                  if (paramChar == 'ᇰ')
                                                                                                                                                                                                                                                                    return true; 
                                                                                                                                                                                                                                                                  if (paramChar == 'ᇹ')
                                                                                                                                                                                                                                                                    return true; 
                                                                                                                                                                                                                                                                  if (paramChar >= 'Ḁ') {
                                                                                                                                                                                                                                                                    if (paramChar <= 'ẛ')
                                                                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                                                                    if (paramChar >= 'Ạ') {
                                                                                                                                                                                                                                                                      if (paramChar <= 'ỹ')
                                                                                                                                                                                                                                                                        return true; 
                                                                                                                                                                                                                                                                      if (paramChar >= 'ἀ') {
                                                                                                                                                                                                                                                                        if (paramChar <= 'ἕ')
                                                                                                                                                                                                                                                                          return true; 
                                                                                                                                                                                                                                                                        if (paramChar >= 'Ἐ') {
                                                                                                                                                                                                                                                                          if (paramChar <= 'Ἕ')
                                                                                                                                                                                                                                                                            return true; 
                                                                                                                                                                                                                                                                          if (paramChar >= 'ἠ') {
                                                                                                                                                                                                                                                                            if (paramChar <= 'ὅ')
                                                                                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                                                                                            if (paramChar >= 'Ὀ') {
                                                                                                                                                                                                                                                                              if (paramChar <= 'Ὅ')
                                                                                                                                                                                                                                                                                return true; 
                                                                                                                                                                                                                                                                              if (paramChar >= 'ὐ') {
                                                                                                                                                                                                                                                                                if (paramChar <= 'ὗ')
                                                                                                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                                                                                                if (paramChar == 'Ὑ')
                                                                                                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                                                                                                if (paramChar == 'Ὓ')
                                                                                                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                                                                                                if (paramChar == 'Ὕ')
                                                                                                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                                                                                                if (paramChar >= 'Ὗ') {
                                                                                                                                                                                                                                                                                  if (paramChar <= 'ώ')
                                                                                                                                                                                                                                                                                    return true; 
                                                                                                                                                                                                                                                                                  if (paramChar >= 'ᾀ') {
                                                                                                                                                                                                                                                                                    if (paramChar <= 'ᾴ')
                                                                                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                                                                                    if (paramChar >= 'ᾶ') {
                                                                                                                                                                                                                                                                                      if (paramChar <= 'ᾼ')
                                                                                                                                                                                                                                                                                        return true; 
                                                                                                                                                                                                                                                                                      if (paramChar == 'ι')
                                                                                                                                                                                                                                                                                        return true; 
                                                                                                                                                                                                                                                                                      if (paramChar >= 'ῂ') {
                                                                                                                                                                                                                                                                                        if (paramChar <= 'ῄ')
                                                                                                                                                                                                                                                                                          return true; 
                                                                                                                                                                                                                                                                                        if (paramChar >= 'ῆ') {
                                                                                                                                                                                                                                                                                          if (paramChar <= 'ῌ')
                                                                                                                                                                                                                                                                                            return true; 
                                                                                                                                                                                                                                                                                          if (paramChar >= 'ῐ') {
                                                                                                                                                                                                                                                                                            if (paramChar <= 'ΐ')
                                                                                                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                                                                                                            if (paramChar >= 'ῖ') {
                                                                                                                                                                                                                                                                                              if (paramChar <= 'Ί')
                                                                                                                                                                                                                                                                                                return true; 
                                                                                                                                                                                                                                                                                              if (paramChar >= 'ῠ') {
                                                                                                                                                                                                                                                                                                if (paramChar <= 'Ῥ')
                                                                                                                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                                                                                                                if (paramChar >= 'ῲ') {
                                                                                                                                                                                                                                                                                                  if (paramChar <= 'ῴ')
                                                                                                                                                                                                                                                                                                    return true; 
                                                                                                                                                                                                                                                                                                  if (paramChar >= 'ῶ') {
                                                                                                                                                                                                                                                                                                    if (paramChar <= 'ῼ')
                                                                                                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                                                                                                    if (paramChar == 'Ω')
                                                                                                                                                                                                                                                                                                      return true; 
                                                                                                                                                                                                                                                                                                    if (paramChar >= 'K') {
                                                                                                                                                                                                                                                                                                      if (paramChar <= 'Å')
                                                                                                                                                                                                                                                                                                        return true; 
                                                                                                                                                                                                                                                                                                      if (paramChar == '℮')
                                                                                                                                                                                                                                                                                                        return true; 
                                                                                                                                                                                                                                                                                                      if (paramChar >= 'ↀ') {
                                                                                                                                                                                                                                                                                                        if (paramChar <= 'ↂ')
                                                                                                                                                                                                                                                                                                          return true; 
                                                                                                                                                                                                                                                                                                        if (paramChar == '〇')
                                                                                                                                                                                                                                                                                                          return true; 
                                                                                                                                                                                                                                                                                                        if (paramChar >= '〡') {
                                                                                                                                                                                                                                                                                                          if (paramChar <= '〩')
                                                                                                                                                                                                                                                                                                            return true; 
                                                                                                                                                                                                                                                                                                          if (paramChar >= 'ぁ') {
                                                                                                                                                                                                                                                                                                            if (paramChar <= 'ゔ')
                                                                                                                                                                                                                                                                                                              return true; 
                                                                                                                                                                                                                                                                                                            if (paramChar >= 'ァ') {
                                                                                                                                                                                                                                                                                                              if (paramChar <= 'ヺ')
                                                                                                                                                                                                                                                                                                                return true; 
                                                                                                                                                                                                                                                                                                              if (paramChar >= 'ㄅ') {
                                                                                                                                                                                                                                                                                                                if (paramChar <= 'ㄬ')
                                                                                                                                                                                                                                                                                                                  return true; 
                                                                                                                                                                                                                                                                                                                if (paramChar >= '一') {
                                                                                                                                                                                                                                                                                                                  if (paramChar <= '龥')
                                                                                                                                                                                                                                                                                                                    return true; 
                                                                                                                                                                                                                                                                                                                  if (paramChar >= '가' && paramChar <= '힣')
                                                                                                                                                                                                                                                                                                                    return true; 
                                                                                                                                                                                                                                                                                                                } 
                                                                                                                                                                                                                                                                                                              } 
                                                                                                                                                                                                                                                                                                            } 
                                                                                                                                                                                                                                                                                                          } 
                                                                                                                                                                                                                                                                                                        } 
                                                                                                                                                                                                                                                                                                      } 
                                                                                                                                                                                                                                                                                                    } 
                                                                                                                                                                                                                                                                                                  } 
                                                                                                                                                                                                                                                                                                } 
                                                                                                                                                                                                                                                                                              } 
                                                                                                                                                                                                                                                                                            } 
                                                                                                                                                                                                                                                                                          } 
                                                                                                                                                                                                                                                                                        } 
                                                                                                                                                                                                                                                                                      } 
                                                                                                                                                                                                                                                                                    } 
                                                                                                                                                                                                                                                                                  } 
                                                                                                                                                                                                                                                                                } 
                                                                                                                                                                                                                                                                              } 
                                                                                                                                                                                                                                                                            } 
                                                                                                                                                                                                                                                                          } 
                                                                                                                                                                                                                                                                        } 
                                                                                                                                                                                                                                                                      } 
                                                                                                                                                                                                                                                                    } 
                                                                                                                                                                                                                                                                  } 
                                                                                                                                                                                                                                                                } 
                                                                                                                                                                                                                                                              } 
                                                                                                                                                                                                                                                            } 
                                                                                                                                                                                                                                                          } 
                                                                                                                                                                                                                                                        } 
                                                                                                                                                                                                                                                      } 
                                                                                                                                                                                                                                                    } 
                                                                                                                                                                                                                                                  } 
                                                                                                                                                                                                                                                } 
                                                                                                                                                                                                                                              } 
                                                                                                                                                                                                                                            } 
                                                                                                                                                                                                                                          } 
                                                                                                                                                                                                                                        } 
                                                                                                                                                                                                                                      } 
                                                                                                                                                                                                                                    } 
                                                                                                                                                                                                                                  } 
                                                                                                                                                                                                                                } 
                                                                                                                                                                                                                              } 
                                                                                                                                                                                                                            } 
                                                                                                                                                                                                                          } 
                                                                                                                                                                                                                        } 
                                                                                                                                                                                                                      } 
                                                                                                                                                                                                                    } 
                                                                                                                                                                                                                  } 
                                                                                                                                                                                                                } 
                                                                                                                                                                                                              } 
                                                                                                                                                                                                            } 
                                                                                                                                                                                                          } 
                                                                                                                                                                                                        } 
                                                                                                                                                                                                      } 
                                                                                                                                                                                                    } 
                                                                                                                                                                                                  } 
                                                                                                                                                                                                } 
                                                                                                                                                                                              } 
                                                                                                                                                                                            } 
                                                                                                                                                                                          } 
                                                                                                                                                                                        } 
                                                                                                                                                                                      } 
                                                                                                                                                                                    } 
                                                                                                                                                                                  } 
                                                                                                                                                                                } 
                                                                                                                                                                              } 
                                                                                                                                                                            } 
                                                                                                                                                                          } 
                                                                                                                                                                        } 
                                                                                                                                                                      } 
                                                                                                                                                                    } 
                                                                                                                                                                  } 
                                                                                                                                                                } 
                                                                                                                                                              } 
                                                                                                                                                            } 
                                                                                                                                                          } 
                                                                                                                                                        } 
                                                                                                                                                      } 
                                                                                                                                                    } 
                                                                                                                                                  } 
                                                                                                                                                } 
                                                                                                                                              } 
                                                                                                                                            } 
                                                                                                                                          } 
                                                                                                                                        } 
                                                                                                                                      } 
                                                                                                                                    } 
                                                                                                                                  } 
                                                                                                                                } 
                                                                                                                              } 
                                                                                                                            } 
                                                                                                                          } 
                                                                                                                        } 
                                                                                                                      } 
                                                                                                                    } 
                                                                                                                  } 
                                                                                                                } 
                                                                                                              } 
                                                                                                            } 
                                                                                                          } 
                                                                                                        } 
                                                                                                      } 
                                                                                                    } 
                                                                                                  } 
                                                                                                } 
                                                                                              } 
                                                                                            } 
                                                                                          } 
                                                                                        } 
                                                                                      } 
                                                                                    } 
                                                                                  } 
                                                                                } 
                                                                              } 
                                                                            } 
                                                                          } 
                                                                        } 
                                                                      } 
                                                                    } 
                                                                  } 
                                                                } 
                                                              } 
                                                            } 
                                                          } 
                                                        } 
                                                      } 
                                                    } 
                                                  } 
                                                } 
                                              } 
                                            } 
                                          } 
                                        } 
                                      } 
                                    } 
                                  } 
                                } 
                              } 
                            } 
                          } 
                        } 
                      } 
                    } 
                  } 
                } 
              } 
            } 
          } 
        } 
      } 
    } 
    return false;
  }
  
  static boolean isXMLNCNameCharacter(char paramChar) {
    return (isXMLLetter(paramChar) || isXMLDigit(paramChar) || paramChar == '.' || paramChar == '-' || paramChar == '_' || isXMLCombiningChar(paramChar) || isXMLExtender(paramChar));
  }
  
  static boolean isXMLNCNameStartCharacter(char paramChar) {
    return (isXMLLetter(paramChar) || paramChar == '_');
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\saxpath\base\Verifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */