.class Lcom/santander/app/lojaonline/domain/MockLojaCampaign$SegurosCampaign;
.super Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;-><init>()V

    .line 97
    const/4 v0, 0x2

    iput v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$SegurosCampaign;->c:I

    .line 98
    const v0, 0x7f020590

    invoke-static {v0}, Ljou;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$SegurosCampaign;->g:Landroid/graphics/Bitmap;

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$SegurosCampaign;->a:I

    .line 100
    const-string v0, "santanderpf://deeplink?tela=segurosListaProdutos"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$SegurosCampaign;->e:Ljava/lang/String;

    .line 101
    const-string v0, "Seguros"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$SegurosCampaign;->f:Ljava/lang/String;

    .line 102
    return-void
.end method
