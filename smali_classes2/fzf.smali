.class public Lfzf;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfyo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lfzi;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/app/Activity;

.field private d:Lfym;


# direct methods
.method public constructor <init>(Lfzi;Landroid/app/Activity;Lfym;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lgne;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lfzf;->a:Lfzi;

    .line 28
    iput-object p1, p0, Lfzf;->a:Lfzi;

    .line 30
    iput-object p2, p0, Lfzf;->c:Landroid/app/Activity;

    .line 31
    iput-object p3, p0, Lfzf;->d:Lfym;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfyo;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lfzf;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    :goto_0
    :pswitch_0
    return-object v0

    .line 40
    :cond_0
    sget-object v1, Lfzg;->a:[I

    iget-object v2, p0, Lfzf;->d:Lfym;

    invoke-virtual {v2}, Lfym;->e()Lfyn;

    move-result-object v2

    invoke-virtual {v2}, Lfyn;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_1
    invoke-static {}, Lhat;->q()Lfyz;

    move-result-object v1

    invoke-virtual {v1}, Lfyz;->c()Lfyo;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_2
    invoke-static {}, Lhat;->q()Lfyz;

    move-result-object v1

    iget-object v2, p0, Lfzf;->d:Lfym;

    invoke-virtual {v1, v2}, Lfyz;->a(Lfym;)Lfyo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzf;->a([Ljava/lang/Void;)Lfyo;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lfzf;->c:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfzf;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lfyo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    :try_start_0
    iget-object v0, p0, Lfzf;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfzf;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lfzf;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lfzf;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 87
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfzf;->c:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 92
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lfzf;->a:Lfzi;

    invoke-interface {v0, p1}, Lfzi;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lfyo;

    invoke-virtual {p0, p1}, Lfzf;->a(Lfyo;)V

    return-void
.end method
