.class public final Lccv;
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
.field public static final b:Ljava/lang/String; = "share"

.field private static final c:Ljava/lang/String; = "feed"

.field private static final d:Ljava/lang/String; = "share_open_graph"

.field private static final e:I


# instance fields
.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lbnl;->Share:Lbnl;

    .line 97
    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    sput v0, Lccv;->e:I

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 187
    sget v0, Lccv;->e:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Landroid/app/Activity;I)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccv;->f:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccv;->g:Z

    .line 189
    sget v0, Lccv;->e:I

    invoke-static {v0}, Lbze;->a(I)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lbny;-><init>(Landroid/app/Activity;I)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccv;->f:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccv;->g:Z

    .line 219
    invoke-static {p2}, Lbze;->a(I)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lccv;-><init>(Lbpa;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;I)V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lccv;-><init>(Lbpa;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lccv;-><init>(Lbpa;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lccv;-><init>(Lbpa;I)V

    .line 226
    return-void
.end method

.method private constructor <init>(Lbpa;)V
    .locals 1

    .prologue
    .line 210
    sget v0, Lccv;->e:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Lbpa;I)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccv;->f:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccv;->g:Z

    .line 212
    sget v0, Lccv;->e:I

    invoke-static {v0}, Lbze;->a(I)V

    .line 213
    return-void
.end method

.method private constructor <init>(Lbpa;I)V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Lbny;-><init>(Lbpa;I)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccv;->f:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccv;->g:Z

    .line 235
    invoke-static {p2}, Lbze;->a(I)V

    .line 236
    return-void
.end method

.method static synthetic a(Lccv;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lccv;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lccv;

    invoke-direct {v0, p0}, Lccv;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lccv;->b(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public static a(Landroid/app/Fragment;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lbpa;

    invoke-direct {v0, p0}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lccv;->a(Lbpa;Lcom/facebook/share/model/ShareContent;)V

    .line 140
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lccy;)V
    .locals 5

    .prologue
    .line 489
    iget-boolean v0, p0, Lccv;->g:Z

    if-eqz v0, :cond_0

    .line 490
    sget-object p3, Lccy;->AUTOMATIC:Lccy;

    .line 493
    :cond_0
    sget-object v0, Lccw;->a:[I

    invoke-virtual {p3}, Lccy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 504
    const-string v0, "unknown"

    .line 509
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lccv;->g(Ljava/lang/Class;)Lbnv;

    move-result-object v1

    .line 510
    sget-object v2, Lbzb;->SHARE_DIALOG:Lbzb;

    if-ne v1, v2, :cond_1

    .line 511
    const-string v1, "status"

    .line 522
    :goto_1
    invoke-static {p1}, Lbla;->c(Landroid/content/Context;)Lbla;

    move-result-object v2

    .line 523
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 524
    const-string v4, "fb_share_dialog_show"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "fb_share_dialog_content_type"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v0, "fb_share_dialog_show"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 533
    return-void

    .line 495
    :pswitch_0
    const-string v0, "automatic"

    goto :goto_0

    .line 498
    :pswitch_1
    const-string v0, "web"

    goto :goto_0

    .line 501
    :pswitch_2
    const-string v0, "native"

    goto :goto_0

    .line 512
    :cond_1
    sget-object v2, Lbzb;->PHOTOS:Lbzb;

    if-ne v1, v2, :cond_2

    .line 513
    const-string v1, "photo"

    goto :goto_1

    .line 514
    :cond_2
    sget-object v2, Lbzb;->VIDEO:Lbzb;

    if-ne v1, v2, :cond_3

    .line 515
    const-string v1, "video"

    goto :goto_1

    .line 516
    :cond_3
    sget-object v2, Lbyq;->OG_ACTION_DIALOG:Lbyq;

    if-ne v1, v2, :cond_4

    .line 517
    const-string v1, "open_graph"

    goto :goto_1

    .line 519
    :cond_4
    const-string v1, "unknown"

    goto :goto_1

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lbpa;

    invoke-direct {v0, p0}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lccv;->a(Lbpa;Lcom/facebook/share/model/ShareContent;)V

    .line 127
    return-void
.end method

.method private static a(Lbpa;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lccv;

    invoke-direct {v0, p0}, Lccv;-><init>(Lbpa;)V

    invoke-virtual {v0, p1}, Lccv;->b(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method static synthetic a(Lccv;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lccy;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lccv;->a(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lccy;)V

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
    .line 157
    invoke-static {p0}, Lccv;->f(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lccv;->e(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lccv;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lccv;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Lccv;->e(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lccv;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lccv;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/Class;)Lbnv;
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Lccv;->g(Ljava/lang/Class;)Lbnv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Lccv;->f(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static e(Ljava/lang/Class;)Z
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
    .line 161
    invoke-static {p0}, Lccv;->g(Ljava/lang/Class;)Lbnv;

    move-result-object v0

    .line 163
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

.method private static f(Ljava/lang/Class;)Z
    .locals 4
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->k()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 177
    :goto_0
    const-class v3, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lcom/facebook/share/model/ShareOpenGraphContent;

    .line 178
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lcom/facebook/share/model/SharePhotoContent;

    .line 179
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    .line 177
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 175
    goto :goto_0
.end method

.method private static g(Ljava/lang/Class;)Lbnv;
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
    .line 473
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Lbzb;->SHARE_DIALOG:Lbzb;

    .line 484
    :goto_0
    return-object v0

    .line 475
    :cond_0
    const-class v0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    sget-object v0, Lbzb;->PHOTOS:Lbzb;

    goto :goto_0

    .line 477
    :cond_1
    const-class v0, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    sget-object v0, Lbzb;->VIDEO:Lbzb;

    goto :goto_0

    .line 479
    :cond_2
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    sget-object v0, Lbyq;->OG_ACTION_DIALOG:Lbyq;

    goto :goto_0

    .line 481
    :cond_3
    const-class v0, Lcom/facebook/share/model/ShareMediaContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 482
    sget-object v0, Lbzb;->MULTIMEDIA:Lbzb;

    goto :goto_0

    .line 484
    :cond_4
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
    .line 242
    .line 243
    invoke-virtual {p0}, Lccv;->a()I

    move-result v0

    .line 242
    invoke-static {v0, p1, p2}, Lbze;->a(ILbhd;Lbhl;)V

    .line 244
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 253
    iput-boolean p1, p0, Lccv;->f:Z

    .line 254
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareContent;Lccy;)Z
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lccy;->AUTOMATIC:Lccy;

    if-ne p2, v0, :cond_0

    sget-object p2, Lccv;->a:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lccv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/facebook/share/model/ShareContent;Lccy;)V
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lccy;->AUTOMATIC:Lccy;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lccv;->g:Z

    .line 273
    iget-boolean v0, p0, Lccv;->g:Z

    if-eqz v0, :cond_0

    sget-object p2, Lccv;->a:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lccv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    return-void

    .line 271
    :cond_1
    const/4 v0, 0x0

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
            "Lcom/facebook/share/model/ShareContent;",
            "Lbwo;",
            ">.bnz;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    new-instance v1, Lccz;

    invoke-direct {v1, p0, v2}, Lccz;-><init>(Lccv;Lccw;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v1, Lccx;

    invoke-direct {v1, p0, v2}, Lccx;-><init>(Lccv;Lccw;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v1, Lcdb;

    invoke-direct {v1, p0, v2}, Lcdb;-><init>(Lccv;Lccw;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    return-object v0
.end method

.method protected d()Lbmr;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lbmr;

    invoke-virtual {p0}, Lccv;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lbmr;-><init>(I)V

    return-object v0
.end method

.method public d_()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lccv;->f:Z

    return v0
.end method
