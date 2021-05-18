.class Liii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liih;


# direct methods
.method constructor <init>(Liih;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Liii;->a:Liih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    const-string v0, "Investimentos_RendaFixa_Aplicar_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Liii;->a:Liih;

    invoke-static {v0}, Liih;->a(Liih;)V

    .line 115
    iget-object v0, p0, Liii;->a:Liih;

    invoke-static {v0}, Liih;->b(Liih;)Lnau;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lnau;->a(IZ)V

    .line 116
    return-void
.end method
