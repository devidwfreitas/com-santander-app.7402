.class Llwy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llxq;


# instance fields
.field final synthetic a:Llwr;


# direct methods
.method constructor <init>(Llwr;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Llwy;->a:Llwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llwy;->a:Llwr;

    invoke-static {v0}, Llwr;->a(Llwr;)I

    move-result v0

    if-le v0, v4, :cond_0

    .line 538
    iget-object v0, p0, Llwy;->a:Llwr;

    invoke-static {v0}, Llwr;->b(Llwr;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Llwy;->a:Llwr;

    invoke-static {v1}, Llwr;->a(Llwr;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 539
    iget-object v1, p0, Llwy;->a:Llwr;

    const/16 v2, 0x1f4

    const/16 v3, 0x257

    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Llwr;->a(Llwr;IILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 541
    if-nez v0, :cond_1

    .line 543
    iget-object v0, p0, Llwy;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v1, p0, Llwy;->a:Llwr;

    invoke-virtual {v1}, Llwr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    iget-object v0, p0, Llwy;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v1, p0, Llwy;->a:Llwr;

    invoke-virtual {v1}, Llwr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090450

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_2
    new-instance v1, Lkuw;

    invoke-direct {v1}, Lkuw;-><init>()V

    .line 550
    invoke-virtual {v1, v0}, Lkuw;->c(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1, p1}, Lkuw;->d(Ljava/lang/String;)V

    .line 552
    const-string v0, "E"

    invoke-virtual {v1, v0}, Lkuw;->e(Ljava/lang/String;)V

    .line 554
    new-instance v0, Lkwk;

    invoke-direct {v0}, Lkwk;-><init>()V

    .line 555
    invoke-virtual {v0, p1}, Lkwk;->b(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, v1}, Lkwk;->a(Lkuw;)V

    .line 557
    invoke-virtual {v0, v4}, Lkwk;->a(I)V

    .line 559
    iget-object v1, p0, Llwy;->a:Llwr;

    invoke-static {v1, v0}, Llwr;->a(Llwr;Lkwk;)Lkwk;

    .line 561
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llwy;->a:Llwr;

    invoke-static {v1}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 562
    iget-object v1, p0, Llwy;->a:Llwr;

    invoke-virtual {v1, v0}, Llwr;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
