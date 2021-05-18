.class public Lldz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lldz;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 215
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lldz;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 218
    iget-object v0, p0, Lldz;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lldz;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->c(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lldz;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->d(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lldz;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->e(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lldz;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lldz;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->b(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0
.end method
