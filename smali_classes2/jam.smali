.class public Ljam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljal;


# instance fields
.field private a:Liyv;

.field private b:Livy;


# direct methods
.method public constructor <init>(Liyv;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Ljam;->a:Liyv;

    .line 27
    new-instance v0, Livz;

    invoke-direct {v0, p0, p2}, Livz;-><init>(Ljal;Landroid/app/Activity;)V

    iput-object v0, p0, Ljam;->b:Livy;

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ljam;->b:Livy;

    invoke-interface {v0}, Livy;->a()V

    .line 33
    return-void
.end method

.method public a(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Ljam;->a:Liyv;

    invoke-interface {v0, p1}, Liyv;->a(Landroid/widget/EditText;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Ljam;->a:Liyv;

    invoke-interface {v0, p1}, Liyv;->b(Landroid/widget/EditText;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljam;->a:Liyv;

    invoke-interface {v0, p1}, Liyv;->a(Ljava/lang/Boolean;)V

    .line 81
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ljam;->b:Livy;

    invoke-interface {v0, p1}, Livy;->a(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ljam;->a:Liyv;

    invoke-interface {v0, p1}, Liyv;->a(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Ljam;->a:Liyv;

    invoke-interface {v0}, Liyv;->c()V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Ljam;->a:Liyv;

    invoke-interface {v0}, Liyv;->b()V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Liuz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Ljam;->a:Liyv;

    invoke-interface {v0, p1}, Liyv;->a(Ljava/util/List;)V

    .line 38
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ljam;->a:Liyv;

    invoke-interface {v0}, Liyv;->a()V

    .line 43
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ljam;->a:Liyv;

    invoke-interface {v0, p1}, Liyv;->a(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Ljam;->b:Livy;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Livy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
