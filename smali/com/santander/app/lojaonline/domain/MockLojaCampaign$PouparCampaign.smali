.class Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PouparCampaign;
.super Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 116
    invoke-direct {p0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;-><init>()V

    .line 117
    iput v1, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PouparCampaign;->c:I

    .line 118
    const v0, 0x7f02058f

    invoke-static {v0}, Ljou;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PouparCampaign;->g:Landroid/graphics/Bitmap;

    .line 119
    iput v1, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PouparCampaign;->a:I

    .line 120
    const-string v0, "https://www.santander.com.br/br/campanhas/pouparpraganhar"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PouparCampaign;->e:Ljava/lang/String;

    .line 121
    const-string v0, "PouparParaGanhar"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PouparCampaign;->f:Ljava/lang/String;

    .line 122
    return-void
.end method
