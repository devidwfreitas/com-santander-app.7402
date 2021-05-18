.class public Lgul;
.super Lguk;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "F"

    invoke-direct {p0, v0}, Lguk;-><init>(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgul;->a:Z

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lgul;->b:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {p1}, Lnai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-boolean v0, p0, Lgul;->a:Z

    if-nez v0, :cond_0

    .line 56
    invoke-super {p0, p1}, Lguk;->a(Landroid/text/Editable;)V

    .line 74
    :goto_0
    return-void

    .line 58
    :cond_0
    iput-boolean v2, p0, Lgul;->a:Z

    .line 70
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lgul;->b:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 72
    invoke-super {p0, p1}, Lguk;->a(Landroid/text/Editable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lgul;->a:Z

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lgul;->a:Z

    if-eqz v0, :cond_0

    if-lez p4, :cond_0

    .line 49
    add-int v0, p2, p4

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgul;->b:Ljava/lang/String;

    .line 51
    :cond_0
    return-void
.end method
