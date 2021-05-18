.class public Lhmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lhmi;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lhnj;->f()V

    .line 154
    iget-object v0, p0, Lhmi;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->b(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)Lhmo;

    move-result-object v0

    invoke-interface {v0}, Lhmo;->j()V

    .line 155
    return-void
.end method
