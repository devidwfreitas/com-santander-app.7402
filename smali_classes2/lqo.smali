.class public Llqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Llqo;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 102
    :pswitch_0
    const-string v0, "Seguros_Sinistro_MeusSinistros_Acao"

    const-string v1, "SinistrosAbertos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :pswitch_1
    const-string v0, "Seguros_Sinistro_MeusSinistros_Acao"

    const-string v1, "SinistrosConcluidos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
