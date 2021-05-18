.class public Lktq;
.super Lktr;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lktr;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lktq;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lktq;->b:I

    .line 48
    return-void
.end method

.method public a(Landroid/text/Spannable;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lktq;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lktq;->a:Ljava/util/List;

    .line 54
    :cond_0
    iget-object v0, p0, Lktq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lktq;->a(Landroid/text/Spannable;)V

    .line 61
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/text/Spannable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lktq;->a:Ljava/util/List;

    .line 40
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lktq;->c:Z

    .line 28
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lktq;->c:Z

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lktq;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lktq;->b:I

    return v0
.end method
