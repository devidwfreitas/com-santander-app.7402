.class Lley;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llex;


# direct methods
.method constructor <init>(Llex;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lley;->a:Llex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 113
    const-string v0, "Seguros_Cancelamento_Residencia_CorrerRisco_PopUp_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lley;->a:Llex;

    invoke-static {v0}, Llex;->a(Llex;)Llfg;

    move-result-object v0

    invoke-interface {v0}, Llfg;->a()V

    .line 115
    iget-object v0, p0, Lley;->a:Llex;

    invoke-virtual {v0}, Llex;->dismiss()V

    .line 116
    return-void
.end method
