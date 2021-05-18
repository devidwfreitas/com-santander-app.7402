.class Llzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llyy;


# direct methods
.method constructor <init>(Llyy;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Llzh;->a:Llyy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 555
    const-string v0, "Seguros_Sinistro_Acionar_ContarSobreAcontecido_Acao"

    const-string v1, "PularGravacao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Llzh;->a:Llyy;

    invoke-static {v0}, Llyy;->j(Llyy;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Llzh;->a:Llyy;

    iget-object v1, p0, Llzh;->a:Llyy;

    invoke-static {v1}, Llyy;->j(Llyy;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llyy;->a(Llyy;Ljava/lang/String;)V

    .line 560
    :cond_0
    iget-object v0, p0, Llzh;->a:Llyy;

    invoke-static {v0}, Llyy;->k(Llyy;)V

    .line 561
    return-void
.end method
