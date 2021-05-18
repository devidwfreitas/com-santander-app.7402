.class Ljvr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laom;


# instance fields
.field final synthetic a:Ljvq;


# direct methods
.method constructor <init>(Ljvq;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Ljvr;->a:Ljvq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljvr;->a:Ljvq;

    invoke-static {v0}, Ljvq;->a(Ljvq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Ljvr;->a:Ljvq;

    invoke-static {v0}, Ljvq;->b(Ljvq;)Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d()V

    .line 76
    :cond_0
    return-void
.end method
