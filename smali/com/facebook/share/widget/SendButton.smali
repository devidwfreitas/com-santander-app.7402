.class public final Lcom/facebook/share/widget/SendButton;
.super Lcom/facebook/share/widget/ShareButtonBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 39
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "fb_send_button_create"

    const-string v5, "fb_send_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 44
    const/4 v3, 0x0

    const-string v4, "fb_send_button_create"

    const-string v5, "fb_send_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    .line 49
    const-string v4, "fb_send_button_create"

    const-string v5, "fb_send_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lbnl;->Message:Lbnl;

    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    return v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lbjy;->com_facebook_button_send:I

    return v0
.end method

.method protected g()Lbny;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbny",
            "<",
            "Lcom/facebook/share/model/ShareContent;",
            "Lbwo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lccq;

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->b()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccq;-><init>(Landroid/support/v4/app/Fragment;I)V

    .line 77
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->c()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lccq;

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->c()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccq;-><init>(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Lccq;

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccq;-><init>(Landroid/app/Activity;I)V

    goto :goto_0
.end method