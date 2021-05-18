.class public Lbye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcau",
        "<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Lbye;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lbye;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lbye;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lbye;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lbye;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/share/internal/LikeContent;)Lbye;
    .locals 2

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return-object p0

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeContent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbye;->a(Ljava/lang/String;)Lbye;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeContent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbye;->b(Ljava/lang/String;)Lbye;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lbye;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lbye;->a:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 92
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lbye;->a(Lcom/facebook/share/internal/LikeContent;)Lbye;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lbye;->b()Lcom/facebook/share/internal/LikeContent;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lbye;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lbye;->b:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public b()Lcom/facebook/share/internal/LikeContent;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/facebook/share/internal/LikeContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/internal/LikeContent;-><init>(Lbye;Lbyd;)V

    return-object v0
.end method
