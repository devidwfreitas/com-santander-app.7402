.class Liie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Liid;


# direct methods
.method constructor <init>(Liid;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Liie;->c:Liid;

    iput-object p2, p0, Liie;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Liie;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 94
    const-string v0, "Investimentos_RendaFixa_Aplicar_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Liie;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Liie;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Liie;->c:Liid;

    invoke-static {v0}, Liid;->a(Liid;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    move-result-object v0

    const v1, 0x7f10052e

    invoke-virtual {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, ""

    .line 101
    const-string v2, ""

    .line 102
    iget-object v3, p0, Liie;->c:Liid;

    invoke-static {v3}, Liid;->a(Liid;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Liie;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Liie;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    return-void
.end method
