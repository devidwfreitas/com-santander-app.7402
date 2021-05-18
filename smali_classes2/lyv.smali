.class Llyv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxa;


# instance fields
.field final synthetic a:Llyp;


# direct methods
.method constructor <init>(Llyp;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Llyv;->a:Llyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Llyv;->a:Llyp;

    invoke-virtual {v0}, Llyp;->dismiss()V

    .line 333
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 319
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_PopUpAvaliacao_Nota"

    iget-object v1, p0, Llyv;->a:Llyp;

    invoke-static {v1}, Llyp;->f(Llyp;)Landroid/widget/RatingBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Llyv;->a:Llyp;

    invoke-static {v0}, Llyp;->g(Llyp;)V

    .line 326
    iget-object v0, p0, Llyv;->a:Llyp;

    invoke-virtual {v0}, Llyp;->dismiss()V

    .line 327
    return-void
.end method
