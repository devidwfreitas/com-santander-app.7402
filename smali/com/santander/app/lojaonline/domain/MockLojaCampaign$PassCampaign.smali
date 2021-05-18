.class Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PassCampaign;
.super Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 86
    invoke-direct {p0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;-><init>()V

    .line 87
    iput v1, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PassCampaign;->c:I

    .line 88
    const v0, 0x7f02058e

    invoke-static {v0}, Ljou;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PassCampaign;->g:Landroid/graphics/Bitmap;

    .line 89
    iput v1, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PassCampaign;->a:I

    .line 90
    const-string v0, "https://www.santander.com.br/baixeway"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PassCampaign;->e:Ljava/lang/String;

    .line 91
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PassCampaign;->f:Ljava/lang/String;

    .line 92
    return-void
.end method
