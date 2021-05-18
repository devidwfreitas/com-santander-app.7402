.class public Ljuh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field final synthetic a:Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;)V
    .locals 1

    .prologue
    .line 174
    iput-object p1, p0, Ljuh;->a:Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Ljuh;->b:I

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Ljuh;->b:I

    if-eq p1, v0, :cond_0

    .line 180
    iget-object v0, p0, Ljuh;->a:Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Ljuh;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 181
    :cond_0
    iput p1, p0, Ljuh;->b:I

    .line 183
    iget-object v0, p0, Ljuh;->a:Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;

    iget-object v1, p0, Ljuh;->a:Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;Landroid/widget/ExpandableListView;I)V

    .line 184
    return-void
.end method
