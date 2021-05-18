.class public Lcom/santander/app/lojaonline/domain/MockLojaCampaign;
.super Lcom/santander/app/lojaonline/domain/LojaCampaign;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/santander/app/lojaonline/domain/LojaCampaign;-><init>()V

    .line 17
    const-string v0, "180319"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;->a:Ljava/lang/String;

    .line 18
    const-string v0, "Destaques do M\u00eas"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;->b:Ljava/lang/String;

    .line 19
    const-string v0, "Conhe\u00e7a nossas solu\u00e7\u00f5es para o seu dia a dia:"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;->c:Ljava/lang/String;

    .line 20
    const-string v0, "#000000"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;->d:Ljava/lang/String;

    .line 21
    const-string v0, "#ffffff"

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;->e:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;->f:Ljava/util/List;

    .line 23
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;->f:Ljava/util/List;

    new-instance v1, Ljng;

    invoke-direct {v1}, Ljng;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;->f:Ljava/util/List;

    new-instance v1, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$CartoesCampaign;

    invoke-direct {v1}, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$CartoesCampaign;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;->f:Ljava/util/List;

    new-instance v1, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$EsferaCampaign;

    invoke-direct {v1}, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$EsferaCampaign;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;->f:Ljava/util/List;

    new-instance v1, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PassCampaign;

    invoke-direct {v1}, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PassCampaign;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;->f:Ljava/util/List;

    new-instance v1, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$SegurosCampaign;

    invoke-direct {v1}, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$SegurosCampaign;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;->f:Ljava/util/List;

    new-instance v1, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$ConsorcioCampaign;

    invoke-direct {v1}, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$ConsorcioCampaign;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;->f:Ljava/util/List;

    new-instance v1, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PouparCampaign;

    invoke-direct {v1}, Lcom/santander/app/lojaonline/domain/MockLojaCampaign$PouparCampaign;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method
