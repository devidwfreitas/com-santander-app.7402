.class Ljop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljoh;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljoi;)V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;

    invoke-direct {v0}, Lcom/santander/app/lojaonline/domain/MockLojaCampaign;-><init>()V

    .line 28
    invoke-interface {p2, v0}, Ljoi;->a(Lcom/santander/app/lojaonline/domain/LojaCampaign;)V

    .line 29
    return-void
.end method

.method public a(Ljava/lang/String;Ljok;)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/santander/app/lojaonline/domain/MockLojaTerm;

    invoke-direct {v0}, Lcom/santander/app/lojaonline/domain/MockLojaTerm;-><init>()V

    .line 34
    invoke-interface {p2, v0}, Ljok;->a(Lcom/santander/app/lojaonline/domain/LojaTerm;)V

    .line 35
    return-void
.end method

.method public a(Ljoj;)V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljnh;

    invoke-direct {v0}, Ljnh;-><init>()V

    .line 22
    invoke-interface {p1, v0}, Ljoj;->a(Ljnc;)V

    .line 23
    return-void
.end method
