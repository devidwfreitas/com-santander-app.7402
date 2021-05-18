.class public Ljaw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljav;


# instance fields
.field private a:Lizo;

.field private b:Liwp;


# direct methods
.method public constructor <init>(Lizo;Landroid/support/v7/app/AppCompatActivity;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Ljaw;->a:Lizo;

    .line 25
    new-instance v0, Liwq;

    invoke-direct {v0, p0, p2}, Liwq;-><init>(Ljav;Landroid/support/v7/app/AppCompatActivity;)V

    iput-object v0, p0, Ljaw;->b:Liwp;

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ljaw;->b:Liwp;

    invoke-interface {v0}, Liwp;->a()V

    .line 31
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljaw;->a:Lizo;

    invoke-interface {v0, p1}, Lizo;->a(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 45
    check-cast p1, Liuu;

    .line 47
    sget-object v0, Ljax;->a:[I

    invoke-virtual {p1}, Liuu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Ljaw;->a:Lizo;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lizo;->a(I)V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v0, p0, Ljaw;->a:Lizo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lizo;->a(I)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ljaw;->a:Lizo;

    invoke-interface {v0}, Lizo;->a()V

    .line 60
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ljaw;->a:Lizo;

    invoke-interface {v0, p1}, Lizo;->b(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ljaw;->a:Lizo;

    invoke-interface {v0}, Lizo;->b()V

    .line 65
    return-void
.end method
