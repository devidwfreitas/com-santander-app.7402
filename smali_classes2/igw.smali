.class Ligw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ligg;

.field final synthetic b:Ligu;


# direct methods
.method constructor <init>(Ligu;Ligg;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Ligw;->b:Ligu;

    iput-object p2, p0, Ligw;->a:Ligg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 103
    check-cast p1, Lis;

    .line 104
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Ligw;->b:Ligu;

    invoke-static {v0}, Ligu;->a(Ligu;)Ligt;

    move-result-object v0

    invoke-interface {v0}, Ligt;->b()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ligc;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligc;

    .line 109
    invoke-virtual {v0}, Ligc;->A()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ligc;->A()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-ne v1, v2, :cond_2

    .line 110
    iget-object v0, p0, Ligw;->b:Ligu;

    invoke-static {v0}, Ligu;->a(Ligu;)Ligt;

    move-result-object v0

    invoke-interface {v0}, Ligt;->b()V

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiq;->f(Z)V

    .line 115
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->b()Lmwx;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 116
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->b()Lmwx;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lmwx;->f(Ljava/lang/String;)V

    .line 118
    :cond_3
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->c()Live;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 119
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->c()Live;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Live;->b(Ljava/lang/String;)V

    .line 121
    :cond_4
    iget-object v1, p0, Ligw;->b:Ligu;

    invoke-static {v1}, Ligu;->e(Ligu;)Liia;

    move-result-object v1

    new-instance v2, Ligx;

    invoke-direct {v2, p0, v0}, Ligx;-><init>(Ligw;Ligc;)V

    invoke-interface {v1, v2}, Liia;->a(Lgkw;)V

    goto/16 :goto_0
.end method
