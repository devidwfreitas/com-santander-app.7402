.class public Lhme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lhme;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lhnj;->j()V

    .line 57
    iget-object v0, p0, Lhme;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->c()V

    .line 58
    return-void
.end method
