.class final Lagt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lags;


# direct methods
.method constructor <init>(Lags;)V
    .locals 0

    iput-object p1, p0, Lagt;->a:Lags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lagt;->a:Lags;

    invoke-static {v0}, Lags;->a(Lags;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagl;->tag_meus_emprestimos_acao:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lagt;->a:Lags;

    invoke-static {v1}, Lags;->a(Lags;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lagl;->tag_valor_conheca_uma_oferta:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laiy;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lagt;->a:Lags;

    invoke-static {v1}, Lags;->a(Lags;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lbr/com/santander/modulo/emprestimoslib/features/gestao/main/view/CreditoMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "openCP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lagt;->a:Lags;

    invoke-static {v1}, Lags;->a(Lags;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lagt;->a:Lags;

    invoke-static {v0}, Lags;->a(Lags;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
