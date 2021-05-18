.class public Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;
.super Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;->finish()V

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lmsq;

    invoke-direct {v1, p0}, Lmsq;-><init>(Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;->f:Landroid/widget/LinearLayout;

    new-instance v1, Lmsr;

    invoke-direct {v1, p0}, Lmsr;-><init>(Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 41
    return-void
.end method
