.class public Lnf;
.super Labw;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Labw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnh;)V
    .locals 3

    .prologue
    .line 29
    sget-object v0, Labq;->CDB_PROGRESSIVO:Labq;

    invoke-virtual {v0}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-virtual {p0, v0, v1}, Lnf;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    :try_start_0
    invoke-static {}, Labp;->b()Labp;

    move-result-object v1

    invoke-virtual {v1}, Labp;->a()Lje;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lnf;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lir;

    move-result-object v0

    new-instance v2, Lng;

    invoke-direct {v2, p0, p6, p1}, Lng;-><init>(Lnf;Lnh;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Laby;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {p6, v1}, Lnh;->a(Laby;)V

    goto :goto_0
.end method
