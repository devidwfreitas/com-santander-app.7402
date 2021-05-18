.class public Lhcn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lhcn;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 125
    if-nez p2, :cond_0

    .line 126
    iget-object v0, p0, Lhcn;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lhcn;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    invoke-static {v1}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    return-void
.end method
