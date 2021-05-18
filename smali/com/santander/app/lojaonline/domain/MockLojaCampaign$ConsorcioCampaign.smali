.class Lcom/santander/app/lojaonline/domain/MockLojaCampaign$ConsorcioCampaign;
.super Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 106
    invoke-direct {p0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;-><init>()V

    .line 107
    iput v1, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$ConsorcioCampaign;->c:I

    .line 108
    const v0, 0x7f020589

    invoke-static {v0}, Ljou;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$ConsorcioCampaign;->g:Landroid/graphics/Bitmap;

    .line 109
    iput v1, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$ConsorcioCampaign;->a:I

    .line 110
    const-string v0, "http://www.intergrall.com.br/callcenter/santander_consorcio_mailing.html?mku=MKUvGU1BOSK8dJy90ehNlIr47U="

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$ConsorcioCampaign;->e:Ljava/lang/String;

    .line 111
    const-string v0, "Consorcio"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$ConsorcioCampaign;->f:Ljava/lang/String;

    .line 112
    return-void
.end method
