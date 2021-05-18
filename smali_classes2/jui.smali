.class public Ljui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;


# instance fields
.field final synthetic a:Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Ljui;->a:Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCollapse(I)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Ljui;->a:Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;

    iget-object v1, p0, Ljui;->a:Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;Landroid/widget/ExpandableListView;)V

    .line 190
    return-void
.end method
