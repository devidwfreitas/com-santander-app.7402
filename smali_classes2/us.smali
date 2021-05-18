.class Lus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laay;


# instance fields
.field final synthetic a:Luo;


# direct methods
.method constructor <init>(Luo;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lus;->a:Luo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lus;->a:Luo;

    iget-object v1, p0, Lus;->a:Luo;

    invoke-static {v1}, Luo;->c(Luo;)Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    move-result-object v1

    invoke-virtual {v0, v1}, Luo;->b(Landroid/view/View;)V

    .line 114
    return-void
.end method
