.class Llfk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llfj;


# direct methods
.method constructor <init>(Llfj;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Llfk;->a:Llfj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 99
    const-string v0, "Seguros_Cancelamento_Residencia_CorrerRisco_PopUp_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Llfk;->a:Llfj;

    invoke-static {v0}, Llfj;->a(Llfj;)Llfs;

    move-result-object v0

    invoke-interface {v0}, Llfs;->a()V

    .line 101
    iget-object v0, p0, Llfk;->a:Llfj;

    invoke-virtual {v0}, Llfj;->dismiss()V

    .line 102
    return-void
.end method
