.class public Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lglb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 46
    packed-switch v0, :pswitch_data_0

    .line 51
    const v0, 0x7f0e0019

    :goto_0
    return v0

    .line 48
    :pswitch_0
    const v0, 0x7f0e0001

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lglb;)V
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    invoke-interface {p1}, Lglb;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    iput-object p1, p0, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a:Lglb;

    .line 40
    iget-object v1, p0, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a:Lglb;

    invoke-virtual {p0}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lglb;->b(I)V

    .line 41
    iget-object v1, p0, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a:Lglb;

    invoke-interface {v1, v0}, Lglb;->a(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a:Lglb;

    invoke-interface {v0, p1}, Lglb;->b(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a:Lglb;

    invoke-interface {v0}, Lglb;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a:Lglb;

    invoke-interface {v0}, Lglb;->c()I

    move-result v0

    return v0
.end method

.method public setSelectedItemEvent(Lgla;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a:Lglb;

    invoke-interface {v0, p1}, Lglb;->a(Lgla;)V

    .line 65
    return-void
.end method
