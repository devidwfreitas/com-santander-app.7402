.class Lut;
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
    .line 117
    iput-object p1, p0, Lut;->a:Luo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lut;->a:Luo;

    invoke-static {v0}, Luo;->d(Luo;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lut;->a:Luo;

    iget-object v1, p0, Lut;->a:Luo;

    invoke-static {v1}, Luo;->e(Luo;)Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    move-result-object v1

    invoke-virtual {v0, v1}, Luo;->b(Landroid/view/View;)V

    .line 128
    :cond_0
    return-void
.end method
