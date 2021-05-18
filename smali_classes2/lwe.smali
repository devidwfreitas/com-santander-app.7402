.class public Llwe;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lmin;


# static fields
.field public static final a:Ljava/lang/String; = "verse_key"


# instance fields
.field b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Z)Llwe;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    const-string v1, "verse_key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    new-instance v1, Llwe;

    invoke-direct {v1}, Llwe;-><init>()V

    .line 45
    invoke-virtual {v1, v0}, Llwe;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llwe;->c:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f1009a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/DocumentView;

    iput-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    .line 116
    return-void
.end method

.method private b()V
    .locals 10

    .prologue
    const v5, 0x7f0e00b3

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 82
    iget-object v0, p0, Llwe;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a()Lmio;

    move-result-object v0

    .line 84
    iget-boolean v1, p0, Llwe;->e:Z

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Llwe;->c:Landroid/widget/TextView;

    iget-object v2, p0, Llwe;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    const-string v3, "fonts/opensans_semibold.ttf"

    invoke-virtual {p0}, Llwe;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 86
    invoke-virtual {p0}, Llwe;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0908c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Llwe;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090bb9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 85
    invoke-static {v2, v3, v4, v5, v6}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v0}, Lmio;->i()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    .line 89
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 111
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Lmio;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    invoke-virtual {v0}, Lmio;->b()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->setTextCenter(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {p0}, Llwe;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->setTextCenter(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v1, p0, Llwe;->c:Landroid/widget/TextView;

    iget-object v2, p0, Llwe;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    const-string v3, "fonts/opensans_semibold.ttf"

    invoke-virtual {p0}, Llwe;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 98
    invoke-virtual {p0}, Llwe;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0908ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Llwe;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0904e1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 97
    invoke-static {v2, v3, v4, v5, v6}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v0}, Lmio;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->setPhoto(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {v0}, Lmio;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 105
    invoke-virtual {v0}, Lmio;->c()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->setTextCenter(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_4
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {p0}, Llwe;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090849

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->setTextCenter(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->b()V

    .line 121
    iget-boolean v0, p0, Llwe;->e:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {p0}, Llwe;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->setTextCenter(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {p0}, Llwe;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090849

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->setTextCenter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 149
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->setTextCenter(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->a()V

    .line 132
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->setTextCenter(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->a()V

    .line 138
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->setTextCenter(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Llwe;->d:Lcom/santander/app/seguros/ui/widgets/DocumentView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->a()V

    .line 144
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 57
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    iput-object p1, p0, Llwe;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    .line 60
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Llwe;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llwe;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "verse_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Llwe;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "verse_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llwe;->e:Z

    .line 69
    :cond_0
    return-void
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
    .line 74
    const v0, 0x7f0401ec

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Llwe;->a(Landroid/view/View;)V

    .line 76
    invoke-direct {p0}, Llwe;->b()V

    .line 77
    return-object v0
.end method
