.class public Lcbx;
.super Lbny;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<",
        "Lcom/facebook/share/model/GameRequestContent;",
        "Lcca;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "apprequests"

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lbnl;->GameRequest:Lbnl;

    .line 90
    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    sput v0, Lcbx;->c:I

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 149
    sget v0, Lcbx;->c:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Landroid/app/Activity;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcbx;-><init>(Lbpa;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcbx;-><init>(Lbpa;)V

    .line 158
    return-void
.end method

.method private constructor <init>(Lbpa;)V
    .locals 1

    .prologue
    .line 169
    sget v0, Lcbx;->c:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Lbpa;I)V

    .line 170
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/facebook/share/model/GameRequestContent;)V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcbx;

    invoke-direct {v0, p0}, Lcbx;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcbx;->b(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public static a(Landroid/app/Fragment;Lcom/facebook/share/model/GameRequestContent;)V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lbpa;

    invoke-direct {v0, p0}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcbx;->a(Lbpa;Lcom/facebook/share/model/GameRequestContent;)V

    .line 136
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/GameRequestContent;)V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lbpa;

    invoke-direct {v0, p0}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lcbx;->a(Lbpa;Lcom/facebook/share/model/GameRequestContent;)V

    .line 123
    return-void
.end method

.method private static a(Lbpa;Lcom/facebook/share/model/GameRequestContent;)V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcbx;

    invoke-direct {v0, p0}, Lcbx;-><init>(Lbpa;)V

    invoke-virtual {v0, p1}, Lcbx;->b(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected a(Lbnj;Lbhl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbnj;",
            "Lbhl",
            "<",
            "Lcca;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 190
    :goto_0
    invoke-virtual {p0}, Lcbx;->a()I

    move-result v1

    new-instance v2, Lcbz;

    invoke-direct {v2, p0, v0}, Lcbz;-><init>(Lcbx;Lbyu;)V

    .line 189
    invoke-virtual {p1, v1, v2}, Lbnj;->b(ILbnk;)V

    .line 201
    return-void

    .line 176
    :cond_0
    new-instance v0, Lcby;

    invoke-direct {v0, p0, p2, p2}, Lcby;-><init>(Lcbx;Lbhl;Lbhl;)V

    goto :goto_0
.end method

.method protected c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbny",
            "<",
            "Lcom/facebook/share/model/GameRequestContent;",
            "Lcca;",
            ">.bnz;>;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    new-instance v1, Lccb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lccb;-><init>(Lcbx;Lcby;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    return-object v0
.end method

.method protected d()Lbmr;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lbmr;

    invoke-virtual {p0}, Lcbx;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lbmr;-><init>(I)V

    return-object v0
.end method
