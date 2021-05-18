.class Ljld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Ljdf;

.field final synthetic b:Lirs;

.field final synthetic c:Ljlb;


# direct methods
.method constructor <init>(Ljlb;Ljdf;Lirs;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Ljld;->c:Ljlb;

    iput-object p2, p0, Ljld;->a:Ljdf;

    iput-object p3, p0, Ljld;->b:Lirs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ljld;->b:Lirs;

    invoke-interface {v0}, Lirs;->a()V

    .line 83
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ltm;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltm;

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Ltm;->g()V

    .line 71
    invoke-virtual {v0}, Ltm;->a()Lsw;

    move-result-object v0

    .line 72
    iget-object v1, p0, Ljld;->a:Ljdf;

    invoke-virtual {v0}, Lsw;->b()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljdf;->a(Ljava/lang/Double;)V

    .line 77
    :goto_0
    iget-object v0, p0, Ljld;->b:Lirs;

    iget-object v1, p0, Ljld;->a:Ljdf;

    invoke-interface {v0, v1}, Lirs;->a(Ljava/lang/Object;)V

    .line 78
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Ljld;->a:Ljdf;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdf;->a(Ljava/lang/Double;)V

    goto :goto_0
.end method
