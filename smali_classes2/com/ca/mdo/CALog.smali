.class public Lcom/ca/mdo/CALog;
.super Ljava/lang/Object;
.source "CALog.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "[CA MAA]"

.field private static NOT_LOGGED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, -0x1

    sput v0, Lcom/ca/mdo/CALog;->NOT_LOGGED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    if-eqz p0, :cond_0

    .line 32
    const-string v0, "[CA MAA]"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 34
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/ca/mdo/CALog;->NOT_LOGGED:I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 60
    if-eqz p0, :cond_0

    .line 61
    const-string v0, "[CA MAA]"

    invoke-static {p0}, Lcom/ca/mdo/CALog;->prependFingerPrintInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/ca/mdo/CALog;->NOT_LOGGED:I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    if-eqz p0, :cond_0

    .line 76
    const-string v0, "[CA MAA]"

    invoke-static {p0}, Lcom/ca/mdo/CALog;->prependFingerPrintInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/ca/mdo/CALog;->NOT_LOGGED:I

    goto :goto_0
.end method

.method public static ex(Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    if-eqz p0, :cond_0

    .line 68
    invoke-static {}, Lcom/ca/mdo/CALog;->logFingerPrintInfo()V

    .line 69
    const-string v0, "[CA MAA]"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/ca/mdo/CALog;->NOT_LOGGED:I

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 82
    if-eqz p0, :cond_0

    .line 83
    const-string v0, "[CA MAA]"

    invoke-static {v0, p0}, Lcom/ca/mdo/CALog;->printBig(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/ca/mdo/CALog;->NOT_LOGGED:I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    if-eqz p0, :cond_0

    .line 40
    const-string v0, "[CA MAA]"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/ca/mdo/CALog;->NOT_LOGGED:I

    goto :goto_0
.end method

.method private static logFingerPrintInfo()V
    .locals 1

    .prologue
    .line 20
    const-string v0, ""

    invoke-static {v0}, Lcom/ca/mdo/CALog;->prependFingerPrintInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 21
    return-void
.end method

.method private static prependFingerPrintInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fingerprint:49b85022-2f19-416e-a06d-9854673246d7\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static printBig(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "logString"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "bytesWritten":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xfa0

    if-le v4, v5, :cond_2

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Printing Big Log Start --------------------------- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit16 v1, v4, 0xfa0

    .line 93
    .local v1, "chunkCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_1

    .line 94
    add-int/lit8 v4, v2, 0x1

    mul-int/lit16 v3, v4, 0xfa0

    .line 95
    .local v3, "max":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit16 v5, v2, 0xfa0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 93
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit16 v5, v2, 0xfa0

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 101
    .end local v3    # "max":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Printing Big Log End  --------------------------- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 106
    .end local v1    # "chunkCount":I
    .end local v2    # "i":I
    :goto_2
    return v0

    .line 104
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v0, "[CA MAA]"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 47
    const-string v0, "[CA MAA]"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/ca/mdo/CALog;->NOT_LOGGED:I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 54
    const-string v0, "[CA MAA]"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/ca/mdo/CALog;->NOT_LOGGED:I

    goto :goto_0
.end method
