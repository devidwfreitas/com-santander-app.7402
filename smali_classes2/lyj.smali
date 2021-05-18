.class public Llyj;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "title-key"

.field public static final b:Ljava/lang/String; = "image-base64-key"

.field public static final c:Ljava/lang/String; = "image-res-key"

.field public static final d:Ljava/lang/String; = "desc-key"


# instance fields
.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Llyj;->i:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Llyj;->j:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Llyj;->k:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Llyj;->l:I

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Llyj;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    const-string v1, "title-key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "image-res-key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string v1, "desc-key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v1, Llyj;

    invoke-direct {v1}, Llyj;-><init>()V

    .line 56
    invoke-virtual {v1, v0}, Llyj;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Llyj;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v1, "title-key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "image-base64-key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "desc-key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Llyj;

    invoke-direct {v1}, Llyj;-><init>()V

    .line 46
    invoke-virtual {v1, v0}, Llyj;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v1
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 110
    iget-object v0, p0, Llyj;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Llyj;->e:Landroid/widget/TextView;

    iget-object v1, p0, Llyj;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_0
    :try_start_0
    iget-object v0, p0, Llyj;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Llyj;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Llyj;->j:Ljava/lang/String;

    invoke-static {v1}, Lmhj;->o(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_1
    iget-object v0, p0, Llyj;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    iget-object v0, p0, Llyj;->g:Landroid/widget/TextView;

    iget-object v1, p0, Llyj;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_2
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Llyj;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 118
    :cond_1
    :try_start_1
    iget v0, p0, Llyj;->l:I

    if-lez v0, :cond_2

    .line 119
    iget-object v0, p0, Llyj;->f:Landroid/widget/ImageView;

    iget v1, p0, Llyj;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    iget-object v0, p0, Llyj;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 121
    :cond_2
    :try_start_2
    iget-object v0, p0, Llyj;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 130
    :cond_3
    iget-object v0, p0, Llyj;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 135
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llyj;->e:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f100796

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llyj;->f:Landroid/widget/ImageView;

    .line 137
    const v0, 0x7f10038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llyj;->g:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f100741

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llyj;->h:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Llyj;->h:Landroid/widget/Button;

    new-instance v1, Llyk;

    invoke-direct {v1, p0}, Llyk;-><init>(Llyj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyj;->i:Ljava/lang/String;

    .line 83
    :cond_0
    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "image-base64-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "image-base64-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "image-base64-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyj;->j:Ljava/lang/String;

    .line 89
    :cond_1
    :goto_0
    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "desc-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "desc-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "desc-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyj;->k:Ljava/lang/String;

    .line 93
    :cond_2
    return-void

    .line 85
    :cond_3
    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "image-res-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Llyj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "image-res-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Llyj;->l:I

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 70
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 71
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 72
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 103
    const v0, 0x7f040191

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 104
    invoke-direct {p0, v0}, Llyj;->a(Landroid/view/View;)V

    .line 105
    invoke-direct {p0}, Llyj;->a()V

    .line 106
    return-object v0
.end method
