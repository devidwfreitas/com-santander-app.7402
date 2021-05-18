.class public Lnad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ERROR_DLCRYPTO"

.field private static b:Lnad;


# instance fields
.field private c:Lji;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lji;

    invoke-direct {v0}, Lji;-><init>()V

    iput-object v0, p0, Lnad;->c:Lji;

    .line 27
    return-void
.end method

.method public static a()Lnad;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lnad;->b:Lnad;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lnad;

    invoke-direct {v0}, Lnad;-><init>()V

    sput-object v0, Lnad;->b:Lnad;

    .line 33
    :cond_0
    sget-object v0, Lnad;->b:Lnad;

    return-object v0
.end method

.method static synthetic a(Lnad;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lnad;->d(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lnad;->c:Lji;

    invoke-virtual {v0, p1}, Lji;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "ERROR_DLCRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Lih;)Lih;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lnae;

    invoke-direct {v0, p0, p1}, Lnae;-><init>(Lnad;Lih;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lnad;->c:Lji;

    invoke-virtual {v0, p1}, Lji;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "ERROR_DLCRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lnad;->c:Lji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lji;->a(Z)V

    .line 39
    const-string v0, ""

    .line 42
    :try_start_0
    iget-object v1, p0, Lnad;->c:Lji;

    invoke-virtual {v1}, Lji;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    const-string v2, "ERROR_DLCRYPTO"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    const-string v0, ""

    .line 73
    :try_start_0
    iget-object v1, p0, Lnad;->c:Lji;

    invoke-virtual {v1, p1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    const-string v1, "//s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    const-string v2, "ERROR_DLCRYPTO"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    const-string v0, ""

    .line 86
    :try_start_0
    iget-object v1, p0, Lnad;->c:Lji;

    invoke-virtual {v1, p1}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    const-string v2, "ERROR_DLCRYPTO"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c()Lji;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lnad;->c:Lji;

    return-object v0
.end method
