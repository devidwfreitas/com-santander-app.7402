.class public Lcom/santander/app/lojaonline/domain/LojaCampaign;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field protected b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "navigationBarText"
    .end annotation
.end field

.field protected c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "titleText"
    .end annotation
.end field

.field protected d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "titleColor"
    .end annotation
.end field

.field protected e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "backgroundColor"
    .end annotation
.end field

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "seasonalCampaigns"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign;->d:Ljava/lang/String;

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Ljou;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign;->e:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljou;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign;->f:Ljava/util/List;

    return-object v0
.end method
