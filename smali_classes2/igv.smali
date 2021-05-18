.class Ligv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ligu;


# direct methods
.method constructor <init>(Ligu;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Ligv;->a:Ligu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    check-cast p1, Lis;

    .line 69
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Ligv;->a:Ligu;

    invoke-static {v0}, Ligu;->a(Ligu;)Ligt;

    move-result-object v0

    invoke-interface {v0}, Ligt;->a()V

    .line 92
    :cond_0
    :goto_0
    iget-object v0, p0, Ligv;->a:Ligu;

    invoke-static {v0}, Ligu;->c(Ligu;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 93
    return-void

    .line 72
    :cond_1
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ligg;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligg;

    .line 76
    invoke-virtual {v0}, Ligg;->A()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-virtual {v0}, Ligg;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    iget-object v1, p0, Ligv;->a:Ligu;

    invoke-static {v1}, Ligu;->a(Ligu;)Ligt;

    move-result-object v1

    invoke-interface {v1}, Ligt;->a()V

    .line 80
    :cond_2
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->b()Lmwx;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {p1}, Lis;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "desafio"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lis;->d()Ljava/util/Map;

    move-result-object v2

    const-string v3, "sequencia"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    iget-object v3, p0, Ligv;->a:Ligu;

    invoke-static {v3}, Ligu;->b(Ligu;)Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->y()Lmwy;

    move-result-object v3

    invoke-virtual {v3}, Lmwy;->b()Lmwx;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmwx;->c(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Ligv;->a:Ligu;

    invoke-static {v1}, Ligu;->b(Ligu;)Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->b()Lmwx;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmwx;->b(Ljava/lang/String;)V

    .line 89
    :cond_3
    iget-object v1, p0, Ligv;->a:Ligu;

    invoke-static {v1}, Ligu;->a(Ligu;)Ligt;

    move-result-object v1

    invoke-interface {v1, v0}, Ligt;->a(Ligg;)V

    goto/16 :goto_0
.end method
