.class public Lcbr;
.super Lbny;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<",
        "Lcom/facebook/share/model/AppGroupCreationContent;",
        "Lcbu;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "game_group_create"

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lbnl;->AppGroupCreate:Lbnl;

    .line 54
    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    sput v0, Lcbr;->c:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    sget v0, Lcbr;->c:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Landroid/app/Activity;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcbr;-><init>(Lbpa;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcbr;-><init>(Lbpa;)V

    .line 148
    return-void
.end method

.method private constructor <init>(Lbpa;)V
    .locals 1

    .prologue
    .line 161
    sget v0, Lcbr;->c:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Lbpa;I)V

    .line 162
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/facebook/share/model/AppGroupCreationContent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcbr;

    invoke-direct {v0, p0}, Lcbr;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcbr;->b(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public static a(Landroid/app/Fragment;Lcom/facebook/share/model/AppGroupCreationContent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lbpa;

    invoke-direct {v0, p0}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcbr;->a(Lbpa;Lcom/facebook/share/model/AppGroupCreationContent;)V

    .line 122
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/AppGroupCreationContent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lbpa;

    invoke-direct {v0, p0}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lcbr;->a(Lbpa;Lcom/facebook/share/model/AppGroupCreationContent;)V

    .line 110
    return-void
.end method

.method private static a(Lbpa;Lcom/facebook/share/model/AppGroupCreationContent;)V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcbr;

    invoke-direct {v0, p0}, Lcbr;-><init>(Lbpa;)V

    invoke-virtual {v0, p1}, Lcbr;->b(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public static e()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
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
            "Lcbu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 177
    :goto_0
    new-instance v1, Lcbt;

    invoke-direct {v1, p0, v0}, Lcbt;-><init>(Lcbr;Lbyu;)V

    .line 188
    invoke-virtual {p0}, Lcbr;->a()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lbnj;->b(ILbnk;)V

    .line 189
    return-void

    .line 168
    :cond_0
    new-instance v0, Lcbs;

    invoke-direct {v0, p0, p2, p2}, Lcbs;-><init>(Lcbr;Lbhl;Lbhl;)V

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
            "Lcom/facebook/share/model/AppGroupCreationContent;",
            "Lcbu;",
            ">.bnz;>;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v1, Lcbv;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcbv;-><init>(Lcbr;Lcbs;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    return-object v0
.end method

.method protected d()Lbmr;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lbmr;

    invoke-virtual {p0}, Lcbr;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lbmr;-><init>(I)V

    return-object v0
.end method
