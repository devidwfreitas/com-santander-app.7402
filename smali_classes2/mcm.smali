.class public Lmcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/SliderValue;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/SliderValue;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v0, p2}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->a(Lcom/santander/app/seguros/ui/widgets/SliderValue;I)Ljava/lang/Double;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b(Lcom/santander/app/seguros/ui/widgets/SliderValue;I)Ljava/lang/Double;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->a(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b(Lcom/santander/app/seguros/ui/widgets/SliderValue;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v0, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->c(Lcom/santander/app/seguros/ui/widgets/SliderValue;)V

    .line 78
    iget-object v0, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->d(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Lmcr;

    move-result-object v0

    iget-object v1, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b(Lcom/santander/app/seguros/ui/widgets/SliderValue;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmcr;->b(Ljava/lang/Double;)V

    .line 79
    iget-object v0, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->a(Lcom/santander/app/seguros/ui/widgets/SliderValue;Z)Z

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->e(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->f(Lcom/santander/app/seguros/ui/widgets/SliderValue;)V

    .line 84
    :cond_1
    iget-object v1, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->h(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_2
    iget-object v0, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->a(Lcom/santander/app/seguros/ui/widgets/SliderValue;Z)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    .line 95
    iget-object v0, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->a(Lcom/santander/app/seguros/ui/widgets/SliderValue;I)Ljava/lang/Double;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    rem-double/2addr v2, v6

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b(Lcom/santander/app/seguros/ui/widgets/SliderValue;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v0, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b(Lcom/santander/app/seguros/ui/widgets/SliderValue;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 114
    :goto_1
    iget-object v1, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->a(Lcom/santander/app/seguros/ui/widgets/SliderValue;Ljava/lang/Double;)I

    move-result v1

    .line 116
    const-wide/16 v2, 0x190

    invoke-static {p1, v1, v2, v3}, Lmgb;->a(Landroid/widget/SeekBar;IJ)V

    .line 117
    iget-object v1, p0, Lmcm;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->h(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    rem-double/2addr v2, v6

    sub-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 107
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    rem-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 110
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1
.end method
