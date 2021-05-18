.class public Lbyf;
.super Lbny;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Lbyk;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "LikeDialog"

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lbnl;->Like:Lbnl;

    .line 50
    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    sput v0, Lbyf;->c:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 85
    sget v0, Lbyf;->c:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Landroid/app/Activity;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lbyf;-><init>(Lbpa;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lbyf;-><init>(Lbpa;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lbpa;)V
    .locals 1

    .prologue
    .line 97
    sget v0, Lbyf;->c:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Lbpa;I)V

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lbyf;->b(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    const-string v1, "object_id"

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeContent;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "object_type"

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeContent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-object v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lbyf;->h()Lbnv;

    move-result-object v0

    invoke-static {v0}, Lbnw;->a(Lbnv;)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lbyf;->h()Lbnv;

    move-result-object v0

    invoke-static {v0}, Lbnw;->b(Lbnv;)Z

    move-result v0

    return v0
.end method

.method static synthetic g()Lbnv;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lbyf;->h()Lbnv;

    move-result-object v0

    return-object v0
.end method

.method private static h()Lbnv;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lbym;->LIKE_DIALOG:Lbym;

    return-object v0
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
            "Lbyk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 127
    :goto_0
    new-instance v1, Lbyh;

    invoke-direct {v1, p0, v0}, Lbyh;-><init>(Lbyf;Lbyu;)V

    .line 139
    invoke-virtual {p0}, Lbyf;->a()I

    move-result v0

    .line 138
    invoke-virtual {p1, v0, v1}, Lbnj;->b(ILbnk;)V

    .line 141
    return-void

    .line 118
    :cond_0
    new-instance v0, Lbyg;

    invoke-direct {v0, p0, p2, p2}, Lbyg;-><init>(Lbyf;Lbhl;Lbhl;)V

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
            "Lcom/facebook/share/internal/LikeContent;",
            "Lbyk;",
            ">.bnz;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v1, Lbyi;

    invoke-direct {v1, p0, v2}, Lbyi;-><init>(Lbyf;Lbyg;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lbyl;

    invoke-direct {v1, p0, v2}, Lbyl;-><init>(Lbyf;Lbyg;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    return-object v0
.end method

.method protected d()Lbmr;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lbmr;

    invoke-virtual {p0}, Lbyf;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lbmr;-><init>(I)V

    return-object v0
.end method
