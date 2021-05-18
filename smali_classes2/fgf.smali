.class Lfgf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/text/DecimalFormat; = null

.field private static final b:Ljava/lang/String; = "SHA1PRNG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lfgf;->a()Ljava/text/DecimalFormat;

    move-result-object v0

    sput-object v0, Lfgf;->a:Ljava/text/DecimalFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Properties;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 66
    .line 67
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return p2

    .line 70
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    if-eqz v1, :cond_0

    .line 75
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized a(D)Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    const-class v1, Lfgf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfgf;->a:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 105
    if-eqz p0, :cond_0

    .line 109
    :goto_0
    return-object p0

    :cond_0
    const-string p0, "unavailable"

    goto :goto_0
.end method

.method static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 55
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 56
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 57
    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 121
    array-length v1, p0

    .line 122
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 123
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 125
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 126
    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 128
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/text/DecimalFormat;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 46
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 47
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 48
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "###.########;-###"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 49
    return-object v1
.end method

.method public static a(Ljava/util/Properties;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-nez p0, :cond_0

    .line 95
    :goto_0
    return p2

    .line 93
    :cond_0
    if-eqz p2, :cond_1

    move v0, v1

    .line 94
    :goto_1
    invoke-static {p0, p1, v0}, Lfgf;->a(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    .line 95
    if-eqz v0, :cond_2

    :goto_2
    move p2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 93
    goto :goto_1

    :cond_2
    move v1, v2

    .line 95
    goto :goto_2
.end method

.method public static b([B)Z
    .locals 1

    .prologue
    .line 143
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    .line 152
    :catch_0
    move-exception v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
