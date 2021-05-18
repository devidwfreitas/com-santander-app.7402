.class Lgle;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgld;


# direct methods
.method constructor <init>(Lgld;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lgle;->a:Lgld;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 111
    iget-object v0, p0, Lgle;->a:Lgld;

    invoke-static {v0}, Lgld;->a(Lgld;)Lcom/santander/app/widget/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 112
    iget-object v0, p0, Lgle;->a:Lgld;

    invoke-static {v0, p1}, Lgld;->a(Lgld;I)I

    .line 114
    const-string v0, "Cartoes_Home_Acao"

    const-string v1, "SelecionarCartoes"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method
