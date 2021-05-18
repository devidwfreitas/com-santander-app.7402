.class Lcom/santander/app/lojaonline/domain/MockLojaCampaign$CartoesCampaign;
.super Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 66
    invoke-direct {p0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;-><init>()V

    .line 67
    iput v1, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$CartoesCampaign;->c:I

    .line 68
    const v0, 0x7f020588

    invoke-static {v0}, Ljou;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$CartoesCampaign;->g:Landroid/graphics/Bitmap;

    .line 69
    iput v1, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$CartoesCampaign;->a:I

    .line 70
    const-string v0, "https://www.santander.com.br/cartoes"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$CartoesCampaign;->e:Ljava/lang/String;

    .line 71
    const-string v0, "Cartoes"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$CartoesCampaign;->f:Ljava/lang/String;

    .line 72
    return-void
.end method
