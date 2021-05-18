.class Lmmx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmmv;


# direct methods
.method constructor <init>(Lmmv;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lmmx;->a:Lmmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 91
    check-cast p1, Lis;

    .line 92
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lmmx;->a:Lmmv;

    invoke-static {v0}, Lmmv;->a(Lmmv;)Lmmu;

    move-result-object v0

    invoke-interface {v0}, Lmmu;->a()V

    .line 114
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lmkp;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmkp;

    .line 99
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 100
    iget-object v1, p0, Lmmx;->a:Lmmv;

    invoke-static {v1}, Lmmv;->b(Lmmv;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lgkt;

    .line 101
    invoke-virtual {v0}, Lmkp;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {v0}, Lmkp;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v0}, Lmkp;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lgkt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {v1, v2}, Lhav;->a(Landroid/app/Activity;Lgkt;)V

    goto :goto_0

    .line 107
    :cond_1
    new-instance v1, Lmkx;

    invoke-direct {v1}, Lmkx;-><init>()V

    .line 108
    invoke-virtual {v0}, Lmkp;->a()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmkx;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lmkp;->c()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmkx;->b(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lmkp;->d()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmkx;->c(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Lmkp;->f()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmkx;->d(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lmmx;->a:Lmmv;

    invoke-static {v0}, Lmmv;->a(Lmmv;)Lmmu;

    move-result-object v0

    invoke-interface {v0, v1}, Lmmu;->a(Lmkx;)V

    goto :goto_0
.end method
