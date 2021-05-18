.class public Llbl;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:I = 0xb26e

.field private static final b:Ljava/lang/String; = "VIEW_TYPE_KEY"

.field private static final c:Ljava/lang/String; = "ASSISTANCE_TYPE_KEY"

.field private static final d:Ljava/lang/String; = "PROTOCOL_NUMBER_KEY"

.field private static final e:I = 0x0

.field private static final f:I = 0x1


# instance fields
.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/Button;

.field private n:Llbo;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Llbl;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Llbl;

    invoke-direct {v0}, Llbl;-><init>()V

    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string v2, "VIEW_TYPE_KEY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    invoke-static {v1, p0, p1}, Llbl;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1}, Llbl;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-object v0
.end method

.method static synthetic a(Llbl;)Llbo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Llbl;->n:Llbo;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Llbl;->g:Landroid/widget/TextView;

    iget-object v1, p0, Llbl;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Llbl;->h:Landroid/widget/TextView;

    iget-object v1, p0, Llbl;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "dd/MM/yyyy HH:mm"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Llbl;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget v0, p0, Llbl;->q:I

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Llbl;->i:Landroid/widget/TextView;

    const v1, 0x7f0904f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 127
    iget-object v0, p0, Llbl;->j:Landroid/widget/TextView;

    const v1, 0x7f090bcd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    :goto_0
    iget-object v0, p0, Llbl;->i:Landroid/widget/TextView;

    new-instance v1, Llbm;

    invoke-direct {v1, p0}, Llbm;-><init>(Llbl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Llbl;->m:Landroid/widget/Button;

    new-instance v1, Llbn;

    invoke-direct {v1, p0}, Llbn;-><init>(Llbl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Llbl;->j:Landroid/widget/TextView;

    const v1, 0x7f090bcf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    const-string v0, "ASSISTANCE_TYPE_KEY"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "PROTOCOL_NUMBER_KEY"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f100915

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llbl;->g:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f100918

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llbl;->h:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f100916

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llbl;->j:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f100919

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llbl;->k:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f10091a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llbl;->i:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f100210

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llbl;->l:Landroid/widget/RelativeLayout;

    .line 115
    const v0, 0x7f100217

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llbl;->m:Landroid/widget/Button;

    .line 116
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Llbl;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Llbl;

    invoke-direct {v0}, Llbl;-><init>()V

    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v2, "VIEW_TYPE_KEY"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-static {v1, p0, p1}, Llbl;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1}, Llbl;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Llbl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0}, Llbl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const v2, 0xb26e

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Llbl;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Llbl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->a(Landroid/view/View;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Llbl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Llbl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090af9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lmhj;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Llbl;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Llbl;->b()V

    return-void
.end method


# virtual methods
.method public a(Llbo;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Llbl;->n:Llbo;

    .line 176
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Llbl;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Llbl;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VIEW_TYPE_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Llbl;->q:I

    .line 93
    invoke-virtual {p0}, Llbl;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ASSISTANCE_TYPE_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llbl;->o:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Llbl;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PROTOCOL_NUMBER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llbl;->p:Ljava/lang/String;

    .line 96
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

    .prologue
    .line 100
    const v0, 0x7f0401db

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Llbl;->a(Landroid/view/View;)V

    .line 103
    invoke-direct {p0}, Llbl;->a()V

    .line 105
    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 165
    :pswitch_0
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Llbl;->b()V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Llbl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Llbl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090462

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0xb26e
        :pswitch_0
    .end packed-switch
.end method
