.class Llpv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Llpu;


# direct methods
.method constructor <init>(Llpu;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Llpv;->a:Llpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 574
    if-nez p1, :cond_1

    .line 575
    iget-object v0, p0, Llpv;->a:Llpu;

    iget-object v0, v0, Llpu;->b:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    iget-object v1, p0, Llpv;->a:Llpu;

    iget-object v1, v1, Llpu;->b:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    check-cast p1, Lmli;

    .line 580
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmli;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmli;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Llpv;->a:Llpu;

    iget-object v0, v0, Llpu;->b:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    const-class v2, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    const-string v2, "todosBancos"

    invoke-virtual {p1}, Lmli;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 583
    iget-object v0, p0, Llpv;->a:Llpu;

    iget-object v0, v0, Llpu;->b:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    const/16 v2, 0x22b8

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
