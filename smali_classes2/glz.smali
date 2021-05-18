.class Lglz;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgly;


# direct methods
.method constructor <init>(Lgly;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lglz;->a:Lgly;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 103
    iget-object v0, p0, Lglz;->a:Lgly;

    invoke-static {v0}, Lgly;->a(Lgly;)Lcom/santander/app/widget/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 104
    iget-object v0, p0, Lglz;->a:Lgly;

    invoke-static {v0, p1}, Lgly;->a(Lgly;I)I

    .line 105
    return-void
.end method
