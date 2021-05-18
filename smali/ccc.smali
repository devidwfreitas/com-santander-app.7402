.class public Lccc;
.super Lbny;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<",
        "Ljava/lang/String;",
        "Lccf;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "game_group_join"

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lbnl;->AppGroupJoin:Lbnl;

    .line 52
    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    sput v0, Lccc;->c:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    sget v0, Lccc;->c:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Landroid/app/Activity;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lccc;-><init>(Lbpa;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lccc;-><init>(Lbpa;)V

    .line 146
    return-void
.end method

.method private constructor <init>(Lbpa;)V
    .locals 1

    .prologue
    .line 159
    sget v0, Lccc;->c:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Lbpa;I)V

    .line 160
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lccc;

    invoke-direct {v0, p0}, Lccc;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lccc;->b(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public static a(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lbpa;

    invoke-direct {v0, p0}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lccc;->a(Lbpa;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lbpa;

    invoke-direct {v0, p0}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lccc;->a(Lbpa;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private static a(Lbpa;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lccc;

    invoke-direct {v0, p0}, Lccc;-><init>(Lbpa;)V

    invoke-virtual {v0, p1}, Lccc;->b(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public static e()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
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
            "Lccf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 175
    :goto_0
    new-instance v1, Lcce;

    invoke-direct {v1, p0, v0}, Lcce;-><init>(Lccc;Lbyu;)V

    .line 186
    invoke-virtual {p0}, Lccc;->a()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lbnj;->b(ILbnk;)V

    .line 187
    return-void

    .line 166
    :cond_0
    new-instance v0, Lccd;

    invoke-direct {v0, p0, p2, p2}, Lccd;-><init>(Lccc;Lbhl;Lbhl;)V

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
            "Ljava/lang/String;",
            "Lccf;",
            ">.bnz;>;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    new-instance v1, Lccg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lccg;-><init>(Lccc;Lccd;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-object v0
.end method

.method protected d()Lbmr;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lbmr;

    invoke-virtual {p0}, Lccc;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lbmr;-><init>(I)V

    return-object v0
.end method
