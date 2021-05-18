.class Llcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Llcn;


# direct methods
.method constructor <init>(Llcn;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Llcq;->a:Llcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Llcq;->a:Llcn;

    invoke-static {v0, p1}, Llcn;->a(Llcn;I)I

    .line 164
    iget-object v0, p0, Llcq;->a:Llcn;

    invoke-static {v0, p1}, Llcn;->b(Llcn;I)V

    .line 165
    return-void
.end method
