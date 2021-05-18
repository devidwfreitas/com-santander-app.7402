.class public Lorg/apache/commons/cli/PatternOptionBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLASS_VALUE:Ljava/lang/Class;

.field public static final DATE_VALUE:Ljava/lang/Class;

.field public static final EXISTING_FILE_VALUE:Ljava/lang/Class;

.field public static final FILES_VALUE:Ljava/lang/Class;

.field public static final FILE_VALUE:Ljava/lang/Class;

.field public static final NUMBER_VALUE:Ljava/lang/Class;

.field public static final OBJECT_VALUE:Ljava/lang/Class;

.field public static final STRING_VALUE:Ljava/lang/Class;

.field public static final URL_VALUE:Ljava/lang/Class;

.field static array$Ljava$io$File:Ljava/lang/Class;

.field static class$java$io$File:Ljava/lang/Class;

.field static class$java$io$FileInputStream:Ljava/lang/Class;

.field static class$java$lang$Class:Ljava/lang/Class;

.field static class$java$lang$Number:Ljava/lang/Class;

.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$java$net$URL:Ljava/lang/Class;

.field static class$java$util$Date:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/commons/cli/PatternOptionBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->STRING_VALUE:Ljava/lang/Class;

    .line 61
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lorg/apache/commons/cli/PatternOptionBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$lang$Object:Ljava/lang/Class;

    :goto_1
    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->OBJECT_VALUE:Ljava/lang/Class;

    .line 64
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$lang$Number:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lorg/apache/commons/cli/PatternOptionBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$lang$Number:Ljava/lang/Class;

    :goto_2
    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->NUMBER_VALUE:Ljava/lang/Class;

    .line 67
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$util$Date:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lorg/apache/commons/cli/PatternOptionBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$util$Date:Ljava/lang/Class;

    :goto_3
    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->DATE_VALUE:Ljava/lang/Class;

    .line 70
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "java.lang.Class"

    invoke-static {v0}, Lorg/apache/commons/cli/PatternOptionBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$lang$Class:Ljava/lang/Class;

    :goto_4
    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->CLASS_VALUE:Ljava/lang/Class;

    .line 77
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$io$FileInputStream:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.io.FileInputStream"

    invoke-static {v0}, Lorg/apache/commons/cli/PatternOptionBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$io$FileInputStream:Ljava/lang/Class;

    :goto_5
    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->EXISTING_FILE_VALUE:Ljava/lang/Class;

    .line 80
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$io$File:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.io.File"

    invoke-static {v0}, Lorg/apache/commons/cli/PatternOptionBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$io$File:Ljava/lang/Class;

    :goto_6
    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->FILE_VALUE:Ljava/lang/Class;

    .line 83
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->array$Ljava$io$File:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "[Ljava.io.File;"

    invoke-static {v0}, Lorg/apache/commons/cli/PatternOptionBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->array$Ljava$io$File:Ljava/lang/Class;

    :goto_7
    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->FILES_VALUE:Ljava/lang/Class;

    .line 86
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$net$URL:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string v0, "java.net.URL"

    invoke-static {v0}, Lorg/apache/commons/cli/PatternOptionBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$net$URL:Ljava/lang/Class;

    :goto_8
    sput-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->URL_VALUE:Ljava/lang/Class;

    return-void

    .line 58
    :cond_0
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_1

    .line 64
    :cond_2
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$lang$Number:Ljava/lang/Class;

    goto :goto_2

    .line 67
    :cond_3
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$util$Date:Ljava/lang/Class;

    goto :goto_3

    .line 70
    :cond_4
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$lang$Class:Ljava/lang/Class;

    goto :goto_4

    .line 77
    :cond_5
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$io$FileInputStream:Ljava/lang/Class;

    goto :goto_5

    .line 80
    :cond_6
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$io$File:Ljava/lang/Class;

    goto :goto_6

    .line 83
    :cond_7
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->array$Ljava$io$File:Ljava/lang/Class;

    goto :goto_7

    .line 86
    :cond_8
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->class$java$net$URL:Ljava/lang/Class;

    goto :goto_8
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 58
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public static getValueClass(C)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    sparse-switch p0, :sswitch_data_0

    .line 118
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 99
    :sswitch_0
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->OBJECT_VALUE:Ljava/lang/Class;

    goto :goto_0

    .line 101
    :sswitch_1
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->STRING_VALUE:Ljava/lang/Class;

    goto :goto_0

    .line 103
    :sswitch_2
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->NUMBER_VALUE:Ljava/lang/Class;

    goto :goto_0

    .line 105
    :sswitch_3
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->CLASS_VALUE:Ljava/lang/Class;

    goto :goto_0

    .line 107
    :sswitch_4
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->DATE_VALUE:Ljava/lang/Class;

    goto :goto_0

    .line 109
    :sswitch_5
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->EXISTING_FILE_VALUE:Ljava/lang/Class;

    goto :goto_0

    .line 111
    :sswitch_6
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->FILE_VALUE:Ljava/lang/Class;

    goto :goto_0

    .line 113
    :sswitch_7
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->FILES_VALUE:Ljava/lang/Class;

    goto :goto_0

    .line 115
    :sswitch_8
    sget-object v0, Lorg/apache/commons/cli/PatternOptionBuilder;->URL_VALUE:Ljava/lang/Class;

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_4
        0x25 -> :sswitch_2
        0x2a -> :sswitch_7
        0x2b -> :sswitch_3
        0x2f -> :sswitch_8
        0x3a -> :sswitch_1
        0x3c -> :sswitch_5
        0x3e -> :sswitch_6
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isValueCode(C)Z
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x21

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parsePattern(Ljava/lang/String;)Lorg/apache/commons/cli/Options;
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 150
    .line 154
    new-instance v10, Lorg/apache/commons/cli/Options;

    invoke-direct {v10}, Lorg/apache/commons/cli/Options;-><init>()V

    move v5, v6

    move-object v0, v7

    move v1, v6

    move v4, v8

    .line 156
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v5, v3, :cond_4

    .line 158
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 162
    invoke-static {v3}, Lorg/apache/commons/cli/PatternOptionBuilder;->isValueCode(C)Z

    move-result v9

    if-nez v9, :cond_2

    .line 164
    if-eq v4, v8, :cond_0

    .line 166
    if-eqz v0, :cond_1

    move v9, v2

    :goto_1
    invoke-static {v9}, Lorg/apache/commons/cli/OptionBuilder;->hasArg(Z)Lorg/apache/commons/cli/OptionBuilder;

    .line 167
    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->isRequired(Z)Lorg/apache/commons/cli/OptionBuilder;

    .line 168
    invoke-static {v0}, Lorg/apache/commons/cli/OptionBuilder;->withType(Ljava/lang/Object;)Lorg/apache/commons/cli/OptionBuilder;

    .line 171
    invoke-static {v4}, Lorg/apache/commons/cli/OptionBuilder;->create(C)Lorg/apache/commons/cli/Option;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    move-object v0, v7

    move v1, v6

    .line 156
    :cond_0
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    goto :goto_0

    :cond_1
    move v9, v6

    .line 166
    goto :goto_1

    .line 179
    :cond_2
    const/16 v9, 0x21

    if-ne v3, v9, :cond_3

    move v1, v2

    move v3, v4

    .line 181
    goto :goto_2

    .line 185
    :cond_3
    invoke-static {v3}, Lorg/apache/commons/cli/PatternOptionBuilder;->getValueClass(C)Ljava/lang/Object;

    move-result-object v0

    move v3, v4

    goto :goto_2

    .line 189
    :cond_4
    if-eq v4, v8, :cond_5

    .line 191
    if-eqz v0, :cond_6

    :goto_3
    invoke-static {v2}, Lorg/apache/commons/cli/OptionBuilder;->hasArg(Z)Lorg/apache/commons/cli/OptionBuilder;

    .line 192
    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->isRequired(Z)Lorg/apache/commons/cli/OptionBuilder;

    .line 193
    invoke-static {v0}, Lorg/apache/commons/cli/OptionBuilder;->withType(Ljava/lang/Object;)Lorg/apache/commons/cli/OptionBuilder;

    .line 196
    invoke-static {v4}, Lorg/apache/commons/cli/OptionBuilder;->create(C)Lorg/apache/commons/cli/Option;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 199
    :cond_5
    return-object v10

    :cond_6
    move v2, v6

    .line 191
    goto :goto_3
.end method
