.class public Lmcn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/SliderValue;)V
    .locals 1

    .prologue
    .line 126
    iput-object p1, p0, Lmcn;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lmcn;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lmcn;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    .line 175
    :cond_0
    iput-object p1, p0, Lmcn;->b:Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x64

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 136
    iget-object v0, p0, Lmcn;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->h(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lmcn;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-static {v0}, Lmhj;->t(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lmcn;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b(Lcom/santander/app/seguros/ui/widgets/SliderValue;Ljava/lang/Double;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v1, p0, Lmcn;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b(Lcom/santander/app/seguros/ui/widgets/SliderValue;)D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    .line 146
    iget-object v0, p0, Lmcn;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->h(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lmcn;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b(Lcom/santander/app/seguros/ui/widgets/SliderValue;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lmco;

    invoke-direct {v1, p0}, Lmco;-><init>(Lmcn;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Lmcn;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 155
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lmcp;

    invoke-direct {v2, p0, v0}, Lmcp;-><init>(Lmcn;Ljava/lang/Double;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v1, p0, Lmcn;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->i(Lcom/santander/app/seguros/ui/widgets/SliderValue;)D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 164
    iget-object v1, p0, Lmcn;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->d(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Lmcr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmcr;->b(Ljava/lang/Double;)V

    .line 165
    iget-object v1, p0, Lmcn;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->a(Lcom/santander/app/seguros/ui/widgets/SliderValue;D)D

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method
