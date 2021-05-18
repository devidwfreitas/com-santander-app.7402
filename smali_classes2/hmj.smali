.class public Lhmj;
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
    .line 158
    iput-object p1, p0, Lhmj;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lhmj;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->b(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)Lhmo;

    move-result-object v0

    invoke-interface {v0}, Lhmo;->i()V

    .line 162
    return-void
.end method
