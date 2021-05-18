.class public final Lcay;
.super Lcal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcal",
        "<",
        "Lcom/facebook/share/model/ShareOpenGraphContent;",
        "Lcay;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/share/model/ShareOpenGraphAction;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcal;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcay;)Lcom/facebook/share/model/ShareOpenGraphAction;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcay;->a:Lcom/facebook/share/model/ShareOpenGraphAction;

    return-object v0
.end method

.method public static synthetic b(Lcay;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcay;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/share/model/ShareContent;)Lcal;
    .locals 1

    .prologue
    .line 97
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {p0, p1}, Lcay;->a(Lcom/facebook/share/model/ShareOpenGraphContent;)Lcay;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 97
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {p0, p1}, Lcay;->a(Lcom/facebook/share/model/ShareOpenGraphContent;)Lcay;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcay;
    .locals 1
    .param p1    # Lcom/facebook/share/model/ShareOpenGraphAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 109
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 113
    :goto_0
    iput-object v0, p0, Lcay;->a:Lcom/facebook/share/model/ShareOpenGraphAction;

    .line 114
    return-object p0

    .line 109
    :cond_0
    new-instance v0, Lcaw;

    invoke-direct {v0}, Lcaw;-><init>()V

    .line 113
    invoke-virtual {v0, p1}, Lcaw;->a(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcaw;->b()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/share/model/ShareOpenGraphContent;)Lcay;
    .locals 2

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-object p0

    .line 141
    :cond_0
    invoke-super {p0, p1}, Lcal;->a(Lcom/facebook/share/model/ShareContent;)Lcal;

    move-result-object v0

    check-cast v0, Lcay;

    .line 142
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->a()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcay;->a(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcay;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcay;->a(Ljava/lang/String;)Lcay;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcay;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    iput-object p1, p0, Lcay;->b:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcay;->b()Lcom/facebook/share/model/ShareOpenGraphContent;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/facebook/share/model/ShareOpenGraphContent;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareOpenGraphContent;-><init>(Lcay;Lcax;)V

    return-object v0
.end method
