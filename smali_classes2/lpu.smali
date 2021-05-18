.class public Llpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Llpu;->b:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    iput-object p2, p0, Llpu;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmkq;

    invoke-virtual {v0}, Lmkq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "99999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    new-instance v0, Lmlj;

    invoke-direct {v0}, Lmlj;-><init>()V

    .line 568
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlj;->setConnUuid(Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlj;->setTokenSessao(Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Llpu;->b:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->j(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Lmqc;

    move-result-object v1

    new-instance v2, Llpv;

    invoke-direct {v2, p0}, Llpv;-><init>(Llpu;)V

    invoke-virtual {v1, v2, v0}, Lmqc;->a(Lgkw;Lmlj;)V

    .line 598
    :goto_0
    iget-object v0, p0, Llpu;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 599
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Llpu;->b:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
