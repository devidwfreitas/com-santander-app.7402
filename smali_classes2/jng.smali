.class public Ljng;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;

    invoke-direct {v0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;-><init>()V

    .line 35
    iput v2, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->c:I

    .line 36
    const v1, 0x7f020586

    .line 37
    invoke-static {v1}, Ljou;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->g:Landroid/graphics/Bitmap;

    .line 38
    iput v2, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->a:I

    .line 39
    const-string v1, "santanderpf://deeplink?tela=investimentosFundos"

    iput-object v1, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->e:Ljava/lang/String;

    .line 40
    const-string v1, "Fundos"

    iput-object v1, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->f:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v0}, Ljng;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;

    invoke-direct {v0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;-><init>()V

    .line 44
    iput v2, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->c:I

    .line 45
    const v1, 0x7f020585

    .line 46
    invoke-static {v1}, Ljou;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->g:Landroid/graphics/Bitmap;

    .line 47
    iput v2, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->a:I

    .line 48
    const-string v1, "santanderpf://deeplink?tela=investimentosCDB"

    iput-object v1, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->e:Ljava/lang/String;

    .line 49
    const-string v1, "CDB"

    iput-object v1, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->f:Ljava/lang/String;

    .line 50
    invoke-virtual {p0, v0}, Ljng;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;

    invoke-direct {v0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;-><init>()V

    .line 53
    iput v2, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->c:I

    .line 54
    const v1, 0x7f020587

    .line 55
    invoke-static {v1}, Ljou;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->g:Landroid/graphics/Bitmap;

    .line 56
    const/4 v1, 0x3

    iput v1, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->a:I

    .line 57
    const-string v1, "https://santander.custhelp.com/app/chat/chat_santander/p/94"

    iput-object v1, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->e:Ljava/lang/String;

    .line 58
    const-string v1, "Previdencia"

    iput-object v1, v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->f:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, v0}, Ljng;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 62
    return-void
.end method
