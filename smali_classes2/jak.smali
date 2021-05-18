.class public Ljak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljaj;


# instance fields
.field private a:Liyl;

.field private b:Livs;

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Liyl;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x4

    iput v0, p0, Ljak;->c:I

    .line 24
    const-string v0, "*"

    iput-object v0, p0, Ljak;->d:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Ljak;->a:Liyl;

    .line 28
    new-instance v0, Livt;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p0, p1}, Livt;-><init>(Ljaj;Landroid/app/Activity;)V

    iput-object v0, p0, Ljak;->b:Livs;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljak;->a:Liyl;

    invoke-interface {v0}, Liyl;->a()V

    .line 34
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ljak;->a:Liyl;

    invoke-interface {v0, p1}, Liyl;->a(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ljak;->a:Liyl;

    invoke-interface {v0, p1}, Liyl;->b(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lmzv;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Ljak;->a:Liyl;

    invoke-interface {v1, v0}, Liyl;->a(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Ljak;->b:Livs;

    invoke-interface {v0, p2}, Livs;->a(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ljak;->a:Liyl;

    invoke-interface {v0, p1, p2}, Liyl;->a(Ljava/lang/String;Z)V

    .line 39
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ljak;->a:Liyl;

    invoke-interface {v0, p1}, Liyl;->a([Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ljak;->b:Livs;

    invoke-interface {v0}, Livs;->a()V

    .line 44
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ljak;->a:Liyl;

    invoke-interface {v0, p1}, Liyl;->b(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljak;->a:Liyl;

    invoke-interface {v0, p1}, Liyl;->d(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ljak;->a:Liyl;

    invoke-interface {v0}, Liyl;->c()V

    .line 64
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljak;->a:Liyl;

    invoke-interface {v0, p1}, Liyl;->a(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ljak;->a:Liyl;

    invoke-interface {v0}, Liyl;->d()V

    .line 70
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ljak;->b:Livs;

    invoke-interface {v0}, Livs;->b()V

    .line 99
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ljak;->a:Liyl;

    invoke-interface {v0}, Liyl;->e()V

    .line 104
    return-void
.end method
