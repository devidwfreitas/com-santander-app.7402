.class final Ljcx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljdf;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljdf;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Ljcx;->a:Landroid/app/Activity;

    iput-object p2, p0, Ljcx;->b:Ljdf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    :try_start_0
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    invoke-virtual {v0, p1}, Lnaf;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    .line 380
    :catch_0
    move-exception v0

    .line 386
    const-string v0, ""

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljcx;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    iget-object v1, p0, Ljcx;->b:Ljdf;

    if-eqz v1, :cond_0

    .line 372
    const-string v1, "meus_investimentos_model"

    iget-object v2, p0, Ljcx;->b:Ljdf;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 373
    :cond_0
    iget-object v1, p0, Ljcx;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 374
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 420
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfrq;->a(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public a(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 425
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lfrq;->a(Ljava/lang/String;D)V

    .line 426
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 405
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 411
    return-void
.end method

.method public a(Lyw;)V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Ljcx;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Ljcy;

    invoke-direct {v2, p0, p1}, Ljcy;-><init>(Ljcx;Lyw;)V

    invoke-static {v0, v1, v2}, Lgyy;->a(Landroid/content/Context;Ljava/lang/String;Lgyx;)V

    .line 401
    return-void
.end method

.method public a(Lzx;)V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Ljcx;->a:Landroid/app/Activity;

    const v1, 0x7f090b89

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lgpu;->a(Ljava/lang/String;Lzx;)V

    .line 365
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 415
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method
