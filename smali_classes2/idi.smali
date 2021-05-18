.class public Lidi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Licj;
.implements Lidh;


# instance fields
.field private a:Lics;

.field private b:Libo;

.field private c:Licb;

.field private d:Lhzt;

.field private e:Libp;


# direct methods
.method public constructor <init>(Lics;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lidi;->a:Lics;

    .line 31
    new-instance v0, Licc;

    invoke-direct {v0, p0}, Licc;-><init>(Licj;)V

    iput-object v0, p0, Lidi;->c:Licb;

    .line 32
    iget-object v0, p0, Lidi;->c:Licb;

    invoke-interface {p1}, Lics;->a()Libo;

    move-result-object v1

    invoke-interface {v0, v1}, Licb;->a(Libo;)V

    .line 33
    iget-object v0, p0, Lidi;->c:Licb;

    invoke-interface {v0}, Licb;->a()V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libp;

    iput-object v0, p0, Lidi;->e:Libp;

    .line 39
    iget-object v0, p0, Lidi;->e:Libp;

    iget-object v1, p0, Lidi;->b:Libo;

    invoke-static {v0, v1}, Libm;->a(Libp;Libo;)V

    .line 40
    iget-object v0, p0, Lidi;->a:Lics;

    iget-object v1, p0, Lidi;->b:Libo;

    iget-object v2, p0, Lidi;->e:Libp;

    invoke-interface {v0, v1, v2}, Lics;->a(Libo;Libp;)V

    .line 41
    return-void
.end method

.method public a(Libo;)V
    .locals 1

    .prologue
    .line 61
    iput-object p1, p0, Lidi;->b:Libo;

    .line 62
    iget-object v0, p0, Lidi;->a:Lics;

    invoke-interface {v0, p1}, Lics;->a(Libo;)V

    .line 63
    iget-object v0, p0, Lidi;->a:Lics;

    invoke-interface {v0, p1}, Lics;->b(Libo;)V

    .line 64
    return-void
.end method

.method public a(ZLhzt;)V
    .locals 2

    .prologue
    .line 68
    iput-object p2, p0, Lidi;->d:Lhzt;

    .line 70
    if-eqz p1, :cond_0

    iget-object v0, p0, Lidi;->a:Lics;

    invoke-interface {v0}, Lics;->a()Libo;

    move-result-object v0

    invoke-virtual {v0}, Libo;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lidi;->a:Lics;

    iget-object v1, p0, Lidi;->b:Libo;

    invoke-interface {v0, v1}, Lics;->c(Libo;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lidi;->a:Lics;

    invoke-interface {v0}, Lics;->b()V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lidi;->b:Libo;

    invoke-static {v0}, Libm;->a(Libo;)V

    .line 56
    iget-object v0, p0, Lidi;->a:Lics;

    iget-object v1, p0, Lidi;->d:Lhzt;

    iget-object v2, p0, Lidi;->b:Libo;

    invoke-interface {v0, v1, v2}, Lics;->a(Lhzt;Libo;)V

    .line 57
    return-void
.end method
