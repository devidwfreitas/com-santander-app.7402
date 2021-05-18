.class public Ljlw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljlu;
.implements Ljlv;


# instance fields
.field private a:Ljmm;

.field private b:Ljmv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljmm;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Ljlw;->a:Ljmm;

    .line 27
    new-instance v0, Ljmv;

    invoke-direct {v0, p1, p0}, Ljmv;-><init>(Landroid/content/Context;Ljlv;)V

    iput-object v0, p0, Ljlw;->b:Ljmv;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ljlw;->a:Ljmm;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Ljlw;->a:Ljmm;

    invoke-interface {v0, p1}, Ljmm;->a(Landroid/location/Location;)V

    .line 35
    :cond_0
    return-void
.end method

.method public a(Lis;)V
    .locals 3

    .prologue
    .line 44
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljlw;->a:Ljmm;

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljlp;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlp;

    .line 46
    iget-object v1, p0, Ljlw;->a:Ljmm;

    invoke-interface {v1, v0}, Ljmm;->a(Ljlp;)V

    .line 48
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ljlw;->b:Ljmv;

    invoke-virtual {v0, p1, p2}, Ljmv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public b(Lis;)V
    .locals 1

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Ljlw;->a:Ljmm;

    invoke-interface {v0}, Ljmm;->b()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Ljlw;->a:Ljmm;

    invoke-interface {v0}, Ljmm;->c()V

    goto :goto_0
.end method
