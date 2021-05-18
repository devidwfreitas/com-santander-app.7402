.class public final Lccq;
.super Lbny;
.source "SourceFile"

# interfaces
.implements Lbwn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lbwo;",
        ">;",
        "Lbwn;"
    }
.end annotation


# static fields
.field private static final b:I


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lbnl;->Message:Lbnl;

    .line 54
    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    sput v0, Lccq;->b:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 122
    sget v0, Lccq;->b:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Landroid/app/Activity;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccq;->c:Z

    .line 124
    sget v0, Lccq;->b:I

    invoke-static {v0}, Lbze;->a(I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lbny;-><init>(Landroid/app/Activity;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccq;->c:Z

    .line 154
    invoke-static {p2}, Lbze;->a(I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lccq;-><init>(Lbpa;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;I)V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lccq;-><init>(Lbpa;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lccq;-><init>(Lbpa;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lccq;-><init>(Lbpa;I)V

    .line 161
    return-void
.end method

.method private constructor <init>(Lbpa;)V
    .locals 1

    .prologue
    .line 145
    sget v0, Lccq;->b:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Lbpa;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccq;->c:Z

    .line 147
    sget v0, Lccq;->b:I

    invoke-static {v0}, Lbze;->a(I)V

    .line 148
    return-void
.end method

.method private constructor <init>(Lbpa;I)V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lbny;-><init>(Lbpa;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccq;->c:Z

    .line 170
    invoke-static {p2}, Lbze;->a(I)V

    .line 171
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lccq;

    invoke-direct {v0, p0}, Lccq;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lccq;->b(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static a(Landroid/app/Fragment;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lbpa;

    invoke-direct {v0, p0}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lccq;->a(Lbpa;Lcom/facebook/share/model/ShareContent;)V

    .line 95
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lbpa;

    invoke-direct {v0, p0}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lccq;->a(Lbpa;Lcom/facebook/share/model/ShareContent;)V

    .line 82
    return-void
.end method

.method private static a(Lbpa;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lccq;

    invoke-direct {v0, p0}, Lccq;-><init>(Lbpa;)V

    invoke-virtual {v0, p1}, Lccq;->b(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p0}, Lccq;->c(Ljava/lang/Class;)Lbnv;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    invoke-static {v0}, Lbnw;->a(Lbnv;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/Class;)Lbnv;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lccq;->c(Ljava/lang/Class;)Lbnv;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/Class;)Lbnv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)",
            "Lbnv;"
        }
    .end annotation

    .prologue
    .line 243
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lbyo;->MESSAGE_DIALOG:Lbyo;

    .line 252
    :goto_0
    return-object v0

    .line 245
    :cond_0
    const-class v0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    sget-object v0, Lbyo;->PHOTOS:Lbyo;

    goto :goto_0

    .line 247
    :cond_1
    const-class v0, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    sget-object v0, Lbyo;->VIDEO:Lbyo;

    goto :goto_0

    .line 249
    :cond_2
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    sget-object v0, Lbyt;->OG_MESSAGE_DIALOG:Lbyt;

    goto :goto_0

    .line 252
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lbnj;Lbhl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbnj;",
            "Lbhl",
            "<",
            "Lbwo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lccq;->a()I

    move-result v0

    invoke-static {v0, p1, p2}, Lbze;->a(ILbhd;Lbhl;)V

    .line 178
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 187
    iput-boolean p1, p0, Lccq;->c:Z

    .line 188
    return-void
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
            "Lcom/facebook/share/model/ShareContent;",
            "Lbwo;",
            ">.bnz;>;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    new-instance v1, Lccs;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lccs;-><init>(Lccq;Lccr;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    return-object v0
.end method

.method protected d()Lbmr;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Lbmr;

    invoke-virtual {p0}, Lccq;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lbmr;-><init>(I)V

    return-object v0
.end method

.method public d_()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lccq;->c:Z

    return v0
.end method
