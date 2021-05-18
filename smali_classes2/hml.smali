.class public Lhml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lhml;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lhml;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->a(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;)Lhms;

    move-result-object v0

    invoke-interface {v0}, Lhms;->g()V

    .line 74
    invoke-static {}, Lhnj;->d()V

    .line 75
    return-void
.end method
