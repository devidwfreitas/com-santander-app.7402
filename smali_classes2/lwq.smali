.class Llwq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llwk;


# direct methods
.method constructor <init>(Llwk;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Llwq;->a:Llwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 3

    .prologue
    .line 817
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 818
    const-string v0, "DOCUMENT_RECTOR"

    const-string v1, "STATUS EDIT SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Llwq;->a:Llwk;

    invoke-static {v0}, Llwk;->a(Llwk;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llwq;->a:Llwk;

    invoke-static {v0}, Llwk;->a(Llwk;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    iget-object v0, p0, Llwq;->a:Llwk;

    invoke-static {v0}, Llwk;->a(Llwk;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 822
    iget-object v0, p0, Llwq;->a:Llwk;

    invoke-static {v0}, Llwk;->c(Llwk;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Llwq;->a:Llwk;

    invoke-static {v0}, Llwk;->a(Llwk;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c()V

    goto :goto_0

    .line 825
    :cond_2
    const-string v0, "DOCUMENT_RECTOR"

    const-string v1, "STATUS EDIT ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Llwq;->a:Llwk;

    invoke-static {v0}, Llwk;->a(Llwk;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Llwq;->a:Llwk;

    invoke-virtual {v0}, Llwk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090362

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 814
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Llwq;->a(Lis;)V

    return-void
.end method
