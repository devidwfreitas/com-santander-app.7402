.class public abstract Lcom/facebook/share/widget/ShareButtonBase;
.super Lcom/facebook/FacebookButtonBase;
.source "SourceFile"


# instance fields
.field private a:Lcom/facebook/share/model/ShareContent;

.field private b:I

.field private c:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 41
    iput v4, p0, Lcom/facebook/share/widget/ShareButtonBase;->b:I

    .line 42
    iput-boolean v4, p0, Lcom/facebook/share/widget/ShareButtonBase;->c:Z

    .line 57
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    iput v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->b:I

    .line 58
    invoke-direct {p0, v4}, Lcom/facebook/share/widget/ShareButtonBase;->a(Z)V

    .line 59
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->a()I

    move-result v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/facebook/share/widget/ShareButtonBase;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareButtonBase;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareButtonBase;->setEnabled(Z)V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->c:Z

    .line 178
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    .prologue
    .line 105
    invoke-static {p1}, Lbhv;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
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

    .line 109
    :cond_0
    iput p1, p0, Lcom/facebook/share/widget/ShareButtonBase;->b:I

    .line 110
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 156
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->j()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/widget/ShareButtonBase;->a(Landroid/view/View$OnClickListener;)V

    .line 157
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
            "Lbwo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->d()I

    move-result v0

    invoke-static {v0, p1, p2}, Lbze;->a(ILbhd;Lbhl;)V

    .line 126
    return-void
.end method

.method public a(Lbhd;Lbhl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhd;",
            "Lbhl",
            "<",
            "Lbwo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0, p3}, Lcom/facebook/share/widget/ShareButtonBase;->a(I)V

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/ShareButtonBase;->a(Lbhd;Lbhl;)V

    .line 147
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->b:I

    return v0
.end method

.method public abstract g()Lbny;
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
.end method

.method public h()Lcom/facebook/share/model/ShareContent;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->a:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method protected i()Z
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->g()Lbny;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->h()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbny;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected j()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lccu;

    invoke-direct {v0, p0}, Lccu;-><init>(Lcom/facebook/share/widget/ShareButtonBase;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->setEnabled(Z)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->c:Z

    .line 84
    return-void
.end method

.method public setShareContent(Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 74
    iput-object p1, p0, Lcom/facebook/share/widget/ShareButtonBase;->a:Lcom/facebook/share/model/ShareContent;

    .line 75
    iget-boolean v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->c:Z

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->i()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/ShareButtonBase;->a(Z)V

    .line 78
    :cond_0
    return-void
.end method
