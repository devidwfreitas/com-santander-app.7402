.class Lgwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lgwd;

.field final synthetic b:Lgwe;


# direct methods
.method constructor <init>(Lgwe;Lgwd;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lgwf;->b:Lgwe;

    iput-object p2, p0, Lgwf;->a:Lgwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lgwf;->b:Lgwe;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lgwe;->a(Lgwe;Ljava/lang/String;Z)V

    .line 79
    iget-object v0, p0, Lgwf;->a:Lgwd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgwd;->a(Lis;)V

    .line 80
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lgwf;->b:Lgwe;

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lgwe;->a(Lgwe;Ljava/lang/String;Z)V

    .line 66
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lipk;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipk;

    .line 68
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lipk;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lipk;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->q()Lgvx;

    move-result-object v1

    invoke-interface {v1, v0}, Lgvx;->a(Lipk;)V

    .line 70
    iget-object v1, p0, Lgwf;->a:Lgwd;

    invoke-interface {v1, v0}, Lgwd;->a(Lipk;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v1, p0, Lgwf;->a:Lgwd;

    invoke-interface {v1, v0}, Lgwd;->b(Lipk;)V

    goto :goto_0
.end method
