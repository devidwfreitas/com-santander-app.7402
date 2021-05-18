.class Lglo;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgln;


# direct methods
.method constructor <init>(Lgln;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lglo;->a:Lgln;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 104
    iget-object v0, p0, Lglo;->a:Lgln;

    invoke-static {v0}, Lgln;->a(Lgln;)Lcom/santander/app/widget/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 105
    iget-object v0, p0, Lglo;->a:Lgln;

    invoke-static {v0, p1}, Lgln;->a(Lgln;I)I

    .line 107
    const-string v0, "ContaCorrente_Acao"

    const-string v1, "GirarCarrosselSaldo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method
