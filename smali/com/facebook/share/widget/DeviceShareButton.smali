.class public final Lcom/facebook/share/widget/DeviceShareButton;
.super Lcom/facebook/FacebookButtonBase;
.source "SourceFile"


# instance fields
.field private a:Lcom/facebook/share/model/ShareContent;

.field private b:I

.field private c:Z

.field private d:Lbvv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/share/widget/DeviceShareButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/share/widget/DeviceShareButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 67
    const-string v5, "fb_device_share_button_create"

    const-string v6, "fb_device_share_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 44
    iput v4, p0, Lcom/facebook/share/widget/DeviceShareButton;->b:I

    .line 45
    iput-boolean v4, p0, Lcom/facebook/share/widget/DeviceShareButton;->c:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->d:Lbvv;

    .line 74
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    iput v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->b:I

    .line 75
    invoke-direct {p0, v4}, Lcom/facebook/share/widget/DeviceShareButton;->a(Z)V

    .line 76
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->a()I

    move-result v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/facebook/share/widget/DeviceShareButton;)Lbvv;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->j()Lbvv;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 180
    invoke-static {p1}, Lbhv;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be within the range reserved by the Facebook SDK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iput p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->b:I

    .line 185
    return-void
.end method

.method public static synthetic a(Lcom/facebook/share/widget/DeviceShareButton;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->setEnabled(Z)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->c:Z

    .line 177
    return-void
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lbvv;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lbvv;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->g()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbvv;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private j()Lbvv;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->d:Lbvv;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->d:Lbvv;

    .line 202
    :goto_0
    return-object v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Lbvv;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->b()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lbvv;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->d:Lbvv;

    .line 202
    :goto_1
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->d:Lbvv;

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->c()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 198
    new-instance v0, Lbvv;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->c()Landroid/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lbvv;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->d:Lbvv;

    goto :goto_1

    .line 200
    :cond_2
    new-instance v0, Lbvv;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lbvv;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->d:Lbvv;

    goto :goto_1
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lbnl;->Share:Lbnl;

    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    return v0
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 151
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->h()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/widget/DeviceShareButton;->a(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method public a(Lbhd;Lbhl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhd;",
            "Lbhl",
            "<",
            "Lbvx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->j()Lbvv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbvv;->a(Lbhd;Lbhl;)V

    .line 121
    return-void
.end method

.method public a(Lbhd;Lbhl;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhd;",
            "Lbhl",
            "<",
            "Lbvx;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0, p3}, Lcom/facebook/share/widget/DeviceShareButton;->a(I)V

    .line 141
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->j()Lbvv;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbvv;->a(Lbhd;Lbhl;I)V

    .line 142
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->b:I

    return v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 156
    sget v0, Lbjy;->com_facebook_button_share:I

    return v0
.end method

.method public g()Lcom/facebook/share/model/ShareContent;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->a:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method protected h()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcbw;

    invoke-direct {v0, p0}, Lcbw;-><init>(Lcom/facebook/share/widget/DeviceShareButton;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->setEnabled(Z)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->c:Z

    .line 101
    return-void
.end method

.method public setShareContent(Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->a:Lcom/facebook/share/model/ShareContent;

    .line 92
    iget-boolean v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->c:Z

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->i()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/DeviceShareButton;->a(Z)V

    .line 95
    :cond_0
    return-void
.end method
