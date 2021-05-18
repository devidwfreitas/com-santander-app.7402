.class Llwm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llxq;


# instance fields
.field final synthetic a:Lkvs;

.field final synthetic b:Llwk;


# direct methods
.method constructor <init>(Llwk;Lkvs;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Llwm;->b:Llwk;

    iput-object p2, p0, Llwm;->a:Lkvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 374
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Llwm;->b:Llwk;

    const/16 v1, 0x1f4

    const/16 v2, 0x257

    iget-object v3, p0, Llwm;->a:Lkvs;

    invoke-virtual {v3}, Lkvs;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Llwk;->a(Llwk;IILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 378
    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Llwm;->b:Llwk;

    invoke-static {v0}, Llwk;->a(Llwk;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v1, p0, Llwm;->b:Llwk;

    invoke-virtual {v1}, Llwk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    iget-object v0, p0, Llwm;->b:Llwk;

    invoke-static {v0}, Llwk;->a(Llwk;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v1, p0, Llwm;->b:Llwk;

    invoke-virtual {v1}, Llwk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090450

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_2
    new-instance v1, Lkuw;

    invoke-direct {v1}, Lkuw;-><init>()V

    .line 387
    invoke-virtual {v1, v0}, Lkuw;->c(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v1, p1}, Lkuw;->d(Ljava/lang/String;)V

    .line 389
    const-string v0, "E"

    invoke-virtual {v1, v0}, Lkuw;->e(Ljava/lang/String;)V

    .line 391
    new-instance v0, Lkwk;

    invoke-direct {v0}, Lkwk;-><init>()V

    .line 392
    invoke-virtual {v0, p1}, Lkwk;->b(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, v1}, Lkwk;->a(Lkuw;)V

    .line 394
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lkwk;->a(I)V

    .line 396
    iget-object v1, p0, Llwm;->b:Llwk;

    invoke-static {v1, v0}, Llwk;->a(Llwk;Lkwk;)Lkwk;

    .line 398
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llwm;->b:Llwk;

    invoke-static {v1}, Llwk;->a(Llwk;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    iget-object v1, p0, Llwm;->b:Llwk;

    invoke-virtual {v1, v0}, Llwk;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
