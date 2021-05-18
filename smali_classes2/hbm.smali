.class public abstract Lhbm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lmiq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lhbm;->a:Lmiq;

    .line 24
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    const-string v0, "false"

    .line 32
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
