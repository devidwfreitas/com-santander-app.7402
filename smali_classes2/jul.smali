.class public Ljul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Ljul;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Ljul;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    iget-object v1, p0, Ljul;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Ljsr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b(Ljsr;)V

    .line 104
    return-void
.end method
