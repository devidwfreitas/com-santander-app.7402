.class public Ljlb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljla;


# static fields
.field private static final a:Ljava/lang/String; = "individual-investment/v1/customer-portfolio/consolidated-position"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lgkw;Ljdg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkw",
            "<",
            "Ljdf;",
            ">;",
            "Ljdg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljle;

    new-instance v1, Ljlc;

    invoke-direct {v1, p0, p1}, Ljlc;-><init>(Ljlb;Lgkw;)V

    invoke-direct {v0, v1}, Ljle;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljdg;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 47
    invoke-virtual {v0, v1}, Ljle;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    return-void
.end method

.method public a(Lirs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lirs",
            "<",
            "Ljdf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljdf;

    invoke-direct {v0}, Ljdf;-><init>()V

    .line 55
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    const-string v2, "flagOnlyTotalBalance"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v1}, Lgnp;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v2

    invoke-virtual {v2}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "individual-investment/v1/customer-portfolio/consolidated-position?gw-app-key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v2, v4, v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;

    move-result-object v1

    .line 62
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    new-instance v3, Ljld;

    invoke-direct {v3, p0, v0, p1}, Ljld;-><init>(Ljlb;Ljdf;Lirs;)V

    invoke-virtual {v2, v1, v3}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-interface {p1}, Lirs;->a()V

    goto :goto_0
.end method
