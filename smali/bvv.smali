.class public Lbvv;
.super Lbny;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lbvx;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lbnl;->DeviceShare:Lbnl;

    .line 56
    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    sput v0, Lbvv;->b:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 62
    sget v0, Lbvv;->b:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Landroid/app/Activity;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    sget v1, Lbvv;->b:I

    invoke-direct {p0, v0, v1}, Lbny;-><init>(Lbpa;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    sget v1, Lbvv;->b:I

    invoke-direct {p0, v0, v1}, Lbny;-><init>(Lbpa;I)V

    .line 77
    return-void
.end method


# virtual methods
.method protected a(Lbnj;Lbhl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbnj;",
            "Lbhl",
            "<",
            "Lbvx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .line 119
    invoke-virtual {p0}, Lbvv;->a()I

    move-result v0

    new-instance v1, Lbvw;

    invoke-direct {v1, p0, p2}, Lbvw;-><init>(Lbvv;Lbhl;)V

    .line 118
    invoke-virtual {p1, v0, v1}, Lbnj;->b(ILbnk;)V

    .line 132
    return-void
.end method

.method protected a(Lcom/facebook/share/model/ShareContent;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 81
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lbvv;->a(Lcom/facebook/share/model/ShareContent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/facebook/share/model/ShareContent;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Lbhp;

    const-string v1, "Must provide non-null content to share"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lbhp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " only supports ShareLinkContent or ShareOpenGraphContent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 98
    const-string v1, "DeviceShareDialogFragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0}, Lbvv;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lbvv;->a(Landroid/content/Intent;I)V

    .line 101
    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lbvv;->b(Lcom/facebook/share/model/ShareContent;Ljava/lang/Object;)V

    return-void
.end method

.method protected c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbny",
            "<",
            "Lcom/facebook/share/model/ShareContent;",
            "Lbvx;",
            ">.bnz;>;"
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method protected d()Lbmr;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method
