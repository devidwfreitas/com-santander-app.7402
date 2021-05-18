.class Lmrs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmrq;


# instance fields
.field private a:Lmiq;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lmrs;->a:Lmiq;

    .line 23
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiq;->b(Z)V

    .line 24
    invoke-static {}, Ljcd;->a()V

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://m.santander.com.br/"

    invoke-virtual {v0, v1}, Lmiq;->c(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://esbapi.santander.com.br/"

    invoke-virtual {v0, v1}, Lmiq;->d(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v1}, Lmiq;->e(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://mbbdes.santanderbr.pre.corp/"

    invoke-virtual {v0, v1}, Lmiq;->c(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://esbapi.isbanbr.dev.corp"

    invoke-virtual {v0, v1}, Lmiq;->d(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v1}, Lmiq;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://mbbpi.santanderbr.pre.corp/"

    invoke-virtual {v0, v1}, Lmiq;->c(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://esbapi.isbanbr.pre.corp/"

    invoke-virtual {v0, v1}, Lmiq;->d(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v1}, Lmiq;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_2
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://mbbhk.santanderbr.pre.corp/"

    invoke-virtual {v0, v1}, Lmiq;->c(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://esbapi.santanderbr.pre.corp/"

    invoke-virtual {v0, v1}, Lmiq;->d(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v1}, Lmiq;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_3
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://mbbhk.santander.com.br/"

    invoke-virtual {v0, v1}, Lmiq;->c(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://esbapihi.santander.com.br/"

    invoke-virtual {v0, v1}, Lmiq;->d(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v1}, Lmiq;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_4
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://mbbocu.santander.com.br/"

    invoke-virtual {v0, v1}, Lmiq;->c(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://esbapi.santander.com.br/"

    invoke-virtual {v0, v1}, Lmiq;->d(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v1}, Lmiq;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_5
    invoke-virtual {p0}, Lmrs;->a()V

    goto :goto_0

    .line 64
    :pswitch_6
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://mbbdeploy.santander.com.br/"

    invoke-virtual {v0, v1}, Lmiq;->c(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "https://esbapi.santander.com.br/"

    invoke-virtual {v0, v1}, Lmiq;->d(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lmrs;->a:Lmiq;

    const-string v1, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v1}, Lmiq;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lmrr;)V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Litt;

    new-instance v1, Lmrt;

    invoke-direct {v1, p0, p1}, Lmrt;-><init>(Lmrs;Lmrr;)V

    invoke-direct {v0, v1}, Litt;-><init>(Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 85
    invoke-virtual {v0, v1}, Litt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lmrs;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->c()Z

    move-result v0

    return v0
.end method
