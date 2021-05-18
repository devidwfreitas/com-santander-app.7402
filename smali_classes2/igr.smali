.class Ligr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ligo;


# direct methods
.method constructor <init>(Ligo;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Ligr;->a:Ligo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 119
    check-cast p1, Lis;

    .line 120
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Ligr;->a:Ligo;

    invoke-static {v0}, Ligo;->a(Ligo;)Lign;

    move-result-object v0

    invoke-interface {v0}, Lign;->e()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ligd;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligd;

    .line 126
    invoke-virtual {v0}, Ligd;->A()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-virtual {v0}, Ligd;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    iget-object v1, p0, Ligr;->a:Ligo;

    invoke-static {v1}, Ligo;->a(Ligo;)Lign;

    move-result-object v1

    invoke-interface {v1}, Lign;->e()V

    .line 129
    :cond_2
    invoke-virtual {v0}, Ligd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Ligr;->a:Ligo;

    invoke-static {v0}, Ligo;->a(Ligo;)Lign;

    move-result-object v0

    invoke-interface {v0}, Lign;->d()V

    goto :goto_0
.end method
