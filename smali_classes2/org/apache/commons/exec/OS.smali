.class public final Lorg/apache/commons/exec/OS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FAMILY_DOS:Ljava/lang/String; = "dos"

.field private static final FAMILY_MAC:Ljava/lang/String; = "mac"

.field private static final FAMILY_NETWARE:Ljava/lang/String; = "netware"

.field private static final FAMILY_OPENVMS:Ljava/lang/String; = "openvms"

.field private static final FAMILY_OS_2:Ljava/lang/String; = "os/2"

.field private static final FAMILY_OS_400:Ljava/lang/String; = "os/400"

.field private static final FAMILY_TANDEM:Ljava/lang/String; = "tandem"

.field private static final FAMILY_UNIX:Ljava/lang/String; = "unix"

.field private static final FAMILY_WIN9X:Ljava/lang/String; = "win9x"

.field private static final FAMILY_WINDOWS:Ljava/lang/String; = "windows"

.field private static final FAMILY_Z_OS:Ljava/lang/String; = "z/os"

.field private static final OS_ARCH:Ljava/lang/String;

.field private static final OS_NAME:Ljava/lang/String;

.field private static final OS_VERSION:Ljava/lang/String;

.field private static final PATH_SEP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    .line 52
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/exec/OS;->OS_ARCH:Ljava/lang/String;

    .line 55
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/exec/OS;->OS_VERSION:Ljava/lang/String;

    .line 58
    const-string v0, "path.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/exec/OS;->PATH_SEP:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static isArch(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-static {v0, v0, p0, v0}, Lorg/apache/commons/exec/OS;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isFamily(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {p0, v0, v0, v0}, Lorg/apache/commons/exec/OS;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyDOS()Z
    .locals 1

    .prologue
    .line 91
    const-string v0, "dos"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyMac()Z
    .locals 1

    .prologue
    .line 95
    const-string v0, "mac"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyNetware()Z
    .locals 1

    .prologue
    .line 99
    const-string v0, "netware"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyOS2()Z
    .locals 1

    .prologue
    .line 103
    const-string v0, "os/2"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyOS400()Z
    .locals 1

    .prologue
    .line 127
    const-string v0, "os/400"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyOpenVms()Z
    .locals 1

    .prologue
    .line 131
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyTandem()Z
    .locals 1

    .prologue
    .line 107
    const-string v0, "tandem"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyUnix()Z
    .locals 1

    .prologue
    .line 111
    const-string v0, "unix"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyWin9x()Z
    .locals 1

    .prologue
    .line 119
    const-string v0, "win9x"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyWindows()Z
    .locals 1

    .prologue
    .line 115
    const-string v0, "windows"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyZOS()Z
    .locals 1

    .prologue
    .line 123
    const-string v0, "z/os"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isName(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-static {v0, p0, v0, v0}, Lorg/apache/commons/exec/OS;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 185
    .line 187
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 194
    :cond_0
    if-eqz p0, :cond_1f

    .line 195
    const-string v0, "windows"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "windows"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_2

    move v0, v1

    :goto_0
    move v5, v0

    .line 231
    :goto_1
    if-eqz p1, :cond_1e

    .line 232
    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v4, v0

    .line 234
    :goto_2
    if-eqz p2, :cond_1d

    .line 235
    sget-object v0, Lorg/apache/commons/exec/OS;->OS_ARCH:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v3, v0

    .line 237
    :goto_3
    if-eqz p3, :cond_1c

    .line 238
    sget-object v0, Lorg/apache/commons/exec/OS;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 240
    :goto_4
    if-eqz v5, :cond_1b

    if-eqz v4, :cond_1b

    if-eqz v3, :cond_1b

    if-eqz v0, :cond_1b

    :goto_5
    move v2, v1

    .line 242
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 196
    goto :goto_0

    .line 197
    :cond_3
    const-string v0, "os/2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "os/2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_4

    move v0, v1

    :goto_6
    move v5, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_6

    .line 199
    :cond_5
    const-string v0, "netware"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "netware"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_6

    move v0, v1

    :goto_7
    move v5, v0

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_7

    .line 201
    :cond_7
    const-string v0, "dos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 202
    sget-object v0, Lorg/apache/commons/exec/OS;->PATH_SEP:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "netware"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    move v5, v0

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_8

    .line 204
    :cond_9
    const-string v0, "mac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 205
    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "mac"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_a

    move v0, v1

    :goto_9
    move v5, v0

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto :goto_9

    .line 206
    :cond_b
    const-string v0, "tandem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 207
    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "nonstop_kernel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_c

    move v0, v1

    :goto_a
    move v5, v0

    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto :goto_a

    .line 208
    :cond_d
    const-string v0, "unix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 209
    sget-object v0, Lorg/apache/commons/exec/OS;->PATH_SEP:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "mac"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    move v0, v1

    :goto_b
    move v5, v0

    goto/16 :goto_1

    :cond_f
    move v0, v2

    goto :goto_b

    .line 212
    :cond_10
    const-string v0, "win9x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 213
    const-string v0, "windows"

    invoke-static {v0}, Lorg/apache/commons/exec/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "95"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_11

    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "98"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_11

    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "me"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_11

    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "ce"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_12

    :cond_11
    move v0, v1

    :goto_c
    move v5, v0

    goto/16 :goto_1

    :cond_12
    move v0, v2

    goto :goto_c

    .line 218
    :cond_13
    const-string v0, "z/os"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 219
    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "z/os"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v4, :cond_14

    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "os/390"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_15

    :cond_14
    move v0, v1

    :goto_d
    move v5, v0

    goto/16 :goto_1

    :cond_15
    move v0, v2

    goto :goto_d

    .line 221
    :cond_16
    const-string v0, "os/400"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 222
    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "os/400"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_17

    move v0, v1

    :goto_e
    move v5, v0

    goto/16 :goto_1

    :cond_17
    move v0, v2

    goto :goto_e

    .line 223
    :cond_18
    const-string v0, "openvms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 224
    sget-object v0, Lorg/apache/commons/exec/OS;->OS_NAME:Ljava/lang/String;

    const-string v3, "openvms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_19

    move v0, v1

    :goto_f
    move v5, v0

    goto/16 :goto_1

    :cond_19
    move v0, v2

    goto :goto_f

    .line 226
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Don\'t know how to detect os family \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move v1, v2

    .line 240
    goto/16 :goto_5

    :cond_1c
    move v0, v1

    goto/16 :goto_4

    :cond_1d
    move v3, v1

    goto/16 :goto_3

    :cond_1e
    move v4, v1

    goto/16 :goto_2

    :cond_1f
    move v5, v1

    goto/16 :goto_1
.end method

.method public static isVersion(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-static {v0, v0, v0, p0}, Lorg/apache/commons/exec/OS;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
