.class Llxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxa;


# instance fields
.field final synthetic a:Llwr;


# direct methods
.method constructor <init>(Llwr;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Llxa;->a:Llwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 706
    iget-object v0, p0, Llxa;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llxa;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v0, p0, Llxa;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 708
    iget-object v0, p0, Llxa;->a:Llwr;

    invoke-static {v0}, Llwr;->c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v1, p0, Llxa;->a:Llwr;

    invoke-virtual {v1}, Llwr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Llxa;->a:Llwr;

    iget-object v1, p0, Llxa;->a:Llwr;

    invoke-static {v1}, Llwr;->d(Llwr;)Lkwk;

    move-result-object v1

    invoke-virtual {v1}, Lkwk;->d()Lkuw;

    move-result-object v1

    invoke-virtual {v1}, Lkuw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llwr;->a(Llwr;Ljava/lang/String;)V

    .line 702
    return-void
.end method
