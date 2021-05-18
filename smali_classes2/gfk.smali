.class Lgfk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgfj;


# direct methods
.method constructor <init>(Lgfj;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lgfk;->b:Lgfj;

    iput-object p2, p0, Lgfk;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 67
    check-cast p1, Lis;

    .line 69
    iget-object v0, p0, Lgfk;->b:Lgfj;

    invoke-static {v0}, Lgfj;->a(Lgfj;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 71
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lgfk;->b:Lgfj;

    invoke-static {v0}, Lgfj;->b(Lgfj;)Lgfi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgfi;->a(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"code\":300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgey;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgey;

    .line 76
    iget-object v1, p0, Lgfk;->b:Lgfj;

    invoke-static {v1, p1}, Lgfj;->a(Lgfj;Lis;)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lgfk;->b:Lgfj;

    iget-object v3, p0, Lgfk;->a:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lgfj;->a(Lgfj;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    iget-object v2, p0, Lgfk;->b:Lgfj;

    invoke-static {v2, v1}, Lgfj;->a(Lgfj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lgey;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmir;->b(Z)V

    .line 86
    iget-object v1, p0, Lgfk;->b:Lgfj;

    invoke-static {v1}, Lgfj;->b(Lgfj;)Lgfi;

    move-result-object v1

    iget-object v2, p0, Lgfk;->b:Lgfj;

    invoke-static {v2}, Lgfj;->c(Lgfj;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09024a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgfi;->b(Ljava/lang/String;)V

    .line 94
    :goto_1
    iget-object v1, p0, Lgfk;->b:Lgfj;

    new-instance v2, Lger;

    invoke-direct {v2}, Lger;-><init>()V

    invoke-virtual {v2, v0}, Lger;->a(Lgey;)Lger;

    move-result-object v0

    invoke-static {v1, v0}, Lgfj;->a(Lgfj;Lger;)Lger;

    .line 96
    iget-object v0, p0, Lgfk;->b:Lgfj;

    invoke-static {v0}, Lgfj;->b(Lgfj;)Lgfi;

    move-result-object v0

    iget-object v1, p0, Lgfk;->b:Lgfj;

    invoke-static {v1}, Lgfj;->d(Lgfj;)Lger;

    move-result-object v1

    invoke-interface {v0, v1}, Lgfi;->a(Lger;)V

    goto/16 :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lgfk;->b:Lgfj;

    invoke-static {v1}, Lgfj;->b(Lgfj;)Lgfi;

    move-result-object v1

    iget-object v2, p0, Lgfk;->b:Lgfj;

    invoke-static {v2}, Lgfj;->c(Lgfj;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090249

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgfi;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_2
    iget-object v1, p0, Lgfk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgey;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 98
    :cond_3
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgeu;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeu;

    .line 99
    iget-object v1, p0, Lgfk;->b:Lgfj;

    invoke-static {v1}, Lgfj;->b(Lgfj;)Lgfi;

    move-result-object v1

    invoke-virtual {v0}, Lgeu;->a()Lget;

    move-result-object v0

    invoke-virtual {v0}, Lget;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lgfi;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
