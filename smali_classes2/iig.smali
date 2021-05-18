.class Liig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liid;


# direct methods
.method constructor <init>(Liid;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Liig;->a:Liid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 144
    const-string v0, "Investimentos_RendaFixa_Aplicar_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Liig;->a:Liid;

    invoke-virtual {v1}, Liid;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    iget-object v1, p0, Liig;->a:Liid;

    invoke-virtual {v1, v0}, Liid;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method
