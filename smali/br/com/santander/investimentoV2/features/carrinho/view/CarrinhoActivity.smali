.class public Lbr/com/santander/investimentoV2/features/carrinho/view/CarrinhoActivity;
.super Lack;
.source "SourceFile"


# instance fields
.field private a:Lmr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Llc;->activity_carrinho:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/carrinho/view/CarrinhoActivity;->setContentView(I)V

    .line 24
    new-instance v0, Lmr;

    invoke-direct {v0, p0}, Lmr;-><init>(Lack;)V

    iput-object v0, p0, Lbr/com/santander/investimentoV2/features/carrinho/view/CarrinhoActivity;->a:Lmr;

    .line 26
    return-void
.end method
