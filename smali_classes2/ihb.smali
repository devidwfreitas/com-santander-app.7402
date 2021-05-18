.class Lihb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Liha;


# direct methods
.method constructor <init>(Liha;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lihb;->a:Liha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 43
    check-cast p1, Lis;

    .line 44
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lihb;->a:Liha;

    invoke-static {v0}, Liha;->a(Liha;)Ligz;

    move-result-object v0

    invoke-interface {v0}, Ligz;->a()V

    .line 56
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ligi;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligi;

    .line 49
    iget-object v1, p0, Lihb;->a:Liha;

    invoke-static {v1, v0}, Liha;->a(Liha;Ligi;)V

    .line 51
    iget-object v1, p0, Lihb;->a:Liha;

    invoke-static {v1}, Liha;->a(Liha;)Ligz;

    move-result-object v1

    invoke-virtual {v0}, Ligi;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ligz;->a(Ljava/util/List;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lihb;->a:Liha;

    invoke-static {v0}, Liha;->a(Liha;)Ligz;

    move-result-object v0

    invoke-interface {v0}, Ligz;->a()V

    goto :goto_0
.end method
