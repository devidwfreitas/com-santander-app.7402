.class Lilm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lilk;


# direct methods
.method constructor <init>(Lilk;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lilm;->a:Lilk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lilm;->a:Lilk;

    invoke-static {v0}, Lilk;->c(Lilk;)V

    .line 71
    iget-object v0, p0, Lilm;->a:Lilk;

    invoke-static {v0}, Lilk;->b(Lilk;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->h()Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->finish()V

    .line 73
    return-void
.end method
