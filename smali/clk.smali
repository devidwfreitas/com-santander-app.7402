.class public final Lclk;
.super Lclp;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lclp;-><init>()V

    .line 48
    iput-object p1, p0, Lclk;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lclk;->b:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lclk;->c:Ljava/util/Map;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lclp;-><init>()V

    .line 35
    iput-object p1, p0, Lclk;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lclk;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lclk;->c:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lclk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lclk;

    invoke-direct {v0, p0, p1, p2}, Lclk;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    invoke-virtual {v0}, Lclk;->a()V

    .line 93
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 58
    iget-object v0, p0, Lclk;->a:Landroid/content/Context;

    invoke-static {v0}, Lcmf;->a(Landroid/content/Context;)Lcmf;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lclk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcmf;->c(Ljava/lang/String;)V

    .line 62
    :try_start_0
    new-instance v1, Lcms;

    invoke-direct {v1}, Lcms;-><init>()V

    iget-object v2, p0, Lclk;->b:Ljava/lang/String;

    .line 63
    invoke-virtual {v1, v2}, Lcms;->a(Ljava/lang/String;)Lcms;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcms;->a()Lcms;

    move-result-object v1

    iget-object v2, p0, Lclk;->c:Ljava/util/Map;

    .line 65
    invoke-virtual {v1, v2}, Lcms;->a(Ljava/util/Map;)Lcms;

    move-result-object v1

    iget-object v2, p0, Lclk;->b:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v2}, Lcmf;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcms;->a(Z)Lcms;

    move-result-object v2

    .line 68
    iget-object v1, p0, Lclk;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lclk;->a(Landroid/content/Context;Lcms;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v1, "GoogleConversionReporter"

    const-string v2, "Error sending ping"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
