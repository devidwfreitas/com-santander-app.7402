.class Llyt;
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
    .line 276
    iput-object p1, p0, Llyt;->a:Llyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 280
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_PopUpAvaliacao_Acao"

    const-string v1, "Avaliar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Llyt;->a:Llyp;

    invoke-static {v0}, Llyp;->e(Llyp;)V

    .line 282
    return-void
.end method
