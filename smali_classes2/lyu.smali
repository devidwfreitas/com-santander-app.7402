.class Llyu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llyp;


# direct methods
.method constructor <init>(Llyp;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Llyu;->a:Llyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 288
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_PopUpAvaliacao_Acao"

    const-string v1, "NaoObrigado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Llyu;->a:Llyp;

    invoke-virtual {v0}, Llyp;->dismiss()V

    .line 291
    return-void
.end method
