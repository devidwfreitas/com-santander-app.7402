.class Lcom/santander/app/lojaonline/domain/MockLojaCampaign$EsferaCampaign;
.super Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 76
    invoke-direct {p0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;-><init>()V

    .line 77
    iput v1, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$EsferaCampaign;->c:I

    .line 78
    const v0, 0x7f02058b

    invoke-static {v0}, Ljou;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$EsferaCampaign;->g:Landroid/graphics/Bitmap;

    .line 79
    iput v1, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$EsferaCampaign;->a:I

    .line 80
    const-string v0, "http://www.viagens.bonusesfera.com.br/ofertas"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$EsferaCampaign;->e:Ljava/lang/String;

    .line 81
    const-string v0, "Esfera"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$EsferaCampaign;->f:Ljava/lang/String;

    .line 82
    return-void
.end method
