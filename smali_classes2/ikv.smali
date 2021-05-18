.class Likv;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lfur;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Likl;


# direct methods
.method constructor <init>(Likl;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Likv;->a:Likl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lfur;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 585
    .line 587
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    .line 588
    sget-object v2, Liku;->a:[I

    invoke-virtual {v1}, Lfur;->f()Lfus;

    move-result-object v3

    invoke-virtual {v3}, Lfus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 602
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 604
    :goto_1
    return-object v0

    .line 590
    :pswitch_0
    invoke-static {}, Lhat;->n()Lhba;

    move-result-object v2

    .line 591
    invoke-virtual {v2, v1}, Lhba;->c(Lfur;)Z

    move-result v0

    goto :goto_0

    .line 594
    :pswitch_1
    invoke-static {}, Lhat;->n()Lhba;

    move-result-object v2

    .line 595
    invoke-virtual {v2, v1}, Lhba;->a(Lfur;)Z

    move-result v0

    goto :goto_0

    .line 598
    :pswitch_2
    invoke-static {}, Lhat;->n()Lhba;

    move-result-object v2

    .line 599
    invoke-virtual {v2, v1}, Lhba;->b(Lfur;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v1

    .line 604
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Likv;->a:Likl;

    invoke-static {v0}, Likl;->l(Likl;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Likv;->a:Likl;

    invoke-static {v0}, Likl;->l(Likl;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Likv;->a:Likl;

    invoke-static {v0}, Likl;->l(Likl;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 612
    iget-object v0, p0, Likv;->a:Likl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Likl;->a(Likl;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 614
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 577
    check-cast p1, [Lfur;

    invoke-virtual {p0, p1}, Likv;->a([Lfur;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 577
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Likv;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Likv;->a:Likl;

    iget-object v1, p0, Likv;->a:Likl;

    invoke-virtual {v1}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Likl;->a(Likl;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 581
    return-void
.end method
