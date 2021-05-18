.class Lgmn;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgmm;


# direct methods
.method constructor <init>(Lgmm;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lgmn;->a:Lgmm;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 156
    iget-object v0, p0, Lgmn;->a:Lgmm;

    invoke-static {v0}, Lgmm;->a(Lgmm;)Lcom/santander/app/widget/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 157
    iget-object v0, p0, Lgmn;->a:Lgmm;

    invoke-static {v0, p1}, Lgmm;->a(Lgmm;I)I

    .line 158
    return-void
.end method
